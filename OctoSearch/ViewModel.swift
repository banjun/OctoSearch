import UIKit

final class ViewModel {
    var repositoriesDidChange: (() -> Void)?
    var searchRepositoriesDidFail: ((Error) -> Void)?

    var searchText: String = "" {
        didSet {
            throttledSearch()
        }
    }

    var items: [SearchRepositoriesResponse.Item] = [] {
        didSet {
            repositoriesDidChange?()
        }
    }

    enum Error: Swift.Error, LocalizedError {
        case network(Swift.Error)
        case unexpectedCode(Int)
        case nonDecodable(Swift.Error?)

        var localizedDescription: String {
            switch self {
            case .network(let e): return e.localizedDescription
            case .unexpectedCode(let c): return "Cannot get results (status code = \(c))"
            case .nonDecodable(let e): return "Cannot decode (\(String(describing: e)))"
            }
        }
    }

    var lastRequested: Date = .distantPast
    var throttlingTimer: Timer? {
        willSet {
            throttlingTimer?.invalidate()
        }
    }

    func throttledSearch(interval: Double = 1) {
        let remaining = interval - Date().timeIntervalSince(lastRequested)
        NSLog("%@", "\(#function), remaining = \(remaining)")
        throttlingTimer = Timer.scheduledTimer(withTimeInterval: remaining, repeats: false) {[weak self] _ in
            self?.lastRequested = Date()
            self?.search()
        }
    }

    private func search() {
        NSLog("%@", "\(#function), text = \(searchText)")

        guard !searchText.isEmpty else {
            items = []
            return
        }

        // use fake value
//        let r = try! JSONDecoder().decode(SearchRepositoriesResponse.self, from: Fake.sample.data(using: .utf8)!)
//        items = r.items
//        return

        UIApplication.shared.isNetworkActivityIndicatorVisible = true

        let param: [String: String] = ["q": searchText]
        let urlString = "https://api.github.com/search/repositories?"
            + param
                .map {"\($0)=\($1.addingPercentEncoding(withAllowedCharacters: .alphanumerics)!)"}
                .joined(separator: "&")
        let req = URLRequest(url: URL(string: urlString)!)
        URLSession.shared.dataTask(with: req) { (data, response, error) in
            DispatchQueue.main.async {
                UIApplication.shared.isNetworkActivityIndicatorVisible = false

                if let error = error {
                    NSLog("%@", "error = \(String(describing: error))")
                    self.searchRepositoriesDidFail?(.network(error))
                    return
                }

                let response = response as? HTTPURLResponse
                guard response?.statusCode == 200 else {
                    self.searchRepositoriesDidFail?(.unexpectedCode(response?.statusCode ?? 0))
                    return
                }
                guard let data = data else {
                    self.searchRepositoriesDidFail?(.nonDecodable(nil))
                    return
                }
                
                do {
                    let r = try JSONDecoder().decode(SearchRepositoriesResponse.self, from: data)
                    NSLog("%@", "r = \(String(describing: r))")
                    self.items = r.items
                } catch {
                    NSLog("%@", "error = \(String(describing: error))")
                    self.searchRepositoriesDidFail?(.nonDecodable(error))
                }
            }
            }.resume()
    }
}

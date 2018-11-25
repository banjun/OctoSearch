import UIKit
import SafariServices

final class ViewController: UITableViewController, UISearchBarDelegate {
    private let viewModel = ViewModel()
    private let searchController = UISearchController(searchResultsController: nil)

    init() {
        super.init(style: .plain)
        title = "Repositories"
    }
    required init?(coder aDecoder: NSCoder) {fatalError()}

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.searchController = searchController
        searchController.searchBar.delegate = self
        navigationItem.hidesSearchBarWhenScrolling = false
        definesPresentationContext = true

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")

        viewModel.repositoriesDidChange = {[weak self] in self?.tableView.reloadData()}
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.viewModel.searchText = searchText
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let item = viewModel.items[indexPath.row]
        cell.textLabel?.text = item.full_name
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = viewModel.items[indexPath.row]
        guard let url = URL(string: item.html_url) else { return }
        let vc = SFSafariViewController(url: url)
        present(vc, animated: true)
    }
}

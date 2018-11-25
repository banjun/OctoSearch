import Foundation

struct SearchRepositoriesResponse: Codable {
    var items: [Item]
    struct Item: Codable {
        var full_name: String
        var html_url: String
    }
}

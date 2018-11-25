import UIKit

let sample = """
{
"total_count": 1,
"incomplete_results": false,
"items": [
{
"id": 1170273,
"node_id": "MDEwOlJlcG9zaXRvcnkxMTcwMjcz",
"name": "banjun.github.com",
"full_name": "banjun/banjun.github.com",
"private": false,
"owner": {
"login": "banjun",
"id": 11156,
"node_id": "MDQ6VXNlcjExMTU2",
"avatar_url": "https://avatars0.githubusercontent.com/u/11156?v=4",
"gravatar_id": "",
"url": "https://api.github.com/users/banjun",
"html_url": "https://github.com/banjun",
"followers_url": "https://api.github.com/users/banjun/followers",
"following_url": "https://api.github.com/users/banjun/following{/other_user}",
"gists_url": "https://api.github.com/users/banjun/gists{/gist_id}",
"starred_url": "https://api.github.com/users/banjun/starred{/owner}{/repo}",
"subscriptions_url": "https://api.github.com/users/banjun/subscriptions",
"organizations_url": "https://api.github.com/users/banjun/orgs",
"repos_url": "https://api.github.com/users/banjun/repos",
"events_url": "https://api.github.com/users/banjun/events{/privacy}",
"received_events_url": "https://api.github.com/users/banjun/received_events",
"type": "User",
"site_admin": false
},
"html_url": "https://github.com/banjun/banjun.github.com",
"description": "github.banjun.jp",
"fork": false,
"url": "https://api.github.com/repos/banjun/banjun.github.com",
"forks_url": "https://api.github.com/repos/banjun/banjun.github.com/forks",
"keys_url": "https://api.github.com/repos/banjun/banjun.github.com/keys{/key_id}",
"collaborators_url": "https://api.github.com/repos/banjun/banjun.github.com/collaborators{/collaborator}",
"teams_url": "https://api.github.com/repos/banjun/banjun.github.com/teams",
"hooks_url": "https://api.github.com/repos/banjun/banjun.github.com/hooks",
"issue_events_url": "https://api.github.com/repos/banjun/banjun.github.com/issues/events{/number}",
"events_url": "https://api.github.com/repos/banjun/banjun.github.com/events",
"assignees_url": "https://api.github.com/repos/banjun/banjun.github.com/assignees{/user}",
"branches_url": "https://api.github.com/repos/banjun/banjun.github.com/branches{/branch}",
"tags_url": "https://api.github.com/repos/banjun/banjun.github.com/tags",
"blobs_url": "https://api.github.com/repos/banjun/banjun.github.com/git/blobs{/sha}",
"git_tags_url": "https://api.github.com/repos/banjun/banjun.github.com/git/tags{/sha}",
"git_refs_url": "https://api.github.com/repos/banjun/banjun.github.com/git/refs{/sha}",
"trees_url": "https://api.github.com/repos/banjun/banjun.github.com/git/trees{/sha}",
"statuses_url": "https://api.github.com/repos/banjun/banjun.github.com/statuses/{sha}",
"languages_url": "https://api.github.com/repos/banjun/banjun.github.com/languages",
"stargazers_url": "https://api.github.com/repos/banjun/banjun.github.com/stargazers",
"contributors_url": "https://api.github.com/repos/banjun/banjun.github.com/contributors",
"subscribers_url": "https://api.github.com/repos/banjun/banjun.github.com/subscribers",
"subscription_url": "https://api.github.com/repos/banjun/banjun.github.com/subscription",
"commits_url": "https://api.github.com/repos/banjun/banjun.github.com/commits{/sha}",
"git_commits_url": "https://api.github.com/repos/banjun/banjun.github.com/git/commits{/sha}",
"comments_url": "https://api.github.com/repos/banjun/banjun.github.com/comments{/number}",
"issue_comment_url": "https://api.github.com/repos/banjun/banjun.github.com/issues/comments{/number}",
"contents_url": "https://api.github.com/repos/banjun/banjun.github.com/contents/{+path}",
"compare_url": "https://api.github.com/repos/banjun/banjun.github.com/compare/{base}...{head}",
"merges_url": "https://api.github.com/repos/banjun/banjun.github.com/merges",
"archive_url": "https://api.github.com/repos/banjun/banjun.github.com/{archive_format}{/ref}",
"downloads_url": "https://api.github.com/repos/banjun/banjun.github.com/downloads",
"issues_url": "https://api.github.com/repos/banjun/banjun.github.com/issues{/number}",
"pulls_url": "https://api.github.com/repos/banjun/banjun.github.com/pulls{/number}",
"milestones_url": "https://api.github.com/repos/banjun/banjun.github.com/milestones{/number}",
"notifications_url": "https://api.github.com/repos/banjun/banjun.github.com/notifications{?since,all,participating}",
"labels_url": "https://api.github.com/repos/banjun/banjun.github.com/labels{/name}",
"releases_url": "https://api.github.com/repos/banjun/banjun.github.com/releases{/id}",
"deployments_url": "https://api.github.com/repos/banjun/banjun.github.com/deployments",
"created_at": "2010-12-15T05:30:42Z",
"updated_at": "2018-07-22T04:34:40Z",
"pushed_at": "2018-07-22T04:34:39Z",
"git_url": "git://github.com/banjun/banjun.github.com.git",
"ssh_url": "git@github.com:banjun/banjun.github.com.git",
"clone_url": "https://github.com/banjun/banjun.github.com.git",
"svn_url": "https://github.com/banjun/banjun.github.com",
"homepage": "https://github.banjun.jp/",
"size": 9,
"stargazers_count": 1,
"watchers_count": 1,
"language": "Ruby",
"has_issues": true,
"has_projects": true,
"has_downloads": true,
"has_wiki": true,
"has_pages": true,
"forks_count": 0,
"mirror_url": null,
"archived": false,
"open_issues_count": 0,
"license": null,
"forks": 0,
"open_issues": 0,
"watchers": 1,
"default_branch": "master",
"score": 19.445448
}
]
}
"""

final class ViewModel {
    var repositoriesDidChange: (() -> Void)?
    var searchRepositoriesDidFail: ((Error) -> Void)?

    var searchText: String = "" {
        didSet {
            search()
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

    func search() {
        guard !searchText.isEmpty else {
            items = []
            return
        }

        let r = try! JSONDecoder().decode(SearchRepositoriesResponse.self, from: sample.data(using: .utf8)!)
        items = r.items
        return

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

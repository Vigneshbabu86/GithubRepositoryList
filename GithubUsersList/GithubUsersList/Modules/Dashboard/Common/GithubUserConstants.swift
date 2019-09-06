//
//  GithubUserConstants.swift
//  GithubUsersList
//
//  Created by Vignesh Babu on 9/6/19.
//  Copyright © 2019 Vignesh Babu. All rights reserved.
//

import Foundation

struct GithubUserConstants {
    struct Json {
    static let USER_LOGIN_NAME = "login" // "mojombo",
    static let USER_ID = "id" // 1,
    static let NODE_ID = "node_id" // "MDQ6VXNlcjE= "",
    static let AVATAR_URL = "avatar_url" // "https://avatars0.githubusercontent.com/u/1?v= "4",
    static let GRAVATAR_ID = "gravatar_id" // "",
    static let GITHUB_URL = "url" // "https://api.github.com/users/mojombo",
    static let HTML_URL = "html_url" // "https://github.com/mojombo",
    static let  FOLLOWERS_URL = "followers_url" // "https://api.github.com/users/mojombo/followers",
    static let FOLLOWING_URL  = "following_url" // "https://api.github.com/users/mojombo/following{/other_user}",
    static let GISTS_URL = "gists_url" // "https://api.github.com/users/mojombo/gists{/gist_id}",
    static let  STARRED_URL = "starred_url" // "https://api.github.com/users/mojombo/starred{/owner}{/repo}",
    static let SUBSCRIPTIONS_URL = "subscriptions_url" // "https://api.github.com/users/mojombo/subscriptions",
    static let ORGANIZATION_URL = "organizations_url" // "https://api.github.com/users/mojombo/orgs",
    static let REPOS_URL = "repos_url" // "https://api.github.com/users/mojombo/repos",
    static let EVENTS_URL = "events_url" // "https://api.github.com/users/mojombo/events{/privacy}",
    static let RECEIVED_EVENTS_URL = "received_events_url" // "https://api.github.com/users/mojombo/received_events",
    static let USER_TYPE = "type" // "User",
    static let IS_ADMIN = "site_admin" // false
    }
}

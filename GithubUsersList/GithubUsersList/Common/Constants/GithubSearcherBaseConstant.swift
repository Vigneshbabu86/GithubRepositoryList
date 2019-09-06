//
//  GithubSearcherBaseConstant.swift
//  GithubUsersList
//
//  Created by Vignesh Babu on 9/6/19.
//  Copyright © 2019 Vignesh Babu. All rights reserved.
//

import Foundation

struct GithubSearcherBaseConstant {
    struct GithubAPI {
        struct Endpoints {
            let baseEndpoint = "https://api.github.com/"
        }
        struct Headers {
            let acceptHeaderType = "application/vnd.github.inertia-preview+json"
        }
    }
}

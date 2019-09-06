//
//  GithubSearcherServiceHandler.swift
//  GithubUsersList
//
//  Created by Vignesh Babu on 9/6/19.
//  Copyright © 2019 Vignesh Babu. All rights reserved.
//

import Foundation

final class GithubSearcherServiceManager {
    
    private static let sharedServiceManager : GithubSearcherServiceManager = {
        let serviceRequestManager = GithubSearcherServiceManager()
        return serviceRequestManager
    }()
    
    private  init() {
        
    }
    
    class func shared() -> GithubSearcherServiceManager {
        return sharedServiceManager
    }
}

//
//  Comment.swift
//  MVC-N
//
//  Created by Eugene Kiselev on 19.09.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import Foundation

struct Comment {
    
    var postID: Int
    var id: Int
    var name: String
    var email: String
    var body: String
    
    init?(dict: [String:AnyObject]) {
        
        guard let postID = dict["postID"] as? Int,
            let id = dict["id"] as? Int,
            let name = dict["name"] as? String,
            let email = dict["email"] as? String,
            let body = dict["body"] as? String else { return nil }
        
        self.postID = postID
        self.id = id
        self.name = name
        self.email = email
        self.body = body
    }
}

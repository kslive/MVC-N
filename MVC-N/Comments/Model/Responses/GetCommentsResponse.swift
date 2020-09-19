//
//  GetCommentsResponse.swift
//  MVC-N
//
//  Created by Eugene Kiselev on 19.09.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import Foundation

struct GetCommentsResponse {
    
    let comments: [Comment]
    
    init(json: Any) throws {
        
        guard let array = json as? [[String: AnyObject]] else { throw NetworkError.failInternetError }
        
        var comments = [Comment]()
        
        for dictionary in array {
            
            guard let comment = Comment(dict: dictionary) else { continue }
            comments.append(comment)
        }
        
        self.comments = comments
    }
}

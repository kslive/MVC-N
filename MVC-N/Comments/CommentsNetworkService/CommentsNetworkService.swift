//
//  CommentsNetworkService.swift
//  MVC-N
//
//  Created by Eugene Kiselev on 19.09.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import Foundation

class CommentsNetworkService {
    
    private init() {}
    
    static func getComments(completion: @escaping(GetCommentsResponse) -> () ) {
        
        guard let url =  URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getData(url: url) { json in
            
        }
    }
}

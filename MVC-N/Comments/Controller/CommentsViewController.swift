//
//  CommentsViewController.swift
//  MVC-N
//
//  Created by Eugene Kiselev on 17.09.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import UIKit

class CommentsViewController: UIViewController {
    
    var comments = [Comment]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CommentsNetworkService.getComments { response in
            self.comments = response.comments
            self.tableView.reloadData()
        }
    }
}

extension CommentsViewController: UITableViewDelegate {
}

extension CommentsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CommentsCell
        let comment = comments[indexPath.row]
        
        cell.configure(with: comment)
        
        return cell
    }
}


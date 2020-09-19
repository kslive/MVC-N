//
//  NetworkError.swift
//  MVC-N
//
//  Created by Eugene Kiselev on 19.09.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case failInternetError
    case noInternetConnection
}

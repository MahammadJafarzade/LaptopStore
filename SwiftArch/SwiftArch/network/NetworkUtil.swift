//
//  NetworkUtil.swift
//  SwiftArch
//
//  Created by RMAD201 on 3/7/24.
//

import UIKit

class NetworkUtil: NSObject {

}
enum HTTPMethod : String {
    case get = "GET"
    case post = "POST"
    case delete = "DELETE"
}

enum NetworkError : Error {
    case invalidURL
    case noData
    case decodingError
    case httpResponseError(statusCode : Int)
    case unknown(Error)
}

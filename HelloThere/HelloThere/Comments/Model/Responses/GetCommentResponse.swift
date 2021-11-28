//
//  GetCommentResponce.swift
//  HelloThere
//
//  Created by Роман Лабунский on 28.11.2021.
//

import Foundation

struct GetCommentResponse {
    typealias JSON = [String: AnyObject]
    let comments: [Comment]
    
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failEnternetError }
        
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dict: dictionary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}

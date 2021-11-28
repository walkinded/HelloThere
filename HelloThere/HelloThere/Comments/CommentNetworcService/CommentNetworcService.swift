//
//  CommentNetworcService.swift
//  HelloThere
//
//  Created by Роман Лабунский on 28.11.2021.
//

import Foundation

class CommentNetworcService {
    private init() {}
    
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/comments") else { return }
        
        NetworkService.shared.getData(url: url) { (json) in
            do {
                let responce = try GetCommentResponse(json: json)
                completion(responce)
            } catch {
                print(error)
            }
        }
    }
}

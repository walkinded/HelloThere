//
//  NetworkService.swift
//  HelloThere
//
//  Created by Роман Лабунский on 28.11.2021.
//

import Foundation

class NetworkService {
    
    private init() {}
    static let shared = NetworkService()
    
    public func getData(url: URL, completion: @escaping (Any) -> ()) {
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, responce, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async(execute: {
                    completion(json)
                })
            } catch {
                print(error)
            }
        }.resume()
    }
}

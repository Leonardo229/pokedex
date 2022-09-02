//
//  BaseService.swift
//  Pokedex
//
//  Created by Leonardo Coelho on 05/08/22.
//

import Foundation
import Alamofire
import Combine




struct BaseService<T: Decodable> {
      
     static func makeGetRequest(endPoint: String) -> Future<T, APIError>{
         return Future<T,APIError> { promise in
              let request = AF.request(URL(string: "\(API)\(endPoint)")!, method: .get)
             request.validate(statusCode: 200..<550)
              request.responseDecodable(of: T.self, decoder: JSONDecoder()) { (response) in
                  switch response.result{
                  case .failure(let error):
                      promise(.failure(.InternalError))
                      break;
                  case .success(let data):
                      print(data)
                      promise(.success(data))
                      break;
                  }
                  
              }
              
         }
                  

    }
}




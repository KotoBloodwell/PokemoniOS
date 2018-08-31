//
//  RepositoryLocator.swift
//  Pokemon
//
//  Created by juliana.loaiza on 8/30/18.
//  Copyright © 2018 juliana.loaiza. All rights reserved.
//

import Foundation

private let sharedInstance = RepositoryLocator()

public class RepositoryLocator {
    
    static let sharedInstance = RepositoryLocator()
    
    var use_test_repository: Bool
    
    class var sharedDispatchInstance: RepositoryLocator {
        struct Static {
            static var onceToken = NSUUID().uuidString
            static var instance: RepositoryLocator? = nil
        }
        DispatchQueue.once(token: Static.onceToken) {
            Static.instance = RepositoryLocator()
        }
        return Static.instance!
    }
    
    class var sharedStructInstance: RepositoryLocator {
        struct Static {
            static let instance = RepositoryLocator()
        }
        return Static.instance
    }
    
    init() {
        use_test_repository =  false
    }
    
 //  func securityRepository() -> IBooksRepository {
       // if (use_test_repository) {
         //   return BooksRepositoryTest.sharedInstance
       // } else {
     //       return BooksRepository.sharedInstance
   //     }
 //   }
    
}

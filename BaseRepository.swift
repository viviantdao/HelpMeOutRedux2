//
//  BaseRepository.swift
//  HelpMeOut
//
//  Created by Young Tech on 7/24/17.
//  Copyright © 2017 Young Tech. All rights reserved.
//

import Foundation

class BaseRepository<T>{
    
    private var repo: [T] = []
    
    init(_ data: [T]? = nil){
        self.repo = data ?? []
    }
    
    public var Items: [T] {
        get {
            return self.repo
        }
    }
    
    public func Add(item: T)->Void {
        self.repo.append(item)
    }
    
    public func Find(predicate:@escaping(T)->Bool)->T?{
        let result = self.repo.filter(predicate)
        if result.count > 0{
            return result[0]
        }
        return nil
    }
    
    public func Remove(predicate: @escaping (T)->Bool)->Void{
        if let index = self.repo.index(where: predicate) {
            self.repo.remove(at: index)
        }
    }
    
}

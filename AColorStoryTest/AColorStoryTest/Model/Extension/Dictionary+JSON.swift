//
//  Dictionary+JSON.swift
//  AColorStoryTest
//
//  Created by Haik Ampardjian on 15.02.17.
//  Copyright © 2017 Haik Ampardjian. All rights reserved.
//

import Foundation

extension Dictionary where Key: CustomStringConvertible, Value: Any {
    func string(for key: Key) -> String {
        let value = self[key]
        return value as? String ?? ""
    }
    
    func arrayOfInts(for key: Key) -> [Int] {
        let value = self[key]
        return value as? [Int] ?? []
    }
    
    func double(for key: Key) -> Double {
        let value = self[key]
        return value as? Double ?? 0.0
    }
}

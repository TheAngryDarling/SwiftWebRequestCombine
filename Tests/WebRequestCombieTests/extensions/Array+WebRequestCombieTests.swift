//
//  Array+WebRequestCombieTests.swift
//  
//
//  Created by Tyler Anger on 2022-12-13.
//

import Foundation

internal extension Array {
    func first<T>(as type: T.Type) -> T? {
        for element in self {
            if let r = element as? T {
                return r
            }
        }
        return nil
    }
}

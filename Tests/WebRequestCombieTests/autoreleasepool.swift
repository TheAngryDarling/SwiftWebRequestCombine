//
//  autoreleasepool.swift
//  
//
//  Created by Tyler Anger on 2022-12-13.
//

import Foundation

#if _runtime(_ObjC)
internal func autoreleasepool<Result>(invoking body: () throws -> Result) rethrows -> Result {
    return try ObjectiveC.autoreleasepool(invoking: body)
}
#else
internal func autoreleasepool<Result>(invoking body: () throws -> Result) rethrows -> Result {
    return try body()
}
#endif

//
//  WebRequestCombineCompilerConditions.swift
//  
//
//  Created by Tyler Anger on 2022-12-16.
//
#if !swift(>=5.0)
    #error("Unsupported Version of Swift.  Must be >= 5.0")
#elseif !_runtime(_ObjC)
    #error("Unsupported Platform")
#elseif !canImport(Combine)
    #error("Unable to import package Combine")
#endif

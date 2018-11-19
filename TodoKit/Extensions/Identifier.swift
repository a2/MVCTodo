//
//  Identifier.swift
//  MVCTodo
//
//  Created by Dave DeLong on 10/18/18.
//  Copyright © 2018 Syzygy. All rights reserved.
//

import Foundation

public struct Identifier<T>: Hashable, Codable {
    public static func ==(lhs: Identifier<T>, rhs: Identifier<T>) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
    
    public let rawValue: String
    public var hashValue: Int { return rawValue.hashValue }
    
    public init(_ rawValue: String = UUID().uuidString) { self.rawValue = rawValue }
    public init(rawValue: String) { self.rawValue = rawValue }
}

public protocol Identifiable: Hashable {
    var identifier: Identifier<Self> { get }
}

extension Identifiable {
    public static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    public var hashValue: Int { return identifier.hashValue }
}

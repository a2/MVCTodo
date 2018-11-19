//
//  TDItem.swift
//  MVCTodo
//
//  Created by Dave DeLong on 10/18/18.
//  Copyright © 2018 Syzygy. All rights reserved.
//

import Foundation

public struct TDItem: Identifiable, Codable {
    public let identifier: Identifier<TDItem>
    
    public let name: String
    public let creation: Date
    
    public let due: Date?
    public let completion: Date?
    
    public init(identifier: Identifier<TDItem> = Identifier(), name: String, creation: Date = Date(), due: Date? = nil, completion: Date? = nil) {
        
        self.identifier = identifier
        self.name = name
        self.creation = creation
        self.due = due
        self.completion = completion
        
    }
}

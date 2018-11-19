//
//  TDItemList.swift
//  MVCTodo
//
//  Created by Dave DeLong on 10/18/18.
//  Copyright © 2018 Syzygy. All rights reserved.
//

import Foundation

public struct TDItemList: Identifiable, Codable {
    
    public let identifier: Identifier<TDItemList>
    public let name: String
    public let emoji: String
    
    public init(identifier: Identifier<TDItemList> = Identifier(), name: String, emoji: String = "📝") {
        self.identifier = identifier
        self.name = name
        self.emoji = emoji
    }
}

//
//  TDStorageModel.swift
//  MVCTodo
//
//  Created by Dave DeLong on 10/18/18.
//  Copyright © 2018 Syzygy. All rights reserved.
//

import Foundation

public struct TDStorageModel: Codable {
    
    public var lists: Set<TDItemList>
    public var items: Set<TDItem>
    public var associations: Dictionary<Identifier<TDItemList>, Set<Identifier<TDItem>>>
    
    init() {
        lists = []
        items = []
        associations = [:]
    }
    
}

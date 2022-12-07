//
//  ItemModel.swift
//  TodoList
//
//  Created by Yaz Burrell on 12/7/22.
//

import Foundation

struct Item: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}

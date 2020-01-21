//
//  Todo.swift
//  Tutorial
//
//  Created by 박정우 on 2020/01/21.
//  Copyright © 2020 박정우. All rights reserved.
//

import Foundation

struct Todo {
    let title : String
    let content : String
    let check : Bool
}

extension Todo{
    static func all() -> [Todo] {
        return [
            Todo(title: "1", content: "content1", check: false),
            Todo(title: "2", content: "content2", check: false),
            Todo(title: "3", content: "content3", check: false)
        ]
    }
}

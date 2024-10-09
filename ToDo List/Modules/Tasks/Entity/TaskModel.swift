//
//  Models.swift
//  ToDo List
//
//  Created by Artem Khlevchuk on 16.09.2024.
//

import Foundation
import CoreData

struct TaskModel: Codable {
    let id: Int
    let todo: String
    let description: String?
    let date: String?
    let startTime: String?
    let endTime: String?
    let completed: Bool
    let userId: Int
}

struct ToDolist: Decodable {
    let todos: [TaskModel]
}

extension TaskModel {
    static func mockObject() -> TaskModel {
        TaskModel(id: 0, todo: "", description: "", date: "", startTime: "", endTime: "", completed: false, userId: 0)
    }
}

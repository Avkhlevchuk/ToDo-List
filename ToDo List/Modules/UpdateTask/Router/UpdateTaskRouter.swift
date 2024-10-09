//
//  UpdateTaskRouter.swift
//  ToDo List
//
//  Created by Artem Khlevchuk on 22.09.2024.
//

import Foundation

class UpdateTaskRouter {
    
    static func createModule(ref: UpdateTaskViewController) {
        let updateTaskPresenter = UpdateTaskPresenter()
        let updateTaskInteractor = UpdateTaskInteractor()
        let taskStorage = TaskStorage()
        
        ref.presenter = updateTaskPresenter
        updateTaskPresenter.interactor = updateTaskInteractor
        updateTaskInteractor.taskStorage = taskStorage
        updateTaskPresenter.interactor?.presenter = updateTaskPresenter
    }
}

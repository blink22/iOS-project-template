//
//  HomeProtocol.swift
//  {{ cookiecutter.app_name }}
//
//  Created by Omar Salah Elboredy on 9/11/19.
//  Copyright © 2019 {{ cookiecutter.organization_name }}. All rights reserved.
//

import Foundation
import UIKit
import signin_ios

protocol HomePresenterToViewProtocol: class {
    
}

protocol HomeInterectorToPresenterProtocol: class {
}

protocol HomePresenterToInterectorProtocol {
    var presenter: HomeInterectorToPresenterProtocol? {get set}
}

protocol HomeViewToPresenterProtocol: class {
    var view: HomePresenterToViewProtocol? {get set}
    var interactor: HomePresenterToInterectorProtocol? {get set}
    var wireFrame: HomePresenterToWireFrameProtocol? {get set}
}

protocol HomePresenterToWireFrameProtocol {
    static func createModule(identifier: String) -> UIViewController
}

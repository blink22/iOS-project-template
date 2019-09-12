//
//  HomeWireframe.swift
//  {{ cookiecutter.app_name }}
//
//  Created by Omar Salah Elboredy on 9/11/19.
//  Copyright © 2019 {{ cookiecutter.organization_name }}. All rights reserved.
//

import Foundation

class HomeWireFrame: HomePresenterToWireFrameProtocol {
    class func createModule() -> UIViewController {

//        if let view = mainstoryboard.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController {
//            let presenter: HomeViewToPresenterProtocol & HomeInteractorToPresenterProtocol = HomePresenter()
//            var interactor: HomePresenterToInterectorProtocol = HomeInteractor()
//
//            view.presenter = presenter
//            presenter.view = view
//            presenter.interactor = interactor
//            interactor.presenter = presenter
//            return view
//        }
        return UIViewController()
    }
    static var mainstoryboard: UIStoryboard{
        return UIStoryboard(name:"Home", bundle: Bundle.main)
    }
}

//
//  AppCoordinator.swift
//  TheMovieApp
//
//  Created by Anthony Tran on 17/03/2022.
//

import UIKit
import XCoordinator
import Resolver
import RxSwift

enum AppRoute: Route {
    case main
    case detail(movieId: Int)
    case backToRoot
}

class AppCoordinator: NavigationCoordinator<AppRoute> {
    // MARK: Initialization
    var strongMainRouter: StrongRouter<AppRoute>!
    
    init() {
        super.init(initialRoute: .main)
    }
    
    // MARK: Overrides
    
    override func prepareTransition(for route: AppRoute) -> NavigationTransition {
        switch route {
        case .main:
            let viewController = R.storyboard.main.viewController()!
//            viewController.bind(to: HomeViewModel(router: unownedRouter))
            return .push(viewController)
        default: return .popToRoot()
        }
    }
    
}

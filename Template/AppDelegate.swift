//
//  AppDelegate.swift
//  RxTemplate
//
//  Created by Anthony Tran on 08/09/2022.
//

import UIKit
import Resolver
import XCoordinator

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var mainWindow: UIWindow = UIWindow()
    private var appCoordinator = AppCoordinator()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        LibsManager.shared.setupLibs(application, didFinishLaunchingWithOptions: launchOptions)
        ///
        Resolver.registerAllServices()
        ///
        mainWindow.backgroundColor = .white
        appCoordinator.strongRouter.setRoot(for: mainWindow)
        return true
    }


}


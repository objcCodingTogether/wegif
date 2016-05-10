//
//  AppDelegate.swift
//  wegif
//
//  Created by Remi Robert on 09/05/16.
//  Copyright © 2016 Remi Robert. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private lazy var appDepencies: AppDependencies! = AppDependencies(window: self.window!)

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.appDepencies.presentRootController()
        self.setupApperence()
        return true
    }
}

extension AppDelegate {
    
    func setupApperence() {
        let navigationBarProxy = UINavigationBar.appearance()
        navigationBarProxy.barStyle = .Black
        navigationBarProxy.tintColor = UIColor.whiteColor()
    }
}

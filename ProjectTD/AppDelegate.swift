//
//  AppDelegate.swift
//  ProjectTD
//
//  Created by User on 25/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit
import ReSwift
var store = Store<AppState>(reducer: appReducer, state: nil)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appRouter : AppRouter?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        window.makeKeyAndVisible()
        appRouter = AppRouter(window: window)
        
        return true
    }


}


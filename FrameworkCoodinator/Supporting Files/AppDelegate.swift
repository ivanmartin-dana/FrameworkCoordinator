//
//  AppDelegate.swift
//  FrameworkCoodinator
//
//  Created by Ivan Martin on 05/12/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	var coordinator: AppCoordinator?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		// Override point for customization after application launch.
		let navigationController = UINavigationController()
		coordinator = AppCoordinator(navigationController: navigationController)
		
		window = UIWindow(frame: UIScreen.main.bounds)
		window?.rootViewController = navigationController
		window?.makeKeyAndVisible()
		
		coordinator?.start()
		
		return true
	}


}


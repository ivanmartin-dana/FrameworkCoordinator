//
//  AppCoodinator.swift
//  FrameworkCoodinator
//
//  Created by Ivan Martin on 05/12/22.
//

import Foundation
import UIKit

class AppCoordinator {
	let navigationController: UINavigationController
	let factory: ScreenFactory
	
	init(navigationController: UINavigationController, factory: ScreenFactory = ScreenFactory()){
		self.navigationController = navigationController
		self.factory = factory
	}
	
	func start(){
		showFirstScreen()
	}
	
	private func showFirstScreen(){
		var view = factory.makeFirstView()
		guard let vc = view.viewController else { return }
		view.onSecondTapped = { [weak self] in
			self?.showSecondScreen()
		}
		view.onPresentedTapped = { [weak self] in
			self?.showPresentedScreen()
		}
		navigationController.pushViewController(vc, animated: true)
	}
	
	private func showSecondScreen(){
		let view = factory.makeSecondView()
		guard let vc = view.viewController else { return }
		navigationController.pushViewController(vc, animated: true)
	}
	
	private func showPresentedScreen(){
		var view = factory.makePresentedView()
		guard let vc = view.viewController else { return }
		view.onDismissTapped = { [weak vc] in
			vc?.dismiss(animated: true, completion: nil)
		}
		navigationController.present(vc, animated: true, completion: nil)
	}
}

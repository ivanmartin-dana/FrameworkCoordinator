//
//  ScreenFactory.swift
//  FrameworkCoodinator
//
//  Created by Ivan Martin on 05/12/22.
//

class ScreenFactory {
	func makeFirstView() -> FirstView {
		let screen = FirstViewController()
		return screen
	}
	
	func makeSecondView() -> SecondView {
		let screen = SecondViewController()
		return screen
	}
	
	func makePresentedView() -> PresentedView {
		let screen = PresentedViewController()
		screen.modalPresentationStyle = .fullScreen
		return screen
	}
}

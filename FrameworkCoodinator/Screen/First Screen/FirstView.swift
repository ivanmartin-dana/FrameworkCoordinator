//
//  FirstView.swift
//  FrameworkCoodinator
//
//  Created by Ivan Martin on 05/12/22.
//

protocol FirstView: BaseView {
	var onSecondTapped: (()->Void)? { get set }
	var onPresentedTapped: (()->Void)? { get set }
}

extension FirstView {
	var identifier: String {
		return "First"
	}
}

//
//  PresentedView.swift
//  FrameworkCoodinator
//
//  Created by Ivan Martin on 05/12/22.
//

protocol PresentedView: BaseView {
	var onDismissTapped: (()->Void)? { get set }
}

extension PresentedView {
	var identifier: String {
		return "Presented"
	}
}

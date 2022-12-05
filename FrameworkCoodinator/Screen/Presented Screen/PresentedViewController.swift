//
//  PresentedViewController.swift
//  FrameworkCoodinator
//
//  Created by Ivan Martin on 05/12/22.
//

import UIKit

class PresentedViewController: UIViewController, PresentedView {
	var onDismissTapped: (() -> Void)?
	
	lazy var label: UILabel = {
		let label = UILabel()
		label.text = #fileID
		label.numberOfLines = 0
		label.textColor = .white
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	lazy var button: UIButton = {
		let button = UIButton()
		button.backgroundColor = .systemBlue
		button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
		button.layer.cornerRadius = 4
		button.setTitle("Action", for: .normal)
		button.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()
	
	lazy var stack: UIStackView = {
		let stack = UIStackView(arrangedSubviews: [label, button])
		stack.axis = .vertical
		stack.distribution = .fillProportionally
		stack.alignment = .center
		stack.spacing = 8
		stack.translatesAutoresizingMaskIntoConstraints = false
		return stack
	}()
	
	deinit {
		print("\(#fileID) successfully deallocated")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()

		setupUI()
	}
	
	private func setupUI(){
		view.backgroundColor = .blue
		
		view.addSubview(stack)
		stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		stack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
	}
	
	@objc func buttonAction(sender: UIButton!){
		onDismissTapped?()
	}
}

//
//  ViewController.swift
//  Password
//
//  Created by Иван Дроботов on 14.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let stackView = UIStackView()
    let passwordTextField = PassrwordTextField(pleceHolderText: "New password")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
    }
}

extension ViewController {
    
    private func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func layout() {
        stackView.addArrangedSubview(passwordTextField)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.leadingAnchor, multiplier: 2),
            view.safeAreaLayoutGuide.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2),
            
        ])
    }
}


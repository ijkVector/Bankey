//
//  ViewController.swift
//  Password
//
//  Created by Иван Дроботов on 14.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let stackView = UIStackView()
    let newPasswordTextField = PassrwordTextField(pleceHolderText: "New password")
    let statusView = PasswordStatusView()
    let confirmPassrodTextField = PassrwordTextField(pleceHolderText: "Re-enter new password")
    let resetButton = UIButton(type: .system)
    
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
        
        newPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        newPasswordTextField.delegate = self
        
        statusView.translatesAutoresizingMaskIntoConstraints = false
        statusView.layer.cornerRadius = 8
        statusView.clipsToBounds = true
        
        confirmPassrodTextField.translatesAutoresizingMaskIntoConstraints = false
        
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        resetButton.configuration = .filled()
        resetButton.setTitle("Reset password", for: [])
//        resetButton.addTarget(self, action: #selector(resetPasswordButtonTapped), for: .primaryActionTriggered)
    }
    
    private func layout() {
        stackView.addArrangedSubview(newPasswordTextField)
        stackView.addArrangedSubview(statusView)
        stackView.addArrangedSubview(confirmPassrodTextField)
        stackView.addArrangedSubview(resetButton)
        
        view.addSubview(stackView)
        
        //Stack
        NSLayoutConstraint.activate([
            
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.leadingAnchor, multiplier: 2),
            view.safeAreaLayoutGuide.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2),
            
        ])
    }
}

// MARK: - PassrwordTextFieldDelegate
extension ViewController: PassrwordTextFieldDelegate {
    func editingChanged(_ sender: PassrwordTextField) {
        if sender === newPasswordTextField {
            statusView.updateDisplay(sender.textField.text ?? "")
        }
    }
}

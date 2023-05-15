//
//  PasswordCriteriaView.swift
//  Password
//
//  Created by Иван Дроботов on 14.05.2023.
//

import Foundation
import UIKit

class PasswordCriteriaView: UIView {
    
    let stackView = UIStackView()
    let imageView = UIImageView()
    let labelText: String
    let label = UILabel()
    
    let checkmarkImage = UIImage(systemName: "checkmark.circle")!.withTintColor(.systemGreen, renderingMode: .alwaysOriginal)
    let xmarkImage = UIImage(systemName: "xmark.circle")!.withTintColor(.systemRed, renderingMode: .alwaysOriginal)
    let circleImage = UIImage(systemName: "circle")!.withTintColor(.tertiaryLabel, renderingMode: .alwaysOriginal)
    
    var isCrereiaMet: Bool = false {
        didSet {
            if isCrereiaMet {
                imageView.image = checkmarkImage
            } else {
                imageView.image = xmarkImage
            }
        }
    }
    
    func reset() {
        isCrereiaMet = false
        imageView.image = circleImage
    }
    
    init(withCriteria text: String) {
        self.labelText = text
        
        super.init(frame: .zero)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 40)
    }
}

extension PasswordCriteriaView {
    
    func style() {
        translatesAutoresizingMaskIntoConstraints = false
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.axis = .horizontal - default
        stackView.spacing = 8
//        stackView.backgroundColor = .systemOrange
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image =  circleImage
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        label.textColor = .secondaryLabel
        label.text = labelText
    }
    
    func layout() {
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label)
        
        addSubview(stackView)
        
        // Stack
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
        
        // ImageView
        NSLayoutConstraint.activate([
            
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
            
        ])
        
        //CHCR
        imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
    }
}


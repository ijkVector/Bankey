//
//  ViewController.swift
//  BasicAchors
//
//  Created by Иван Дроботов on 27.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        let upperLeft = makeLabel(withText: "upperLeft")
        
        NSLayoutConstraint.activate([
            upperLeft.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            upperLeft.topAnchor.constraint(equalTo: view.topAnchor, constant: 8),
        ])
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        return label
    }


}


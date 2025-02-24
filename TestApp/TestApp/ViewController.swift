//
//  ViewController.swift
//  TestApp
//
//  Created by Andrey on 21.02.2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.7063134313, green: 0.5994346738, blue: 0.9410371184, alpha: 1)
        
        let label = UILabel()
        label.text = "Hello, World!"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 50)
        ])
        label.font = .Roboto.bold.size(100)
        label.textColor = Colors.black
    }


}


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
        view.backgroundColor = .brown
        
        let label = UILabel()
        label.text = "Hello, World!"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 50)
        ])
        //label.font = .Roboto.thim.size(20)
        label.textColor = .black
        label.font = .systemFont(ofSize: 40,weight: UIFont.Weight(rawValue: 20))
    }


}


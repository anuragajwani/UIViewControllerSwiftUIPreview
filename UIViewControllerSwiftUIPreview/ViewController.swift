//
//  ViewController.swift
//  UIViewControllerSwiftUIPreview
//
//  Created by Anurag Ajwani on 12/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let label: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "hello"
        view.textColor = .black
        return view
    }()
    
    override func loadView() {
        self.view = UIView()
        self.view.backgroundColor = .white
        self.setupSubviews()
    }

    private func setupSubviews() {
        self.setupLabel()
    }
    
    private func setupLabel() {
        self.view.addSubview(self.label)
        NSLayoutConstraint.activate([
            self.label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }
}




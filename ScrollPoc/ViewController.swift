//
//  ViewController.swift
//  ScrollPoc
//
//  Created by Magno Augusto Ferreira Ruivo on 04/03/20.
//  Copyright © 2020 Magno Augusto Ferreira Ruivo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var scroll: UIScrollView = UIScrollView()
    private var content: UIView = UIView()
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.backgroundColor = .cyan
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollSetup()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scroll.contentSize = CGSize(width: stackView.frame.width, height: stackView.frame.height)
    }

    func scrollSetup() {
        scroll.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scroll)
        NSLayoutConstraint.activate([
            scroll.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            scroll.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scroll.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            scroll.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        content.backgroundColor = .purple
        content.translatesAutoresizingMaskIntoConstraints = false
        stackView.addSubview(content)
        NSLayoutConstraint.activate([
            content.leftAnchor.constraint(equalTo: stackView.leftAnchor, constant: 0),
            content.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 0),
            content.rightAnchor.constraint(equalTo: stackView.rightAnchor, constant: 0),
            content.bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 0),
            content.widthAnchor.constraint(equalTo: stackView.widthAnchor)
        ])
        
        scroll.addSubview(stackView)
        stackView.spacing = 10
        NSLayoutConstraint.activate([
            stackView.leftAnchor.constraint(equalTo: scroll.leftAnchor, constant: 0),
            stackView.topAnchor.constraint(equalTo: scroll.topAnchor, constant: 0),
            stackView.rightAnchor.constraint(equalTo: scroll.rightAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: scroll.bottomAnchor, constant: 0),
            stackView.widthAnchor.constraint(equalTo: scroll.widthAnchor)
        ])
        
        for _ in 1 ..< 100 {
            let label1 = UILabel()
            label1.text = "potatoe"
            NSLayoutConstraint.activate([
                label1.widthAnchor.constraint(equalToConstant: 150)
            ])
            let label2 = UILabel()
            label2.text = "💪🥔"
            
            let stack = UIStackView()
            stack.axis = .horizontal
            stack.distribution = .fillEqually
            stack.addArrangedSubview(label1)
            stack.addArrangedSubview(label2)
            
            stackView.addArrangedSubview(stack)
//            let vw = UIButton(type: UIButton.ButtonType.system)
//            vw.setTitle("Button", for: .normal)
//            stackView.addArrangedSubview(vw)
        }
    }

}


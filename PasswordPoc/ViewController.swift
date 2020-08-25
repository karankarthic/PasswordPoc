//
//  ViewController.swift
//  PasswordPoc
//
//  Created by Karan Karthic on 21/08/20.
//  Copyright © 2020 Karan Karthic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var array:[String] = []
    
    lazy var username:UITextField = {
        var textfield = UITextField()
        textfield.textContentType = .username
        textfield.font = .systemFont(ofSize: 20, weight: .regular)
        textfield.layer.borderWidth = 1
        textfield.keyboardType = .emailAddress
        textfield.placeholder = "UserName"
        textfield.autocorrectionType = .no
        textfield.layer.borderColor = UIColor.black.cgColor
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    lazy var textfield:UITextField = {
        var textfield = UITextField()
        textfield.textContentType = .password
        textfield.font = .systemFont(ofSize: 20, weight: .regular)
        textfield.layer.borderWidth = 1
        textfield.autocorrectionType = .no
        textfield.keyboardType = .asciiCapable
        textfield.placeholder = "Password"
        textfield.isSecureTextEntry = true
        textfield.layer.borderColor = UIColor.black.cgColor
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    lazy var logINBtn:UIButton = {
        var logOutBtn = UIButton()
        logOutBtn.backgroundColor = UIColor.darkGray
        logOutBtn.tintColor = .white
        logOutBtn.translatesAutoresizingMaskIntoConstraints = false
        return logOutBtn
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(username)
                
                NSLayoutConstraint.activate([username.topAnchor.constraint(equalTo: self.view.topAnchor,constant:150),
                                             username.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant:10),
                                             username.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant:-10),
        //                                     textfield.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,constant:-850)
                ])
        
        self.view.addSubview(textfield)
        
        NSLayoutConstraint.activate([textfield.topAnchor.constraint(equalTo: self.username.topAnchor,constant:50),
                                     textfield.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant:10),
                                     textfield.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant:-10),
                                     textfield.heightAnchor.constraint(equalToConstant: 50)
//                                     textfield.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,constant:-850)
        ])
        
        self.view.addSubview(logINBtn)
        logINBtn.setTitle("login", for: .normal)
        NSLayoutConstraint.activate([logINBtn.topAnchor.constraint(equalTo: self.textfield.bottomAnchor,constant:20),
                                     logINBtn.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant:10),
                                     logINBtn.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant:-10),
                                     logINBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        logINBtn.addTarget(self, action: #selector(logIn), for: .touchUpInside)
    }
    
    @objc func logIn(){
        array.append(textfield.text ?? "")
        textfield.text = ""
        username.text = ""
    }


}

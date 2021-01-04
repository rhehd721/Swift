//
//  ViewController.swift
//  first_ios
//
//  Created by 알파카 on 2021/01/03.
//

import UIKit

class ViewController: UIViewController {
    
    // 제목
    var titleLable : UILabel = {
        
        let label = UILabel()
        
        label.text = "hello world"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .white
        
        return label
        
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .purple
        
        
        view.addSubview(titleLable)
        
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        titleLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLable.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }


}


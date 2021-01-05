//
//  ViewController.swift
//  first_ios
//
//  Created by 알파카 on 2021/01/03.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    // 제목
    var titleLable : UILabel = {
        
        let label = UILabel()
        
        label.text = "hello world"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .white
        
        return label
        
        
    }()
    
    let animationView: AnimationView = {
       
        let animView = AnimationView(name: "42357-christmas")
        animView.frame = CGRect(x:0,y:0, width: 400, height: 400)
        
        animView.contentMode = .scaleAspectFill
        
        
        return animView
    }()
        

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        animationView.center = view.center
        
        
        view.addSubview(animationView)
        
        //애니메이션 실행
        animationView.play{(finish) in
            
            print("애니메이션 끝")
            
            self.view.backgroundColor = .purple
            
            self.animationView.removeFromSuperview()
            
            
            self.view.addSubview(self.titleLable)
            
            self.titleLable.translatesAutoresizingMaskIntoConstraints = false
            self.titleLable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLable.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
            
            
        }
        
        
    }


}


//
//  ViewController.swift
//  GestureRecognitionApp
//
//  Created by Ian MacKinnon on 10/01/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isIOS = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestireRecog = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestireRecog)
    }

    @objc func changePic(){
        
        
        
        if(isIOS){
            imageView.image = UIImage(named: "android")
            myLabel.text = "Android"
            isIOS = false
        }else{
            imageView.image = UIImage(named: "iOS")
            myLabel.text = "iOS"
            isIOS = true
        }
        
        
    }

}


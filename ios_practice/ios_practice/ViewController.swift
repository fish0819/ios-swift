//
//  ViewController.swift
//  ios_practice
//
//  Created by 徐陞瑋 on 2018/1/22.
//  Copyright © 2018年 徐陞瑋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var high_text: UITextField!
    
    @IBOutlet weak var weight_text: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func btn(_ sender: Any) {
        
        var BMI:Double
        var H = Double(high_text.text!)! / 100.0
        var W = Double(weight_text.text!)!
        BMI = W/(H*H)
        result.text = String(BMI)
        
        if BMI < 18.5 {
            image.image = UIImage(named: "thin")

        }else if BMI > 22 {
            image.image = UIImage(named : "fat")
        }else {
            image.image = UIImage(named: "middle")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


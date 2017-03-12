//
//  ViewController.swift
//  IoanX
//
//  Created by 上海海洋大学 on 17/3/12.
//  Copyright © 2017年 上海海洋大学. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loanAmount: UITextField!
    @IBOutlet weak var year: UITextField!
    @IBOutlet weak var interest: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func calculate(_ sender: Any) {
        let calculate1:simpleCalculate = simpleCalculate()
        result.text = calculate1.simpleCalcute(loanAmount: Double(loanAmount.text!)!, year: Int(year.text!)!, interest: Double(interest.text!)!)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    class simpleCalculate {
        func simpleCalcute(loanAmount:Double,year:Int,interest:Double)->String{
            return String(loanAmount*Double(year)*interest)
        }
    }
    
}


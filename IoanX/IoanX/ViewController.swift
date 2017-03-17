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

        result.text = calculate1.simpleCalcute(LoanAmount: Double(loanAmount.text!)!, years: Int (year.text!)!, interestRate: Double(interest.text!)!).description
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
        func simpleCalcute(LoanAmount:Double,years:Int,interestRate:Double)->Double{
            let rate=interestRate/100
            let interest=LoanAmount*rate*Double (years)
            return LoanAmount+interest
    }
    
}
}


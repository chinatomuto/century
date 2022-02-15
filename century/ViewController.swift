//
//  ViewController.swift
//  century
//
//  Created by nato on 16/06/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearEntry: UITextField!
    @IBOutlet weak var showCentury: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showCentury.text = "??"
    }

     
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        showCentury.text = String(century())
    }
    
    func century() -> Int{
        let year = Int(yearEntry.text!)!
        if year % 100 == 0{
          let solution = year / 100
            return solution
        }else{
           let solution = (year / 100) + 1
            return solution
        }
        
    }

}


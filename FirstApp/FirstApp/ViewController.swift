//
//  ViewController.swift
//  FirstApp
//
//  Created by Default on 03.04.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UISwitch!
    
    @IBOutlet weak var labelForAdvertisment: UILabel!
    
    @IBOutlet weak var Number1: UITextField!
    
    @IBOutlet weak var Number2: UITextField!
    
    @IBOutlet weak var Answer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SwitchButton(_ sender: Any) {
        if button.isOn{
            labelForAdvertisment.text = "უდიდესი საერთო გამყოფი"
            //buttonis backgrounds sheucvlis fers
           // button.backgroundColor = UIColor.blue
        }
        else{
            labelForAdvertisment.text = "უმცირესი საერთო ჯერადი"
           // button.backgroundColor = UIColor.red
        }
    }
    
    
    @IBAction func CalculateAction(_ sender: Any) {
        Number1.backgroundColor = UIColor.white
        Number2.backgroundColor = UIColor.white
        if button.isOn{
            if (Number1 != nil) &&
                (Number2 != nil){
                if let num1 = Int(Number1.text!), let num2 = Int(Number2.text!) {
                    var minValue = min(num1, num2)
                    var gcd = 1
                    for i in 1...minValue + 1{
                        if num1 % i == 0 && num2 % i == 0{
                            gcd = i
                        }
                    }
                    Answer.text = "პასუხი: \(gcd)"
                    
                } else {
                    print("One or both of the input strings is not a valid integer.")
                    Number1.backgroundColor = UIColor.red
                    Number2.backgroundColor = UIColor.red
                }
            }
            else {
                print("One or both of the input is nil")
                
                if Number1 == nil{
                    Number1.backgroundColor = UIColor.red
                    Number1.placeholder = "Invalid input"
                }
                if Number2 == nil{
                    Number2.backgroundColor = UIColor.red
                    Number2.placeholder = "Invalid input"
                }
            }
        }
        else{
            if (Number1 != nil) &&
                (Number2 != nil){
                if let num1 = Int(Number1.text!), let num2 = Int(Number2.text!){
                    var temp = num1 * num2
                    var maxValue = max(num1, num2)
                    var usj = 0
                    for i in maxValue...temp{
                        if i % num1 == 0 && i % num2 == 0{
                            usj = i
                            break
                        }
                    }
                    Answer.text = "პასუხი: \(usj)"
                    
                }
                
                else{
                    print("One or both of the input strings is not a valid integer.")
                    Number1.backgroundColor = UIColor.red
                    Number2.backgroundColor = UIColor.red
                }
            }
            else{
                print("One or both of the input is nil")
                if Number1 == nil{
                    Number1.backgroundColor = UIColor.red
                    Number1.placeholder = "Invalid input"
                }
                if Number2 == nil{
                    Number2.backgroundColor = UIColor.red
                    Number2.placeholder = "Invalid input"
                }
            }
        }
        
    }
    
}


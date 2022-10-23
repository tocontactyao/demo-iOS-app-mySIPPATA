//
//  ViewController.swift
//  demo-iOS-App-SHIPPATA
//
//  Created by 姚佳宏MacMiniM1 on 2022/10/23.
//
// 這是一個擲骰子，主要 demo如何利用 stackView及 autolayout constraints
// 在 storyboard 上進行 UI佈局

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDice: UIImageView!
    
    @IBOutlet weak var rightDice: UIImageView!
    
    @IBAction func rollDice(_ sender: UIButton) {
        let leftDiceNumber = Int.random(in: 1...6)
        let rightDiceNumber = Int.random(in: 1...6)
        leftDice.image = UIImage(named: DiceNumberToString(leftDiceNumber))
        rightDice.image = UIImage(named: DiceNumberToString(rightDiceNumber))
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func DiceNumberToString(_ number :Int)->String{
        var text:String = "DiceOne"
        switch number{
            case 1:
                text = "DiceOne"
            case 2:
                text = "DiceTwo"
            case 3:
                text = "DiceThree"
            case 4:
                text = "DiceFour"
            case 5:
                text = "DiceFive"
            case 6:
                text = "DiceSix"
            default:
                text = "DiceOne"
            
        }
        return text
    
        
    }


}


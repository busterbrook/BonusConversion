//
//  SecondViewController.swift
//  ttBC
//
//  Created by  фф on 09.02.2021.
//

import UIKit

protocol DataDelegate: class {
    func update(num1: String, num2: String, num3: String, tagCom: Int)
}

var numCom2: Int = 0
var sumOfTwo2: Int = 0
var state:Int = 0

class SecondViewController: UIViewController{
    private let toSelectTwo = "toSelectTwo"
    

    weak var dataDeligateToOne: DataDelegateToOne?
   
    @IBOutlet weak var BallovLabelTwo: UILabel!
    @IBOutlet weak var BallovLabel: UILabel!
    @IBOutlet weak var ComImage: UIImageView!
    @IBOutlet weak var ButtonOne: UIButton!
    @IBOutlet weak var BackButton: UIButton!
    @IBOutlet weak var labelCom: UILabel!
    @IBOutlet weak var labelSum: UILabel!
    @IBOutlet weak var BallsOnButton: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "fon2")!)
        
        ButtonOne.layer.cornerRadius = 12
        BackButton.layer.cornerRadius = 12
        
        switch tagg {
        case 1:
            ComImage.image = UIImage(named: "air")
        case 2:
            ComImage.image = UIImage(named: "Five")
        case 3:
            ComImage.image = UIImage(named: "look")
        default:
            print("ошибка")
        }
        
        if state > 0{
            labelCom.text = String(numCom2)
            labelSum.text = String(sumOfTwo2)
            BackButton.isEnabled = false
            BackButton.isHidden = true
        }else{
            labelCom.text = String(numCom2)
            BallovLabel.isHidden = false
            BallovLabel.text = "У ВАС НЕТ БАЛЛОВ ДРУГИХ КОМПАНИЙ"
            BallovLabelTwo.isHidden = true
            labelSum.isHidden = true
            BallsOnButton.isHidden = true
            ButtonOne.isHidden = true
            ButtonOne.isEnabled = false
        }
    }
    
    @IBAction func Back(_ sender: UIButton) {
        self.performSegue(withIdentifier: "unwindToViewController11", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == toSelectTwo{
            if let selectVC = segue.destination as? ThreeViewController{
                selectVC.dataDeligate = self
            }
        }
    }
    
}
extension SecondViewController: DataDelegate{
func update(num1: String, num2: String, num3: String, tagCom: Int) {
        dataDeligateToOne?.updateFirst(num1toone: num1, num2toone: num2, num3toone: num3, tagComtoone: tagCom)
    }
}

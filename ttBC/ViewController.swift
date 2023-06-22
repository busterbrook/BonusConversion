//
//  ViewController.swift
//  ttBC
//
//  Created by  фф on 09.02.2021.
//

import UIKit

protocol DataDelegateToOne: class {
    func updateFirst(num1toone: String, num2toone: String, num3toone: String, tagComtoone: Int)
}

var sumOfTwo:Int = 0
var numCom:Int = 0
var AppearNum: Int = 0
var opt1:Int = 800
var opt2:Int = 1300
var opt3:Int = 600

class ViewController: UIViewController {
    
    private let toOneSelectOne = "toOneSelectOne"
    private let toOneSelectTwo = "toOneSelectTwo"
    private let toOneSelectThree = "toOneSelectThree"
    
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    //Атрибуты компании
    @IBOutlet weak var BCImage: UIImageView!
    @IBOutlet weak var LogoLabel: UILabel!
    //Компания 1
    @IBOutlet weak var AirImage: UIImageView!
    @IBOutlet weak var Label11: UILabel!
    @IBOutlet weak var Label12: UILabel!
    @IBOutlet weak var Button1: UIButton!
    //Компания 2
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var FiveImage: UIImageView!
    @IBOutlet weak var Label21: UILabel!
    @IBOutlet weak var Label22: UILabel!
    //Компания 3
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var LukImage: UIImageView!
    @IBOutlet weak var Label31: UILabel!
    @IBOutlet weak var Label32: UILabel!
    
    var sum: Int = 0
    var prom: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "fon2")!)
        
        Button1.layer.cornerRadius = 12
        Button2.layer.cornerRadius = 12
        Button3.layer.cornerRadius = 12
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        AppearNum += 1
        if AppearNum == 1 {
        UIView.animate(withDuration: 0.0, delay: 0.0, options: .curveEaseIn, animations: {
            
            var BClogo = self.BCImage.frame
            var LLogo = self.LogoLabel.frame
            
            //К1
            var But1 = self.Button1.frame
            var L11 = self.Label11.frame
            var L12 = self.Label12.frame
            var AImage = self.AirImage.frame
            //К2
            var But2 = self.Button2.frame
            var L21 = self.Label21.frame
            var L22 = self.Label22.frame
            var FImage = self.FiveImage.frame
            //К3
            var But3 = self.Button3.frame
            var L31 = self.Label31.frame
            var L32 = self.Label32.frame
            var LImage = self.LukImage.frame
            
            BClogo.origin.y = 307
            LLogo.origin.y = 732
            
            //К1
            But1.origin.x += 400
            L11.origin.x += 400
            L12.origin.x += 400
            AImage.origin.x += 400
            //К2
            But2.origin.x += 400
            L21.origin.x += 400
            L22.origin.x += 400
            FImage.origin.x += 400
            //К3
            But3.origin.x += 400
            L31.origin.x += 400
            L32.origin.x += 400
            LImage.origin.x += 400
            
            //К1
            self.Button1.frame = But1
            self.Label11.frame = L11
            self.Label12.frame = L12
            self.AirImage.frame = AImage
            //К2
            self.Button2.frame = But2
            self.Label21.frame = L21
            self.Label22.frame = L22
            self.FiveImage.frame = FImage
            //К3
            self.Button3.frame = But3
            self.Label31.frame = L31
            self.Label32.frame = L32
            self.LukImage.frame = LImage
            
            self.BCImage.frame = BClogo
            self.LogoLabel.frame = LLogo
        }, completion: {
            fimished in
            print("BC go")
        })
        
        UIView.animate(withDuration: 0.6, delay: 0.0, options: .curveEaseIn, animations: {
            var BClogo = self.BCImage.frame
            var LLogo = self.LogoLabel.frame
            
            BClogo.origin.y -= 271
            LLogo.origin.y -= 469//263
            
            self.BCImage.frame = BClogo
            self.LogoLabel.frame = LLogo
        }, completion: {
            fimished in
            print("BC go")
        })
        
        UIView.animate(withDuration: 0.6, delay: 0.4, options: .curveEaseIn, animations: {
            var But1 = self.Button1.frame
            var L11 = self.Label11.frame
            var L12 = self.Label12.frame
            var AImage = self.AirImage.frame
            
            But1.origin.x -= 400
            L11.origin.x -= 400
            L12.origin.x -= 400
            AImage.origin.x -= 400
            
            self.Button1.frame = But1
            self.Label11.frame = L11
            self.Label12.frame = L12
            self.AirImage.frame = AImage
        }, completion: {
            finished in
            print("кнопака 1")
        })
        
        UIView.animate(withDuration: 0.6, delay: 0.6, options: .curveEaseIn, animations: {
            var But2 = self.Button2.frame
            var L21 = self.Label21.frame
            var L22 = self.Label22.frame
            var FImage = self.FiveImage.frame
            
            But2.origin.x -= 400
            L21.origin.x -= 400
            L22.origin.x -= 400
            FImage.origin.x -= 400
            
            self.Button2.frame = But2
            self.Label21.frame = L21
            self.Label22.frame = L22
            self.FiveImage.frame = FImage
        }, completion: {
            finished in
            print("кнопака 2")
        })
        
        UIView.animate(withDuration: 0.6, delay: 0.8, options: .curveEaseIn, animations: {
            var But3 = self.Button3.frame
            var L31 = self.Label31.frame
            var L32 = self.Label32.frame
            var LImage = self.LukImage.frame
            
            But3.origin.x -= 400
            L31.origin.x -= 400
            L32.origin.x -= 400
            LImage.origin.x -= 400
            
            self.Button3.frame = But3
            self.Label31.frame = L31
            self.Label32.frame = L32
            self.LukImage.frame = LImage
        }, completion: {
            finished in
            print("кнопака 3")
        })
        print(AppearNum)
        }else{
            print("ошибка")
        }
    }
    
    @IBAction func readCom(_ sender: UIButton) {
        
        company1 = Int(Label1.text!)!
        company2 = Int(Label2.text!)!
        company3 = Int(Label3.text!)!
        
        switch sender.tag {
        case 1:
            sum = Int(Label2.text!)! + Int(Label3.text!)!
            sumOfTwo2 = sum
            numCom2 = Int(Label1.text!)!
            tagg = 1
            
            if Int(Label2.text!)! <= 0 && Int(Label3.text!)! <= 0{
                state = 0
                print("0k")
            }else if Int(Label2.text!)! > 0 || Int(Label3.text!)! > 0{
                state = 1
                print("1k")
                if Int(Label2.text!)! > 0{
                    stateOfCompany = 2
                }else if Int(Label3.text!)! > 0{
                    stateOfCompany = 3
                }
                if Int(Label2.text!)! > 0 && Int(Label3.text!)! > 0{
                    state = 2
                    stateOfCompany = 0
                    print("2k")
                }
                
            }
 
            print("1")
            
        case 2:
            sum = Int(Label1.text!)! + Int(Label3.text!)!
            sumOfTwo2 = sum
            numCom2 = Int(Label2.text!)!
            tagg = 2
            
            if Int(Label1.text!)! <= 0 && Int(Label3.text!)! <= 0{
                state = 0
                print("0k")
            }else if Int(Label1.text!)! > 0 || Int(Label3.text!)! > 0{
                state = 1
                print("1k")
                if Int(Label1.text!)! > 0{
                    stateOfCompany = 1
                }else if Int(Label3.text!)! > 0{
                    stateOfCompany = 3
                }
                if Int(Label1.text!)! > 0 && Int(Label3.text!)! > 0{
                    state = 2
                    print("2k")
                }
            }
            
            print("2")
            
        case 3:
            sum = Int(Label2.text!)! + Int(Label1.text!)!
            sumOfTwo2 = sum
            numCom2 = Int(Label3.text!)!
            tagg = 3
            
            if Int(Label1.text!)! <= 0 && Int(Label2.text!)! <= 0{
                state = 0
                print("0k")
            }else if Int(Label1.text!)! > 0 || Int(Label2.text!)! > 0{
                state = 1
                print("1k")
                if Int(Label2.text!)! > 0{
                    stateOfCompany = 2
                }else if Int(Label1.text!)! > 0{
                    stateOfCompany = 1
                }
                if Int(Label1.text!)! > 0 && Int(Label2.text!)! > 0{
                    state = 2
                    print("2k")
                }
            }
            
            print("3")
            
        default:
            print("ошибка")
        }
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == toOneSelectOne || segue.identifier == toOneSelectTwo || segue.identifier == toOneSelectThree{
            if let selectVCFirst = segue.destination as? SecondViewController{
                selectVCFirst.dataDeligateToOne = self
            }
        }
    }
}

extension ViewController: DataDelegateToOne{
    func updateFirst(num1toone: String, num2toone: String, num3toone: String, tagComtoone: Int) {
        Label1.text = num1toone
        Label2.text = num2toone
        Label3.text = num3toone
    }
}



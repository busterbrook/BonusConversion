//
//  File.swift
//  ttBC
//
//  Created by  фф on 09.02.2021.
//

import UIKit

var company1:Int = 0
var company2:Int = 0
var company3:Int = 0
var tagg:Int = 0
var stateOfCompany: Int = 0

class ThreeViewController: UIViewController {
    
    private var SwitchTag1:Int = 0
    private var SwitchTag2:Int = 0
    private var sum: Int = 0
    private var resNum1: Int = 0
    private var resNum2: Int = 0
    private var numCom1: Int = 0
    private var numCom2:Int = 0
    private var addNum1:Int = 0
    private var addNum2:Int = 0
    
    @IBOutlet weak var ViewUp: UIView!
    @IBOutlet weak var MainComView: UIView!
    @IBOutlet weak var BackLogoView: UIView!
    @IBOutlet weak var Podlozka: UIView!
    
    @IBOutlet weak var Text1: UITextField!
    @IBOutlet weak var Text2: UITextField!
    
    @IBOutlet weak var ButtonChange: UIButton!
    @IBOutlet weak var ButtonGoBack: UIButton!
    
    @IBOutlet weak var LoadImage: UIImageView!
    @IBOutlet weak var LogoImage: UIImageView!
    @IBOutlet weak var MainCompany: UIImageView!
    @IBOutlet weak var ImageComOne: UIImageView!
    @IBOutlet weak var ImageComTwo: UIImageView!
    
    @IBOutlet weak var ButtonBall: UILabel!
    @IBOutlet weak var Poluchit: UILabel!
    @IBOutlet weak var LogoLabel: UILabel!
    @IBOutlet weak var LoadLabel: UILabel!
    @IBOutlet weak var BallovLabelView: UILabel!
    @IBOutlet weak var LabelCom: UILabel!//Нижний результат
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var LabelSum: UILabel!
    @IBOutlet weak var LabelSumCom: UILabel!//Верхний постоянный
    @IBOutlet weak var PlusL1: UILabel!
    @IBOutlet weak var PlusL2: UILabel!
    
    @IBOutlet weak var Switch1: UISwitch!
    @IBOutlet weak var Switch2: UISwitch!
    
    weak var dataDeligate: DataDelegate?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "fon2")!)
        Podlozka.backgroundColor = UIColor(patternImage: UIImage(named: "fon2")!)
        
        LoadImage.isHidden = true
        LabelSum.text = "0"
        LabelCom.isHidden = true
        //добвавить отключение enable к лабелам
        Label1.isHidden = true
        Label2.isHidden = true
        
        ButtonChange.layer.cornerRadius = 12
        ButtonGoBack.layer.cornerRadius = 12
        
        Text1.delegate = self
        Text2.delegate = self
        
        if state == 2{
            switch tagg {
            case 1:
                sum = company1
                numCom1 = company2
                numCom2 = company3
                addNum1 = company2//
                addNum2 = company3//
                LabelSumCom.text = String(sum)
                LabelCom.text = String(company1)
                Text1.text = String(company2)
                Text2.text = String(company3)
                MainCompany.image = UIImage(named: "air")
                ImageComOne.image = UIImage(named: "Five")
                ImageComTwo.image = UIImage(named: "look")
            case 2:
                sum = company2
                numCom1 = company1
                numCom2 = company3
                addNum1 = company1//
                addNum2 = company3//
                LabelSumCom.text = String(sum)
                LabelCom.text = String(company2)
                Text1.text = String(company1)
                Text2.text = String(company3)
                MainCompany.image = UIImage(named: "Five")
                ImageComOne.image = UIImage(named: "air")
                ImageComTwo.image = UIImage(named: "look")
            case 3:
                sum = company3
                numCom1 = company1
                numCom2 = company2
                addNum1 = company1//
                addNum2 = company2//
                LabelSumCom.text = String(sum)
                LabelCom.text = String(company3)
                Text1.text = String(company1)
                Text2.text = String(company2)
                MainCompany.image = UIImage(named: "look")
                ImageComOne.image = UIImage(named: "air")
                ImageComTwo.image = UIImage(named: "Five")
            default:
                print("ошибка")
            }
        }else if state == 1{
            ImageComTwo.isHidden = true
            Label2.isHidden = true
            Switch1.isHidden = true
            Switch1.isEnabled = false
            Text2.isHidden = true
            PlusL2.isHidden = true
            
            switch tagg {
            case 1:
                sum = company1
                MainCompany.image = UIImage(named: "air")
                LabelSumCom.text = String(sum)
                if stateOfCompany == 2 {
                    ImageComOne.image = UIImage(named: "Five")
                    Text1.text = String(company2)
                    Text2.text = String(company3)
                    addNum1 = company2//
                    addNum2 = company3//
                    numCom1 = company2
                    numCom2 = company3
                }else if stateOfCompany == 3{
                    ImageComOne.image = UIImage(named: "look")
                    Text1.text = String(company3)
                    Text2.text = String(company2)
                    numCom1 = company3
                    numCom2 = company2
                    addNum1 = company3//
                    addNum2 = company2//
                }else {
                    print("ошибка")
                }
                
            case 2:
                sum = company2
                MainCompany.image = UIImage(named: "Five")
                LabelSumCom.text = String(sum)
                
                if stateOfCompany == 1 {
                    ImageComOne.image = UIImage(named: "air")
                    Text1.text = String(company1)
                    Text2.text = String(company3)
                    addNum1 = company1//
                    addNum2 = company3//
                    numCom1 = company1
                    numCom2 = company3
                }else if stateOfCompany == 3{
                    ImageComOne.image = UIImage(named: "look")
                    Text1.text = String(company3)
                    Text2.text = String(company1)
                    addNum1 = company3//
                    addNum2 = company1//
                    numCom1 = company3
                    numCom2 = company1
                }else{
                    print("ошибка")
                }
            case 3:
                sum = company3
                MainCompany.image = UIImage(named: "look")
                LabelSumCom.text = String(sum)
                
                if stateOfCompany == 1 {
                    ImageComOne.image = UIImage(named: "air")
                    Text1.text = String(company1)
                    Text2.text = String(company2)
                    addNum1 = company1//
                    addNum2 = company2//
                    numCom1 = company1
                    numCom2 = company2
                }else if stateOfCompany == 2{
                    ImageComOne.image = UIImage(named: "Five")
                    Text1.text = String(company2)
                    Text2.text = String(company1)
                    addNum1 = company2//
                    addNum2 = company2//
                    numCom1 = company2
                    numCom2 = company1
                }else{
                    print("ошибка")
                }
            default:
                print("ошибка")
            }
        }else{
            print("ошибка")
        }
        
        UIView.animate(withDuration: 0.0, delay: 0.0, options: .curveEaseIn, animations: {
            var V1 = self.ViewUp.frame
            V1.origin.y += 400
            self.ViewUp.frame = V1
        }, completion: {
            finished in
            print("убрано")
        })
        
    }
    
    @IBAction func AddNum(_ sender: UITextField) {
        moveDownKeyboard(tag: 1)
        if sender.text?.isEmpty != true{
        if Switch2.isOn == true{
            Switch2.setOn(false, animated: true)
            ComOneAdd(Switch2)
            addNum1 = Int(Text1.text!)!
            if Int(Text1.text!)! <= numCom1 {
                Text1.textColor = UIColor.systemBlue
                addNum1 = Int(Text1.text!)!
            }else{
                Text1.text = String(numCom1)
                Text1.textColor = UIColor.red
            }
            Switch2.setOn(true, animated: true)
            ComOneAdd(Switch2)
        }else{
            if Int(Text1.text!)! <= numCom1 {
                Text1.textColor = UIColor.systemBlue
                addNum1 = Int(Text1.text!)!
            }else{
                Text1.text = String(numCom1)
                addNum1 = numCom1
                Text1.textColor = UIColor.red
            }
            
        }
        }else{
            Text1.text = String(numCom1)
        }
    }
    @IBAction func AddNum2(_ sender: UITextField) {
        moveDownKeyboard(tag: 2)
        if sender.text?.isEmpty != true{
        if Switch1.isOn == true{
            Switch1.setOn(false, animated: true)
            ComTwoAdd(Switch1)
            addNum2 = Int(Text2.text!)!
            if Int(Text2.text!)! <= numCom2 {
                Text2.textColor = UIColor.systemBlue
                addNum2 = Int(Text2.text!)!
            }else{
                Text2.text = String(numCom2)
                Text2.textColor = UIColor.red
            }
            Switch1.setOn(true, animated: true)
            ComTwoAdd(Switch1)
        }else{
            if Int(Text2.text!)! <= numCom2 {
                Text2.textColor = UIColor.systemBlue
                addNum2 = Int(Text2.text!)!
            }else{
                Text2.text = String(numCom2)
                addNum2 = numCom2
                Text2.textColor = UIColor.red
            }
        }
        }else{
            Text2.text = String(numCom2)
        }
    }
    
    @IBAction func ComOneAdd(_ sender: UISwitch) {
        
        if sender.isOn == true {
            LabelSum.text! = String(Int(LabelSum.text!)! + addNum1)
            SwitchTag1 = 1
            sum += addNum1
            print(sum)
        }
        if(sender.isOn == false){
            LabelSum.text! = String(Int(LabelSum.text!)! - addNum1)
            SwitchTag1 = 0
            sum -= addNum1
        }
    }
    
    @IBAction func ComTwoAdd(_ sender: UISwitch) {
        if sender.isOn == true {
            LabelSum.text! = String(Int(LabelSum.text!)! + addNum2)
            SwitchTag2 = 1
            sum += addNum2
            print(sum)
        }
        if(sender.isOn == false){
            LabelSum.text! = String(Int(LabelSum.text!)! - addNum2)
            SwitchTag2 = 0
            sum -= addNum2
        }
    }
    
    @IBAction func ChangeNum(_ sender: UIButton) {
        Switch1.isHidden = true
        Switch2.isHidden = true
        PlusL1.isHidden = true
        PlusL2.isHidden = true
        Text1.isHidden = true
        Text2.isHidden = true
        ImageComOne.isHidden = true
        ImageComTwo.isHidden = true
        
        beforeSucses()
        
        sender.isEnabled = false
        LabelSum.isHidden = true
        ButtonBall.isHidden = true
        Poluchit.isHidden = true
        ButtonChange.setTitle("ОБРАБОТКА ЗАПРОСА", for: .normal)
        //вычиление остатков и их отправка
        if SwitchTag1 == 1{
            if addNum1 <= numCom1{
                resNum1 = numCom1 - addNum1
            }
        }else{
            resNum1 = numCom1
        }
        if SwitchTag2 == 1{
            if addNum2 <= numCom2{
                resNum2 = numCom2 - addNum2
            }
        }else{
            resNum2 = numCom2
        }
        
        switch tagg {
        case 1:
            dataDeligate?.update(num1: String(sum), num2: String(resNum1), num3: String(resNum2), tagCom: 1)
        case 2:
            dataDeligate?.update(num1: String(resNum1), num2: String(sum), num3: String(resNum2), tagCom: 2)
        case 3:
            dataDeligate?.update(num1: String(resNum1), num2: String(resNum2), num3: String(sum), tagCom: 3)
        default:
            print("ошибка1")
        }
       
    }
    
    @IBAction func GoBack(_ sender: UIButton) {
        self.performSegue(withIdentifier: "unwindToViewController1", sender: self)
        print("sand1")
    }
    
    func ChengeSize(){
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .beginFromCurrentState) {
            self.LogoImage.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            //self.BackLogoView.transform = CGAffineTransform(scaleX: 1, y: .init(100))
           
        } completion: { (Bool) in
            self.LogoImage.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            //self.BackLogoView.transform = CGAffineTransform(scaleX: 1, y: .init(-100))
        }

    }
    
    func beforeSucses(){
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseIn, animations: {
            var ICom = self.MainCompany.frame
            var BackView = self.MainComView.frame
            
            ICom.origin.y -= 200
            BackView.origin.y -= 200
            
            self.MainCompany.frame = ICom
            self.MainComView.frame = BackView
        }, completion: { [self]
            finished in print("поднялось")
            loading()
        })
    }
    func loading(){
        self.LabelSumCom.text = String(sum)
        self.LoadImage.isHidden = false
        let jeremyGif = UIImage.gifImageWithName("ZZ5H")
        let imageView = UIImageView(image: jeremyGif)
        imageView.frame = CGRect(x: 110.0, y: 0.0, width: 40, height: 40)
        self.LoadImage.addSubview(imageView)
        LoadLabel.text = "ОБРАЩЕНИЕ К СЕРВЕРУ"
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            self.LoadLabel.text = "ПОИСК ДОСТУПНЫХ БАЛЛОВ"
        })
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
            self.LoadLabel.text = "КОНВЕРТАЦИЯ БАЛЛОВ"
        })
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5, execute: {
            self.LoadLabel.text = "ОБМЕН"
        })
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0, execute: {
            self.LoadLabel.text = "ЗАЧИСЛЕНИЕ НА СЧЕТ"
        })
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.0, execute: {
            self.LoadLabel.text = "УСПЕХ!"
        })
        DispatchQueue.main.asyncAfter(deadline: .now() + 7.0, execute: {
            self.sucsess()
        })
    }
    func sucsess(){
        LogoImage.image = UIImage(named: "checkmarkwhite")
        LoadLabel.isHidden = true
        LoadImage.isHidden = true
        ChengeSize()
        ButtonGoBack.isEnabled = true
        ButtonGoBack.isHidden = false
        UIView.animate(withDuration: 0.0, delay: 0.0, options: .curveEaseIn, animations: {
            var lab = self.LoadLabel.frame
            lab.origin.y -= 600
            self.LoadLabel.frame = lab
        }, completion: {
            finished in print("переброс лабела")
            self.LoadLabel.text = "У ВАС НА СЧЕТЕ КОМПАНИИ"
            self.LoadLabel.isHidden = false
        })
        UIView.animate(withDuration: 0.6, delay: 0.0, options: .curveEaseIn, animations: {
            var ICom = self.MainCompany.frame
            var BackView = self.MainComView.frame
            var Lab = self.LoadLabel.frame
            
            ICom.origin.y += 300
            BackView.origin.y += 300
            Lab.origin.y += 335
            
            self.MainCompany.frame = ICom
            self.MainComView.frame = BackView
            self.LoadLabel.frame = Lab
        }, completion: {
            finished in print("успех")
        })
    }
    
    func moveUpKeyboard(tag: Int){
        ViewUp.isHidden = false
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            var V1 = self.ViewUp.frame
            V1.origin.y -= 400
            self.ViewUp.frame = V1
        }, completion: {
            finished in
            print("появилось")
        })
        if tag == 1{
            UIView.animate(withDuration: 0.25, delay: 0.0, options: .curveEaseIn, animations: {
            self.Text1.center = CGPoint(x: 230, y: 85)
            self.ImageComOne.center = CGPoint(x: 96, y: 85)
            self.Switch2.center = CGPoint(x: 309, y: 85)
            self.PlusL1.center = CGPoint(x: 170, y: 85)
        }, completion: {
            finished in
            print("moveUP")
        })
        }else if tag == 2{
            UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
                self.Text2.center = CGPoint(x: 230, y: 85)
                self.ImageComTwo.center = CGPoint(x: 96, y: 85)
                self.Switch1.center = CGPoint(x: 309, y: 85)
                self.PlusL2.center = CGPoint(x: 170, y: 85)
            }, completion: {
                finished in
                print("moveUP")
            })
        }else{
            print("ошибка")
        }
    }
    func moveDownKeyboard(tag: Int){
        UIView.animate(withDuration: 0.1, delay: 0.0, options: .curveEaseIn, animations: {
            var V1 = self.ViewUp.frame
            V1.origin.y += 400
            self.ViewUp.frame = V1
        }, completion: {
            finished in
            print("появилось")
            self.ViewUp.isHidden = true
        })
        if tag == 1{
        UIView.animate(withDuration: 0.1, delay: 0.0, options: .curveEaseIn, animations: {
            self.Text1.center = CGPoint(x: 230, y: 245)
            self.ImageComOne.center = CGPoint(x: 96, y: 245)
            self.Switch2.center = CGPoint(x: 309, y: 245)
            self.PlusL1.center = CGPoint(x: 170, y: 246)
        }, completion: {
            finished in
            print("moveDown2")
        })
        }else if tag == 2{
            UIView.animate(withDuration: 0.1, delay: 0.0, options: .curveEaseIn, animations: {
                self.Text2.center = CGPoint(x: 230, y: 310)
                self.ImageComTwo.center = CGPoint(x: 96, y: 310)
                self.Switch1.center = CGPoint(x: 309, y: 310)
                self.PlusL2.center = CGPoint(x: 170, y: 310)
            }, completion: {
                finished in
                print("moveDown2")
            })
        }else{
            print("ошибка")
        }
    }
    @IBAction func TextGo1(_ sender: Any) {
        moveUpKeyboard(tag: 1)
    }
    @IBAction func TextGo2(_ sender: Any) {
        moveUpKeyboard(tag: 2)
    }
    @IBAction func ButtonDown(_ sender: Any) {
        self.view.endEditing(true)
    }
    
}

extension ThreeViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

//
//  ViewController.swift
//  ex03
//
//  Created by Renat Mukhametov on 10.08.2022.
//
import UIKit

class ViewController: UIViewController {
    
    func clearAll() {
        numFromScreen = 0
        iter = 0
        oper = false
        operTag = 0
        tmpRes = (0, false)
    }
    
    @IBOutlet weak var result: UILabel!
    var numFromScreen = 0
    var iter = 0
    var oper = false
    var operTag = 0
    var tmpRes = (0, false)
    
    @IBAction func digits(_ sender: UIButton) {
        if result.text == "Error: Int overflow" || result.text == "Error: devide by zero" {
            result.text = "0"
        }
        if oper {
            result.text = String(sender.tag)
            oper = false
        }
        else {
            if result.text == "0" {
                result.text = ""
            }
            result.text = result.text! + String(sender.tag)
        }
        numFromScreen = Int(result.text!)!
        print("Button \"\(sender.tag)\" was pressed")
    }
    @IBAction func operations(_ sender: UIButton) {
        if operTag == 15 && numFromScreen == 0 {
            result.text = "Error: devide by zero"
            return
        }
        if result.text == "Error: Int overflow" || result.text == "Error: devide by zero" {
            result.text = "0"
            return
        }
        
        switch sender.tag {
        case 10:
            clearAll()
            result.text = "0"
            print("Button \"AC\" was pressed")
        case 11:
            numFromScreen *= -1
            result.text = String(numFromScreen)
            print("Button \"NEG\" was pressed")
        case 12:
            oper = true
            operTag = sender.tag
            tmpRes = tmpRes.0.addingReportingOverflow(numFromScreen)
            if tmpRes.1 {
                result.text = "Error: Int overflow"
                clearAll()
                break
            }
            result.text = String(tmpRes.0)
            iter += 1
            print("Button \"+\" was pressed")
        case 13:
            oper = true
            operTag = sender.tag
            if iter > 0 {
                tmpRes = tmpRes.0.multipliedReportingOverflow(by: numFromScreen)
                if tmpRes.1 {
                    result.text = "Error: Int overflow"
                    clearAll()
                    break
                }
            }
            tmpRes.0 = numFromScreen
            iter += 1
            result.text = String(tmpRes.0)
            print("Button \"×\" was pressed")
        case 14:
            oper = true
            operTag = sender.tag
            if iter > 0 {
                tmpRes = tmpRes.0.subtractingReportingOverflow(numFromScreen)
                if tmpRes.1 {
                    result.text = "Error: Int overflow"
                    clearAll()
                    break
                }
            }
            tmpRes.0 = numFromScreen
            iter += 1
            result.text = String(tmpRes.0)
            print("Button \"–\" was pressed")
        case 15:
            oper = true
            operTag = sender.tag
            if iter > 0 {
                tmpRes = tmpRes.0.dividedReportingOverflow(by: numFromScreen)
                if tmpRes.1 {
                    result.text = "Error: Int overflow"
                    clearAll()
                    break
                }
            }
            tmpRes.0 = numFromScreen
            iter += 1
            result.text = String(tmpRes.0)
            print("Button \"÷\" was pressed")
        case 16:
            
            switch operTag {
            case 12:
                tmpRes = tmpRes.0.addingReportingOverflow(numFromScreen)
                if tmpRes.1 {
                    result.text = "Error: Int overflow"
                    clearAll()
                    break
                }
                result.text = String(tmpRes.0)
            case 13:
                tmpRes = tmpRes.0.multipliedReportingOverflow(by: numFromScreen)
                if tmpRes.1 {
                    result.text = "Error: Int overflow"
                    clearAll()
                    break
                }
                result.text = String(tmpRes.0)
            case 14:
                tmpRes = tmpRes.0.subtractingReportingOverflow(numFromScreen)
                if tmpRes.1 {
                    result.text = "Error: Int overflow"
                    clearAll()
                    break
                }
                result.text = String(tmpRes.0)
            case 15:
                tmpRes = tmpRes.0.dividedReportingOverflow(by: numFromScreen)
                if tmpRes.1 {
                    result.text = "Error: Int overflow"
                    clearAll()
                    break
                }
                result.text = String(tmpRes.0)
            default:
                break
            }
            numFromScreen = tmpRes.0
            print("Button \"=\" was pressed")
        default:
            break
        }
    }
}



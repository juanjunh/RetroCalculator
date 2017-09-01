//
//  ViewController.swift
//  RetroCalculator
//
//  Created by JanielHNY on 2017/8/27.
//  Copyright © 2017年 JanielHNY. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    @IBOutlet weak var OutputLbl: UILabel!
    
    var btnSound: AVAudioPlayer!
    enum Operation: String {
     case Divide = "/"
     case Add = "+"
     case Multiply = "*"
     case Subtract = "-"
     case Empty = "Empty"
    }
    
    
    var currentOperation = Operation.Empty
    var runningNumber = ""
    var LtValStr = ""
    var RtValStr = ""
    var result = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let path = NSBundle.pathForResource("btn", ofType: "wav", inDirectory: "")
//        
//        let soundURL = CFURLGetBaseURL(path!)
//        
//        
//            do{
//            try btnSound = AVAudioPlayer(contentsOfURL: soundURL)
//            btnSound.prepareToPlay()
//            
//            
//        }catch let err as NSError{
//            print(err.debugDescription)
//            
//        }
        
        
        
    }

    @IBAction func numberPressed(sender: UIButton) {
       // playSound()
        
        runningNumber += "\(sender.tag)"
        OutputLbl.text = runningNumber
        
        
    }
    
    
    @IBAction func onDividePressed (sender: AnyObject){
        processOperation(.Divide)
    }
    
    @IBAction func onMultiplyPressed (sender: AnyObject){
       processOperation(.Multiply)
    }
    
    @IBAction func onSubtractPressed (sender: AnyObject){
        processOperation(.Subtract)
    }
    
    @IBAction func onAddPressed (sender: AnyObject){
        processOperation(.Add)
    }
    
    @IBAction func onEqualPressed (sender: AnyObject){
        processOperation(currentOperation)
    }
    
    
//    func playSound(){
//        if btnSound.playing{
//            btnSound.stop()
//        }
//        btnSound.play()
//    }


    func processOperation(operation: Operation) {
        if currentOperation != Operation.Empty{
            
            // A user selected an operator and then another operaor before entering a number
            
            if runningNumber != "" {
                RtValStr = runningNumber
                runningNumber = ""
                
                if currentOperation == Operation.Multiply {
                    result = "\(Double(LtValStr)! * Double(RtValStr)!)"
                } else if currentOperation == Operation.Divide{
                    result = "\(Double(LtValStr)! / Double(RtValStr)!)"
                }else if currentOperation == Operation.Subtract{
                    result = "\(Double(LtValStr)! - Double(RtValStr)!)"
                }else if currentOperation == Operation.Add{
                    result = "\(Double(LtValStr)! + Double(RtValStr)!)"
                }
                
                LtValStr = result
                OutputLbl.text = result
                
            }
            currentOperation = operation
            
        } else{
            // this is the first time an operator has been pressed
            LtValStr = runningNumber
            runningNumber = ""
            currentOperation = operation
            
            
        }
        
        
        
    }
    
    
}


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
    
//    func playSound(){
//        if btnSound.playing{
//            btnSound.stop()
//        }
//        btnSound.play()
//    }


    func processOperation(operation: Operation) {
        if currentOperation != Operation.Empty{
            if runningNumber != "" {
              RtValStr = runningNumber
            }
            
        }
        
        
        
    }
    
    
}


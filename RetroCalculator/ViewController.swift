//
//  ViewController.swift
//  RetroCalculator
//
//  Created by JanielHNY on 2017/8/27.
//  Copyright © 2017年 JanielHNY. All rights reserved.
//

import UIKit
import AVFoundation


var btnSound: AVAudioPlayer!


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.pathForResource("btn", ofType: "wav", inDirectory: "")
        let soundURL = //can't find the corresponding code
            
            do{
            try btnSound = AVAudioPlayer(contentsOfURL: <#T##NSURL#>)
            btnSound.prepareToPlay()
            
            
        }catch let err as NSError{
            print(err.debugDescription)
            
        }
        
        
        
    }

    @IBAction func numberPressed(sender: UIButton) {
        playSound()
        
    }
    
    func playSound(){
        if btnSound.playing{
            btnSound.stop()
        }
        btnSound.play()
    }


}


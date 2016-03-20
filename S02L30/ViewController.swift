//
//  ViewController.swift
//  S02L30
//
//  Created by Andreas Andersson on 20/03/16.
//  Copyright © 2016 Andreas Andersson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    var maxTaps:Int = 0
    var currentTaps:Int = 0
    
    //Outlets
    @IBOutlet weak var logoImage:UIImageView!
    @IBOutlet weak var tapsTxtField:UITextField!
    @IBOutlet weak var playButton:UIButton!
    @IBOutlet weak var coinButton:UIButton!
    @IBOutlet weak var tapsLabel:UILabel!
    
    
    
    @IBAction func startPlayButtonOnClick(){
        
        if(tapsTxtField.text != nil && tapsTxtField.text != ""){
            showGame()
            maxTaps = Int(tapsTxtField.text!)!
            updateTapLabel()
        }
        
    }
    
    @IBAction func coinBtnTapped(){
        
        if ++currentTaps == maxTaps{
            showHome()
        }
        
        updateTapLabel()
    }
    
    func showHome(){
        resetGame()
        logoImage.hidden = false
        tapsTxtField.hidden = false
        playButton.hidden = false
        coinButton.hidden = true
        tapsLabel.hidden = true
    }
    
    func showGame(){
        logoImage.hidden = true
        tapsTxtField.hidden = true
        playButton.hidden = true
        coinButton.hidden = false
        tapsLabel.hidden = false
    }
    
    func updateTapLabel(){
        tapsLabel.text = "\(currentTaps) Taps"
    }
    
    func resetGame(){
        currentTaps = 0
        tapsTxtField.text = nil
    }

}


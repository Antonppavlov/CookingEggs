//
//  ViewController.swift
//  Cooking eggs
//
//  Created by Anton Pavlov on 16.11.2017.
//  Copyright © 2017 Anton Pavlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softBoiledTime = 240
    let inAPounchTime = 360
    let hardBoiledTime = 450
    var selectedTipe = Array(repeating:true, count:3)
    var isStarted=false
    var timer = Timer()
    var currentTimer:Int?
    var counter: Int?

    @IBOutlet weak var softBoiledBtn: UIButton!
    @IBOutlet weak var inAPounchBtn: UIButton!
    @IBOutlet weak var hardBoiledBtn: UIButton!
  
    @IBOutlet weak var startBtn: UIButton!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedTipe[2] = false
        setHighlightedForButtons(hardBoiledTime)
    }
    
  
    @IBAction func softBoildeBtnPressed(_ sender: Any) {
        selectedTipe[0]=false
        selectedTipe[1]=true
        selectedTipe[2]=true
        setHighlightedForButtons(softBoiledTime)
    }

    @IBAction func inAPounchBtnPressed(_ sender: Any) {
        selectedTipe[0]=true
        selectedTipe[1]=false
        selectedTipe[2]=true
        setHighlightedForButtons(inAPounchTime)
    }

    @IBAction func hardBoiledBtnPressed(_ sender: Any) {
        selectedTipe[0]=true
        selectedTipe[1]=true
        selectedTipe[2]=false
        setHighlightedForButtons(hardBoiledTime)
    }

   
    @IBAction func startBtnPressed(_ sender: Any) {
        if !isStarted{
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerAction), userInfo: nil, repeats: true)
            startBtn.setImage(#imageLiteral(resourceName: "stop"), for: UIControlState())
            isStarted = true
            isEnabledAllEggButtons(false)
        }else{
            timer.invalidate()
            isEnabledAllEggButtons(true)
            startBtn.setImage(#imageLiteral(resourceName: "start"), for: UIControlState())
            isStarted = false
        }
    }
    
    @objc func timerAction(){
        counter! -= 1
        
        if(counter!<0){
            timerLabel.text = "Ready!"
        }else{
            setTextTimerLabel(counter!)
        }
    }
    
    func isEnabledAllEggButtons(_ enabled: Bool){
        softBoiledBtn.isEnabled = enabled
        inAPounchBtn.isEnabled = enabled
        hardBoiledBtn.isEnabled = enabled
    }
    
    func setHighlightedForButtons(_ time: Int)  {
        softBoiledBtn.isHighlighted = selectedTipe[0]
        inAPounchBtn.isHighlighted = selectedTipe[1]
        hardBoiledBtn.isHighlighted = selectedTipe[2]
      
        currentTimer=time
        setTextTimerLabel(currentTimer!)
        counter=time
        setTextTimerLabel(time)
    }
    

    func setTextTimerLabel(_ time: Int){
         timerLabel.text = NSString(format: "%0.2d:%0.2d",time/60,time%60) as String
    }


}


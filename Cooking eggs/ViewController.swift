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
    var selectedTipe = Array(repeating:false, count:3)

    @IBOutlet weak var softBoiledBtn: UIButton!
    @IBOutlet weak var inAPounchBtn: UIButton!
    @IBOutlet weak var hardBoiledBtn: UIButton!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func softBoildeBtnPressed(_ sender: Any) {
    }

    @IBAction func inAPounchBtnPressed(_ sender: Any) {
    }

    @IBAction func hardBoiledBtnPressed(_ sender: Any) {
    }

    @IBAction func startBtnPressed(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   self.softBoiledBtn.isHighlighted = true
      //  self.inAPounchBtn.isHighlighted = true
      //  self.selectedTipe[2] = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


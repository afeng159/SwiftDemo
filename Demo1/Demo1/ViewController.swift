//
//  ViewController.swift
//  Demo1
//
//  Created by 啦啦啦 on 2017/9/8.
//  Copyright © 2017年 啦啦啦. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!

    
    var Counter = 0.0
    var Timer = Foundation.Timer()
    var IsPlaying = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.label.text = String(Counter);
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playBtnClick(_ sender: UIButton) {
        
        if(IsPlaying) {
            return
        }
      
        Timer = Foundation.Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.UpdateTimer), userInfo: nil, repeats: true)
        IsPlaying = true

        
        
        
    }
    func UpdateTimer() {
        Counter = Counter + 0.1
        self.label.text = String(format: "%.1f", Counter)
    }

    @IBAction func pauseBtnClick(_ sender: Any) {
        
        if(!IsPlaying) {
            return
        }
        
        Timer.invalidate();
        
        IsPlaying = false;
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


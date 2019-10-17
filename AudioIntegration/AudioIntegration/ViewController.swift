//
//  ViewController.swift
//  AudioIntegration
//
//  Created by IOS Level 01 on 17/10/19.
//  Copyright © 2019 sjbit. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioplayer:AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "B", ofType: ".mp3")
        let url = NSURL(fileURLWithPath: path!)
        
        do
        {
            self.audioplayer = try AVAudioPlayer(contentsOf: url as URL)
            self.audioplayer?.prepareToPlay()
        }
        
        catch
        {
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func play(_ sender: UIButton) {
        self.audioplayer?.play()
    }
    
    @IBAction func pause(_ sender: UIButton) {
        self.audioplayer?.pause()
    }
}


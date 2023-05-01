//
//  ViewController.swift
//  Sound
//
//  Created by 鈴木理紗子 on 2023/05/01.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton(){
        
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        
        
        drumSoundPlayer.currentTime = 0
        
        
        drumSoundPlayer.play()
        
    }
    
    @IBAction func touchUpDrumBotton(){
        
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
}

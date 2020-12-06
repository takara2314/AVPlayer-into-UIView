//
//  ViewController.swift
//  practice2
//
//  Created by 濱口　宝 on 2020/12/06.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var dorabel: UILabel!
    @IBOutlet weak var doraview: UIView!
    
    let controller = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        dorabel.text = "懐かしいね"
        doraview.backgroundColor = UIColor.blue
        
        let videoPath = Bundle.main.path(
            forResource: "count2020",
            ofType: "mp4"
        )!
        controller.showsPlaybackControls = false
        controller.player = AVPlayer(
            url: URL(fileURLWithPath: videoPath)
        )
        
        doraview.addSubview(controller.view)
        controller.view.frame = doraview.bounds
        controller.player?.play()
    }
}


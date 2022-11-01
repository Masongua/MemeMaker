//
//  ViewController.swift
//  MemeMaker
//
//  Created by 5e on 11/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    
    
    
    @IBAction func segmentedControlAct(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var topChoices: [String] = [CaptionOption(emoji: "🐹", caption: "Ham"), CaptionOption(emoji: "🫥", caption: "bruh")]
    
    var bottomChoices: [String] = [CaptionOption(emoji: "👦", caption: "boy"), CaptionOption(emoji: "🧽", caption: "sponge")]
    
    


}


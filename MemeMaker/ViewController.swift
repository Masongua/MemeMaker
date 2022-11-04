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
        
        updateLabel()
    }
    
    func updateLabel()
    {
        let topSelectedIndex = topSegmentedControl.selectedSegmentIndex
        let bottomSelectedIndex = bottomSegmentedControl.selectedSegmentIndex
        
        topCaptionLabel.text = topChoices[topSelectedIndex].caption
        bottomCaptionLabel.text = bottomChoices[bottomSelectedIndex].caption
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topSegmentedControl.removeAllSegments()
        for choices in topChoices {
            topSegmentedControl.insertSegment(withTitle: choices.emoji, at: topChoices.count, animated: false)
        }
        
        bottomSegmentedControl.removeAllSegments()
        
        for choice in bottomChoices {
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        
        topSegmentedControl.selectedSegmentIndex = 0
        bottomSegmentedControl.selectedSegmentIndex = 0
        
        updateLabel()
    }
    
    var topChoices = [CaptionOption(emoji: "🐹", caption: "Ham"), CaptionOption(emoji: "🫥", caption: "bruh")]
    
    var bottomChoices = [CaptionOption(emoji: "👦", caption: "boy"), CaptionOption(emoji: "🧽", caption: "sponge")]
    
    
    
    
    
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            topCaptionLabel.center = sender.location(in: view)
        }
    }
    

    
    @IBAction func dragBottomLabel(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .changed {
            bottomCaptionLabel.center = sender.location(in: view)
        }
    }
    
}


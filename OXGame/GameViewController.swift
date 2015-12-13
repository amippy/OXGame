//
//  GameViewController.swift
//  OXGame
//
//  Created by Ami Nakadate on 12/13/15.
//  Copyright (c) 2015 Ami Nakadate. All rights reserved.
//

import UIKit
import SpriteKit
  var scene: GameScene!

class GameViewController: UIViewController,UIGestureRecognizerDelegate

{
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = view as! SKView
        skView.multipleTouchEnabled = false
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        skView.presentScene(scene)

           }
       

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    @IBAction func didTap(sender: UITapGestureRecognizer) {
        let location = sender.locationInView(view)
        print("tapped at \(location.x), \(location.y)")
        scene.mark(location)
        
    }
    
}

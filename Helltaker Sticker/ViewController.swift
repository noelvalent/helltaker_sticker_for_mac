//
//  ViewController.swift
//  Helltaker Sticker
//
//  Created by Noel Valentine on 2020/06/24.
//

import Cocoa
import SpriteKit

class ViewController: NSViewController {

    @IBOutlet var skview: SKView!
    
    override func viewWillAppear() {
        super.viewWillAppear()
        view.window?.isOpaque = false
        view.window?.backgroundColor = NSColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        
        // hide title bar
        view.window?.titlebarAppearsTransparent = true
        view.window?.titleVisibility = .hidden
        
        // hide title bar button
        view.window?.standardWindowButton(.closeButton)!.isHidden = true
        view.window?.standardWindowButton(.miniaturizeButton)!.isHidden = true
        view.window?.standardWindowButton(.zoomButton)!.isHidden = true
        
        //always top
        view.window?.level = .floating
        
        // move by drag
        view.window?.isMovableByWindowBackground = true
        
        // disable resize
        view.window?.styleMask.remove(.resizable)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let view = self.skview {
            let scene = GameScene(size: view.bounds.size)
            scene.scaleMode = .aspectFill
            scene.backgroundColor = NSColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
            view.ignoresSiblingOrder = true
            view.presentScene(scene)
            view.allowsTransparency = true
        }
        
        
    }


}


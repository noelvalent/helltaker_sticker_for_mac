//
//  GameScene.swift
//  Helltaker Sticker
//
//  Created by Noel Valentine on 2020/06/24.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var TextureAltas = SKTextureAtlas()
    var TextureArray = [SKTexture]()
    
    var Modeus = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        /* setup your scene here */
        TextureAltas = SKTextureAtlas(named: "sprite")
        for i in 0..<TextureAltas.textureNames.count {
            let name = "\(i).png"
            TextureArray.append(SKTexture(imageNamed: name))
        }
        
        Modeus = SKSpriteNode(imageNamed: TextureAltas.textureNames[0])
        Modeus.size = CGSize(width: self.size.width, height: self.size.height)
        Modeus.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        self.addChild(Modeus)
        Modeus.run(SKAction.repeatForever(SKAction.animate(with: TextureArray, timePerFrame: 0.0167 * 4, resize: true, restore: true)))
        
    }
}

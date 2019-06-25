//
//  GameScene.swift
//  SpriteKit Demo
//
//  Created by dainis.putans on 25/06/2019.
//  Copyright © 2019 com.dainis.putans. All rights reserved.
//

import SpriteKit


class GameScene: SKScene {

    let myFirstNode = SKNode()
    let myFirstSpriteNode = SKSpriteNode(color: UIColor.red, size: CGSize(width: 200, height: 200))
    let myFirstTexturedSpriteNode = SKSpriteNode(imageNamed: "Spaceship")
    let myBlueBox = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 100, height: 100))
    
    override func didMove(to view: SKView) {
        
        addChild(myFirstNode)
        
        myFirstSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
        myFirstSpriteNode.anchorPoint = CGPoint(x: 0, y: 0)
        addChild(myFirstSpriteNode)
        
        myFirstTexturedSpriteNode.zPosition = 1
        myFirstTexturedSpriteNode.size = CGSize(width: 100.0, height: 100.0)
        myFirstSpriteNode.addChild(myFirstTexturedSpriteNode)
        
        myBlueBox.zPosition = 2
        myBlueBox.position = CGPoint(x: myFirstSpriteNode.size.width/2, y: myFirstSpriteNode.size.height/2)
        myFirstSpriteNode.addChild(myBlueBox)
        
        
        
    }
}

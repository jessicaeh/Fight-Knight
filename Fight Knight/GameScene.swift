//
//  GameScene.swift
//  Fight Knight
//
//  Created by Jessica Halbert on 4/17/19.
//  Copyright © 2019 Jessica Halbert. All rights reserved.
//  https://www.raywenderlich.com/144-spritekit-animations-and-texture-atlases-in-swift
//  at a simple animation

import SpriteKit
import GameplayKit
import AVFoundation

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        
        // Get label node from scene and store it for use later
        self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
        if let label = self.label {
            label.alpha = 0.0
            label.run(SKAction.fadeIn(withDuration: 2.0))
        }
        
        // Create shape node to use during mouse interaction
        let w = (self.size.width + self.size.height) * 0.05
        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
        
        if let spinnyNode = self.spinnyNode {
            spinnyNode.lineWidth = 2.5
            
            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
                                              SKAction.fadeOut(withDuration: 0.5),
                                              SKAction.removeFromParent()]))
        }
    }
    
    fileprivate func setUpScenery() {
//        let background = SKSpriteNode(imageNamed: ImageName.Background)
//        background.anchorPoint = CGPoint(x: 0, y: 0)
//        background.position = CGPoint(x: 0, y: 0)
//        background.zPosition = Layer.Background
//        background.size = CGSize(width: size.width, height: size.height)
//        addChild(background)
//
//        let water = SKSpriteNode(imageNamed: ImageName.Water)
//        water.anchorPoint = CGPoint(x: 0, y: 0)
//        water.position = CGPoint(x: 0, y: 0)
//        water.zPosition = Layer.Foreground
//        water.size = CGSize(width: size.width, height: size.height * 0.2139)
//        addChild(water)
//
//        //self.view.bringSubviewToFront(label);
//        label.zPosition = 1;
//        label.text = "20 seconds left"
//        label.fontSize = 20
//        label.fontColor = SKColor.black
//        label.position = CGPoint(x: size.width/2, y: size.height - 50)
//        addChild(label)
        
    }
    
    
//    func touchDown(atPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.green
//            self.addChild(n)
//        }
//    }
//
//    func touchMoved(toPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.blue
//            self.addChild(n)
//        }
//    }
//
//    func touchUp(atPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.red
//            self.addChild(n)
//        }
//    }
//
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if let label = self.label {
//            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
//        }
//
//        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
//    }
//
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
//    }
//
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
//    }
//
//    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
//    }
//
//
//    override func update(_ currentTime: TimeInterval) {
//        // Called before each frame is rendered
//    }
}

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
    
    private var knight: SKSpriteNode!
    private var knightIdleFrames: [SKTexture] = []
    private var knightAttackFrames: [SKTexture] = []
    private var knightRunFrames: [SKTexture] = []
    private var knightDieFrames: [SKTexture] = []
    
    override func didMove(to view: SKView) {
        setUpScenery()
        setUpKnight()
    }
    
    fileprivate func setUpScenery() {
        let background = SKSpriteNode(imageNamed: ImageName.Background)
        background.anchorPoint = CGPoint(x: 0, y: 0)
        background.position = CGPoint(x: 0, y: 0)
        background.zPosition = Layer.Background
        background.size = CGSize(width: size.width, height: size.height)
        addChild(background)
        
        let ground = SKSpriteNode(imageNamed: ImageName.Ground)
        ground.anchorPoint = CGPoint(x: 0, y: 0)
        ground.position = CGPoint(x: 0, y: 0)
        ground.zPosition = Layer.Ground
        ground.size = CGSize(width: size.width, height: size.height * 0.13)
        addChild(ground)
    }
    
    fileprivate func setUpKnight() {
        setIdle()
        setRun()
        setDie()
        setAttack()
        runKnight("idle")
    }
    
    func runKnight(_ status: String) {
        let firstFrameTexture = knightIdleFrames[0]
        knight = SKSpriteNode(texture: firstFrameTexture)
        knight.position = CGPoint(x: frame.midX, y: frame.midY)
        knight.zPosition = Layer.Knight
        addChild(knight)
        animateKnight()
    }
    
    func setIdle() {
        let knightAnimatedAtlas = SKTextureAtlas(named: "idle")
        var idleFrames: [SKTexture] = []
        
        let numImages = knightAnimatedAtlas.textureNames.count
        for i in 1...numImages {
            let knightTextureName = "knight\(i)"
            idleFrames.append(knightAnimatedAtlas.textureNamed(knightTextureName))
        }
        knightIdleFrames = idleFrames
    }
    
    func setRun() {
        let knightAnimatedAtlas = SKTextureAtlas(named: "run")
        var runFrames: [SKTexture] = []
        
        let numImages = knightAnimatedAtlas.textureNames.count
        for i in 1...numImages {
            let knightTextureName = "knight\(i)"
            runFrames.append(knightAnimatedAtlas.textureNamed(knightTextureName))
        }
        knightRunFrames = runFrames
    }
    
    func setDie() {
        let knightAnimatedAtlas = SKTextureAtlas(named: "die")
        var dieFrames: [SKTexture] = []
        
        let numImages = knightAnimatedAtlas.textureNames.count
        for i in 1...numImages {
            let knightTextureName = "knight\(i)"
            dieFrames.append(knightAnimatedAtlas.textureNamed(knightTextureName))
        }
        knightDieFrames = dieFrames
    }
    
    func setAttack() {
        let knightAnimatedAtlas = SKTextureAtlas(named: "attack")
        var attackFrames: [SKTexture] = []
    
        let numImages = knightAnimatedAtlas.textureNames.count
        for i in 1...numImages {
        let knightTextureName = "knight\(i)"
            attackFrames.append(knightAnimatedAtlas.textureNamed(knightTextureName))
        }
        knightAttackFrames = attackFrames
    }
    
    fileprivate func animateKnight() {
        knight.run(SKAction.repeatForever(
            SKAction.animate(with: knightIdleFrames,
                             timePerFrame: 0.1,
                             resize: false,
                             restore: true)),
                 withKey:"idkeKnight")
    }
//
//    fileprivate func runNomNomAnimationWithDelay(_ delay: TimeInterval) {
//        knight.removeAllActions()
//
//        let closeMouth = SKAction.setTexture(SKTexture(imageNamed: ImageName.CrocMouthClosed))
//        let wait = SKAction.wait(forDuration: delay)
//        let openMouth = SKAction.setTexture(SKTexture(imageNamed: ImageName.CrocMouthOpen))
//        let sequence = SKAction.sequence([closeMouth, wait, openMouth, wait, closeMouth])
//
//        knight.run(sequence)
//    }
    
    
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

//
//  AppDelegate.swift
//  Fight Knight
//
//  Created by Jessica Halbert on 4/17/19.
//  Copyright © 2019 Jessica Halbert. All rights reserved.
//

import UIKit

struct ImageName {
    static let Background = "Background"
    static let Ground = "Ground"
    static let leftButton = "ArrowLeft"
    static let rightButton = "ArrowRight"
    static let attackButton = "Sword"
}

struct SoundFile {
    static let BackgroundMusic = "CheeZeeJungle.caf"
    static let Attack = "Slice.caf"
}

struct Layer {
    static let Background: CGFloat = 0
    static let Knight: CGFloat = 2
    static let Ground: CGFloat = 1
    static let Buttons: CGFloat = 3
}

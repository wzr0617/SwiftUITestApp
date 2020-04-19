//
//  Room.swift
//  SwiftUIApp
//
//  Created by admin on 2020/04/18.
//  Copyright © 2020 admin. All rights reserved.
//

import SwiftUI

struct Room: Identifiable {
    var id = UUID()
    var name: String
    var capacity: Int
    var hasVideo: Bool = false
    
    var imageName: String { return name }
    var thumbNailName: String { return name + "Thumb" }
}

let testData = [Room(name: "Observation Deck", capacity: 16, hasVideo: true),
                Room(name: "Charter Jet", capacity: 16, hasVideo: true),
                Room(name: "Rainbow Room", capacity: 16, hasVideo: true),
                Room(name: "Pastoral", capacity: 7,hasVideo: false)]

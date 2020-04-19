//
//  RoomStore.swift
//  SwiftUIApp
//
//  Created by admin on 2020/04/20.
//  Copyright © 2020 admin. All rights reserved.
//

import SwiftUI
import Combine

class RoomStore : Combine.ObservableObject {
    var rooms: [Room] {
        didSet{
            didChanged.send()
        }
    }
    init(rooms: [Room]) {
        self.rooms = rooms
    }
    var didChanged = PassthroughSubject<Void, Never>()
}



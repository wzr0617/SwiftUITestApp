//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by admin on 2020/04/18.
//  Copyright © 2020 admin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var rooms: [Room] = []

    var body: some View {
        NavigationView {
            List(rooms) { room in
                RoomCell(room: room)
            }
            .navigationBarTitle(Text("Rooms"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
    }
}

struct RoomCell: View {
    let room: Room

    var body: some View {
        NavigationLink(destination: RoomDetail(room: room)) {
            Image(room.thumbNailName)
                .cornerRadius(16)
            HStack {
                VStack(alignment: .leading) {
                    Text(room.name)
                    Text("\(room.capacity) people")
                        .font(.subheadline).foregroundColor(.secondary)
                }
            }
        }
    }
}

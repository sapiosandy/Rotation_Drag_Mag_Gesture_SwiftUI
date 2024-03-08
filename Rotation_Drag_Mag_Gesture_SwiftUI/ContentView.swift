//
//  ContentView.swift
//  Rotation_Drag_Mag_Gesture_SwiftUI
//
//  Created by Sandra Gomez on 3/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var degree = 0.0
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .font(.system(size: 200))
                .foregroundColor(.green)
                .rotationEffect(Angle.degrees(degree))
                .gesture(
                    RotationGesture()
                        .onChanged({ angle in
                            self.degree = angle.degrees
                        })
            )
        }
    }
}

#Preview {
    ContentView()
}

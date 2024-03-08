//
//  ContentView.swift
//  Rotation_Drag_Mag_Gesture_SwiftUI
//
//  Created by Sandra Gomez on 3/7/24.
//

import SwiftUI

struct ContentView: View {
    //Rotation Gesture
//    @State private var degree = 0.0
    
    // Magnification Gesture:
    @State private var tempValue: CGFloat = 0
    @State private var finalValue: CGFloat = 1
    
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .font(.system(size: 200))
                .foregroundColor(.green)
            //Rotation Gesture:
//                .rotationEffect(Angle.degrees(degree))
//                .gesture(
//                    RotationGesture()
//                        .onChanged({ angle in
//                            self.degree = angle.degrees
//                        })
//            )
            // Magnification Gesture
                .scaleEffect(finalValue + tempValue)
                .gesture(
                    MagnificationGesture()
                        .onChanged { amount in
                            self.tempValue = amount - 1
                        }
                        .onEnded { amount in
                            self.finalValue += self.tempValue
                            self.tempValue = 0
                        }
                )
        }
    }
}

#Preview {
    ContentView()
}

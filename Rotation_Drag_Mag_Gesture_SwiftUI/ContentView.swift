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
//    @State private var tempValue: CGFloat = 0
//    @State private var finalValue: CGFloat = 1
    
    //Drag Gesture
    @GestureState private var dragOffset = CGSize.zero
    @State private var position = CGSize.zero
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
//                .scaleEffect(finalValue + tempValue)
//                .gesture(
//                    MagnificationGesture()
//                        .onChanged { amount in
//                            self.tempValue = amount - 1
//                        }
//                        .onEnded { amount in
//                            self.finalValue += self.tempValue
//                            self.tempValue = 0
//                        }
//                )
            // Drag Gesture
                .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
                .gesture(
                    DragGesture()
                        .updating($dragOffset, body: { (value, state, transaction) in
                            state = value.translation
                        })
                        .onEnded({ (value) in
                            position.height += value.translation.height
                            position.width += value.translation.width
                        })
                )
            
        }
    }
}

#Preview {
    ContentView()
}

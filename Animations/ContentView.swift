//
//  ContentView.swift
//  Animations
//
//  Created by Rodrigo Tarouco on 26/04/22.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    @State private var enabled = false
    
    var body: some View {
        
        //        Button("Tap me") {
        ////            animationAmount += 1
        //        }
        //        .padding(50)
        //        .background(.red)
        //        .foregroundColor(.white)
        //        .clipShape(Circle())
        //        .overlay(
        //            Circle()
        //                .stroke(.red)
        //                .scaleEffect(animationAmount)
        //                .opacity(2 - animationAmount)
        //                .animation(
        //                    .easeOut(duration: 1)
        //                    .repeatForever(autoreverses: false), value: animationAmount
        //                )
        //        )
        //        .onAppear {
        //            animationAmount = 2
        //        }
        //        print(animationAmount)
        //
        //        return VStack {
        //            Stepper("Scale amount", value: $animationAmount.animation(
        //                .easeInOut(duration: 1)
        //                .repeatCount(3, autoreverses: true)
        //                ), in: 1...10)
        //
        //            Spacer()
        //
        //            Button("Tap Me") {
        //                animationAmount += 1
        //            }
        //            .padding(40)
        //            .background(.red)
        //            .foregroundColor(.white)
        //            .clipShape(Circle())
        //            .scaleEffect(animationAmount)
        //        }
//        Button("Tap Me") {
//            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
//                animationAmount += 360
//            }
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 0, z: 1))
        VStack {
            Button("Tap Me") {
                enabled.toggle()
            }
            .background(enabled ? .blue : .red)
            .frame(width: 200, height: 200)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
            .animation(.default, value: enabled)
            
            Button("Tap Me") {
                enabled.toggle()
            }
            .frame(width: 200, height: 200)
            .background(enabled ? .blue : .red)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
            .animation(.default, value: enabled)
            
            Button("Tap Me") {
                enabled.toggle()
            }
            .frame(width: 200, height: 200)
            .background(enabled ? .blue : .red)
            .animation(.default, value: enabled)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
            .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
            
            Button("Tap Me") {
                enabled.toggle()
            }
            .frame(width: 200, height: 200)
            .background(enabled ? .blue : .red)
            .animation(nil, value: enabled)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
            .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
            

            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

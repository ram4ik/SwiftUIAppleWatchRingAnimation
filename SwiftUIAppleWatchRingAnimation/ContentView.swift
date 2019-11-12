//
//  ContentView.swift
//  SwiftUIAppleWatchRingAnimation
//
//  Created by ramil on 12.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        VStack(spacing: 30) {
            Rectangle()
                .frame(width: 60, height: 6)
                .cornerRadius(3.0)
                .opacity(0.3)
            
            Text("SwiftUI Apple Watch Ring Animaton")
            
            HStack(spacing: 20) {
                Text("Remove me")
                //RingView(colo1: .red, color2: .pink, width: 80, height: 80, progress: 60)
                //InfoView()
            }
            Spacer()
            
            Circle()
                .trim(from: show ? 0.3 : 0.99, to: 1)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 42, lineCap: .round, lineJoin: .round))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(Angle(degrees: 100), axis: (x: 1, y: 0, z: 0))
                .frame(width: 300, height: 300)
                .animation(.easeOut)
                .onTapGesture {
                    self.show.toggle()
            }
            
            Spacer()
        }
        .padding(.top, 8)
        .frame(maxWidth: .infinity)
        //.background(BlurView(style: .systemMAterial))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(radius: 20)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

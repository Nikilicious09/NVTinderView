//
//  TinderSwipeAnimation.swift
//  SampleSwiftUI
//
//  Created by Tnluser on 21/09/22.
//

import SwiftUI

struct TinderSwipeAnimation: View {
    
    @State var changeColor = false
    @State var shakeDegree = 0
    @State var dragDistance: CGSize = .zero
    
    let timer = Timer.publish(every: 1, on: .main, in: .common)
    
    func shaker(value: Int) {
        if shakeDegree % 2 == 0 {
            shakeDegree = value
        } else {
            shakeDegree = -(value)
        }
        if shakeDegree == 0 {
            shakeDegree = 0
            timer.connect().cancel()
        }
    }
    
    var body: some View {
        GeometryReader { reader in
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 250, height: 350)
                .position(x: reader.size.width/2, y: UIScreen.main.bounds.height - 250)
                .foregroundColor(changeColor ? .green : .red)
                .onTapGesture {
                    changeColor.toggle()
                    shakeDegree = 10
                    timer.connect()
                }
                .rotationEffect(.degrees(CGFloat(shakeDegree)))
                .animation(.easeOut(duration: 1), value: shakeDegree)
                .onReceive(timer) { _ in
                    shaker(value: abs(shakeDegree) - 1)
                }
                .offset(x: dragDistance.width , y: dragDistance.height)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            self.dragDistance = value.translation
                        })
                        .onEnded({ value in
                            self.dragDistance = .zero
                        })
                )
        }
    }
}

struct TinderSwipeAnimation_Previews: PreviewProvider {
    static var previews: some View {
        TinderSwipeAnimation()
    }
}

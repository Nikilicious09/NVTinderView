//
//  CardView.swift
//  SampleSwiftUI
//
//  Created by Tnluser on 20/09/22.
//

import SwiftUI

struct CardView: View {
        
    var body: some View {
        GeometryReader { geometery in
            ZStack {
                ForEach(1..<5) { image in
                    Image("\(image)")
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: geometery.size.width-50, height: geometery.size.height-CGFloat((image*20)), alignment: .top)
                        .position(x: geometery.size.width/2, y: geometery.size.height/2+CGFloat((image*10)))
                        .shadow(color: .black, radius: 2)
                }
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

//
//  BottomBar.swift
//  SampleSwiftUI
//
//  Created by Tnluser on 20/09/22.
//

import SwiftUI

struct BottomBar: View {
    var body: some View {
        HStack {
            Image("unlike")
                .resizable(resizingMode: .stretch)
                .frame(width: 50, height: 50)
                .shadow(color: .black, radius: 1)
            
            Spacer()
                .frame(width: 30)
            
            Image("superlike")
                .resizable(resizingMode: .stretch)
                .frame(width: 30, height: 30)
                .shadow(color: .black, radius: 1)
            
            Spacer()
                .frame(width: 30)
            
            Image("like")
                .resizable(resizingMode: .stretch)
                .frame(width: 50, height: 50)
                .shadow(color: .black, radius: 1)

        }
        .padding(10)
    }
}

struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar()
    }
}

//
//  TopBarView.swift
//  SampleSwiftUI
//
//  Created by Tnluser on 20/09/22.
//

import SwiftUI

struct TopBarView: View {
    var body: some View {
        HStack {
            Image("tinderLogo")
                .resizable(resizingMode: .stretch)
                .frame(width: 40, height: 40)
                .shadow(color: .black, radius: 1)
        }
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView()
    }
}

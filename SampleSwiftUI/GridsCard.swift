//
//  GridsCard.swift
//  SampleSwiftUI
//
//  Created by Tnluser on 21/09/22.
//

import SwiftUI

struct GridsCard: View {
    var body: some View {
        
        let columns = [GridItem(.fixed(50)), GridItem(.flexible()), GridItem(.fixed(50))]
        
        LazyVGrid(columns: columns, spacing: 0) {
            ForEach(1..<60) { element in
                Button {
                    print("Clicked \(element)")
                } label: {
                    VStack {
                        Image("\(element)")
                            .resizable()
                            .scaledToFit()
                            .mask(RoundedRectangle(cornerRadius: 10))
                        Text("\(element)")
                    }
                }
            }
        }
        .padding()
    }
}

struct GridsCard_Previews: PreviewProvider {
    static var previews: some View {
        GridsCard()
    }
}

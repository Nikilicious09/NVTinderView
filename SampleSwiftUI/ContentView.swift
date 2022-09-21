//
//  ContentView.swift
//  SampleSwiftUI
//
//  Created by Tnluser on 20/09/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ScrollView {
            VStack {
                /*
                 TopBarView()
                 
                 CardView()
                 
                 BottomBar()
                 */
                
                GridsCard()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

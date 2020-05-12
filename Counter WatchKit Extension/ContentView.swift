//
//  ContentView.swift
//  Counter WatchKit Extension
//
//  Created by Roman Peters on 12/05/2020.
//  Copyright © 2020 Roman Peters. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    
    func countUp() {
        counter += 1
        if counter > 99999 {
            resetCount()
        }
    }
    
    func countDown() {
        counter -= 1
        if counter < -99999 {
            resetCount()
        }
    }
    
    func resetCount() {
        counter = 0
    }
    

    
    var body: some View {
        Group{
            
            Text(String(counter))
                .font(Font.system(size: 500).monospacedDigit())
                .minimumScaleFactor(0.01)
              .onTapGesture(count: 1, perform: countUp)
                
        }.contextMenu(menuItems: {
            Button(action: {
                self.resetCount()
            }, label: {
                VStack{
                    Image(systemName: "arrow.counterclockwise")
                    Text("Reset")
                }
            })
            
            Button(action: {
                self.countDown()
            }, label: {
                VStack{
                    Image(systemName: "minus")
                    Text("Subtract")
                }
            })
            
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


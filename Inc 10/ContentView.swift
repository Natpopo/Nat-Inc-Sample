//
//  ContentView.swift
//  Inc 10
//
//  Created by Nathaniel Kei izyan Libinuko on 18/9/23.
//

import SwiftUI
import SwiftPersistence

struct ContentView: View {
    @Persistent("numbers") var numbers: [Int] = [0]
    
    var body: some View {
        List {
            ForEach(Array($numbers.enumerated()), id:
                        \.offset) { (offset, $number) in
                Stepper("Number \(number)", )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  clicker
//
//  Created by Erich Shan on 2/5/20.
//  Copyright © 2020 Erich Shan. All rights reserved.
//

import SwiftUI

class Option : Identifiable {
    var id: Int
    init(id: Int){
        self.id = id
    }
}

struct ContentView: View {
    func nonRepeatRandom() -> Int {
        var newVal = 0
        repeat {
            newVal = Int.random(in: 1..<self.howHeDied.count)
        } while(newVal == self.randInt)
        return newVal
    }
    
    var howHeDied : [String] = ["On the toilet", "EECS OH queue", "Eaten by core leads", "Junlin", "Onion eating contest", "Vinegar shot", "Jeff bezos death stare", "Soylent", "Ragequit", "Sad boi hours", "too many bugs", "infinite loop", "segmentation fault", "non-agile practices", "yeeted"]
    
    var names : [String] = ["Erich", "Casper"]
    
    @State var deaths : [Int] = [69, 69]
    @State var options : [Option] = []
    @State var randInt = 0
    @State var decision = 0
    var body: some View {
        VStack {
            Spacer()
            HStack(spacing: 80) {
                Button(action: {
                    self.decision = 0
                }) {
                    Text("Kill Erich")
                }
                Button(action: {
                    self.decision = 1
                }) {
                    Text("Kill Casper")
                }
            }
            Spacer()
            Text("Number of " + String(names[decision]) + " dead: " + String(deaths[decision]))
            Spacer(minLength: CGFloat(20.0))
            Text(String("Cause of Death:"))
            Text(howHeDied[self.randInt])
            Spacer(minLength: CGFloat(20.0))
            Button(action: {
                self.randInt = self.nonRepeatRandom()
                self.deaths[self.decision] += 1
                }) {
                Text(String("Another One of ") + String(names[decision]))
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

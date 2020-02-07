//
//  ContentView.swift
//  clicker
//
//  Created by Erich Shan on 2/5/20.
//  Copyright © 2020 Erich Shan. All rights reserved.
//

import SwiftUI

class Casper : Identifiable {
    
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
        }while(newVal == self.randInt)
        return newVal
    }
    var howHeDied : [String] = ["On the toilet", "EECS OH queue", "Eaten by core leads", "Junlin", "Onion eating contest", "Vinegar shot", "Jeff bezos death stare", "Soylent", "Ragequit", "Sad boi hours", "too many bugs", "infinite loop", "segmentation fault", "non-agile practices", "yeeted"]
    
    @State var caspers : [Casper] = []
    @State var label = 69
    @State var randInt = 0
    var body: some View {
        VStack{
            Spacer()
            Text("Number of Caspers dead:" + String(label))
            Spacer(minLength: CGFloat(20.0))
            Text(String("Cause of death:"))
            Text(howHeDied[self.randInt])
            Spacer(minLength: CGFloat(20.0))
            Button(action: {
                self.randInt = self.nonRepeatRandom()
                self.label+=1 }) {
                Text(String("kill a casper"))
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

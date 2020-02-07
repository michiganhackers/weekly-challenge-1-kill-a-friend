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
    var howHeDied : [String] = ["On the toilet", "EECS OH queue", "Eaten by core leads", "Junlin", "Onion eating contest", "Vinegar shot", "Jeff bezos death stare", "Soylent", "Ragequit", "Sad boi hours"]
    
    @State var caspers : [Casper] = []
    @State var label = 69
    var body: some View {
        VStack{
            Spacer()
            Text("Number of Caspers dead:" + String(label))
            Spacer(minLength: CGFloat(20.0))
            Text(String("Cause of death:"))
            Text(howHeDied[Int.random(in: 1..<howHeDied.count)])
            Spacer(minLength: CGFloat(20.0))
            Button(action: {
                self.caspers.append(Casper(id: self.label))
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

//
//  WelcomeView.swift
//  Tabs
//
//  Created by MAESTRO603 on 03/11/25.
//

import SwiftUI

import SwiftUI

struct WelcomeView: View {
    @AppStorage("myName") var savedName: String = ""
    @AppStorage("myAge") var savedAge: Int = 0
    @State var name: String = ""
    @State var ageText: String = ""
    var body: some View {
        VStack{
            TextField("Dime tu nombre:", text: $name)
                .padding()
            
            TextField("Ingresas tu edad:", text: $ageText)
                .padding()
                
            Button(action: {
                savedName = self.name
                if let edad = Int(self.ageText){
                    savedAge = edad
                }
               
            }, label: {
                Text("Guardar").padding().background(Color.green)
            }).padding()
            
            
            Text("Bienvenido \(savedName) con edad \(savedAge)")
        }
    }
}


#Preview {
    WelcomeView()
}

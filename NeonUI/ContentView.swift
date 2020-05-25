//
//  ContentView.swift
//  NeonUI
//
//  Created by Otavio de Souza on 5/24/20.
//  Copyright © 2020 Otavio de Souza. All rights reserved.
//

import SwiftUI

struct Section: View {
    
    @Binding var label: String
    @Binding var value: String
    
    var body: some View {
        HStack(alignment: .center ,content:{
            Text(label).foregroundColor(Color.white).fontWeight(.bold)
            Spacer()
            Text(value).foregroundColor(Color.white)
        })
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 120)
            .padding(.horizontal, 20)
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .center, content: {
                Section(label: .constant("meu neon"), value: .constant(".")).background(Color(red: 0 / 255, green: 70 / 255, blue: 160 / 255))
                Section(label: .constant("saldo"), value: .constant("RS 4.203,00")).background(Color(red: 1 / 255, green: 165 / 255, blue: 240 / 255))
                Section(label: .constant("crédito"), value: .constant(".")).background(Color(red: 0 / 255, green: 115 / 255, blue: 205 / 255))
                Section(label: .constant("investimentos"),value:  .constant(".")).background(Color(red: 0 / 255, green: 215 / 255, blue: 215 / 255))
                Section(label: .constant("indicações"), value: .constant(".")).background(Color(red: 0 / 255, green: 130 / 255, blue: 130 / 255))
                Section(label: .constant("cartões"), value: .constant(".")).background(Color(red: 0 / 255, green: 160 / 255, blue: 160 / 255))
                Section(label: .constant("transferências"),value:  .constant(".")).background(Color(red: 0 / 255, green: 215 / 255, blue: 215 / 255))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

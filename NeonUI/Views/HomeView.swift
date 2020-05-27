//
//  ContentView.swift
//  NeonUI
//
//  Created by Otavio de Souza on 5/24/20.
//  Copyright © 2020 Otavio de Souza. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 0){
                CustomSection().background(Color("Color1"))

                Section(showValue: .constant(true),label: .constant("saldo"), value: .constant("RS 4.203,00"), icon: .constant("hide")).background(Color("Color2"))
                
                Section(showValue: .constant(false),label: .constant("crédito"), value: .constant("."),  icon: .constant("credit-card")).background(Color("Color3"))
                
                Section(showValue: .constant(true),label: .constant("investimentos"),value:  .constant("RS 2.554,00"),  icon: .constant("hide")).background(Color("Color4"))
                
                Section(showValue: .constant(false),label: .constant("indicações"), value: .constant("."),  icon: .constant("user-group")).background(Color("Color5"))
                
                Section(showValue: .constant(false),label: .constant("cartões"), value: .constant("."),  icon: .constant("card-check")).background(Color("Color6"))
                
                Section(showValue: .constant(false),label: .constant("transferências"),value: .constant("."),  icon: .constant("money")).background(Color("Color7"))
                
                 Section(showValue: .constant(false),label: .constant("pagamentos"),value: .constant("."),  icon: .constant("barcode")).background(Color("Color4"))
                
                 Section(showValue: .constant(false),label: .constant("recargas"),value: .constant("."),  icon: .constant("phone")).background(Color("Color2"))
                
                 Section(showValue: .constant(false),label: .constant("depositos"),value: .constant("."),  icon: .constant("cost")).background(Color("Color1"))
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

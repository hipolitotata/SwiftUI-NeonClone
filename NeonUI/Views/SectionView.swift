//
//  ContentView.swift
//  NeonUI
//
//  Created by Otavio de Souza on 5/24/20.
//  Copyright © 2020 Otavio de Souza. All rights reserved.
//

import SwiftUI

struct Section: View {
    
    @State var isLabel: Bool = true
    
    @Binding var showValue: Bool
    @Binding var label: String
    @Binding var value: String
    @Binding var icon: String
    
    var body: some View {
        HStack(alignment: .center){
            Text(label).foregroundColor(Color.white).fontWeight(.bold)
            Spacer()
            
            if self.showValue && isLabel == true { Text(value).fontWeight(.bold).foregroundColor(Color.white).gesture( TapGesture()
                .onEnded { _ in
                    if self.showValue{
                        self.isLabel = false
                    }
            }) }
                
            else { Image(icon)
                .resizable()
                .scaledToFit().frame(width: 30, height: 30).gesture( TapGesture()
                    .onEnded { _ in
                        if self.showValue{
                            self.isLabel = true
                        }
                })}
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 120)
            .padding(.horizontal, 20)
    }
}

struct SectionView_Previews: PreviewProvider {
    
    static var previews: some View {
        Section(showValue: .constant(false),
                label: .constant("meu neon"), value: .constant("."), icon: .constant("hide")).background(Color("Color1"))
    }
}

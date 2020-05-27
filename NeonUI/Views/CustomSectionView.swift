//
//  ContentView.swift
//  NeonUI
//
//  Created by Otavio de Souza on 5/24/20.
//  Copyright © 2020 Otavio de Souza. All rights reserved.
//

import SwiftUI

struct CustomSection: View {
    
    var body: some View {
        HStack(alignment: .center){
            
            HStack{
                HStack{
                    Text("meu neon").foregroundColor(Color.white).fontWeight(.bold)
                }
                
                HStack{
                    Text("01/10").foregroundColor(Color.green).font(.system(size: 14)).fontWeight(.bold)
                }
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.green, lineWidth: 1)
                )
                
                HStack{
                    Text("")
                }
                .frame(width: 12, height: 12)
                .background(Color.yellow)
                .cornerRadius(30)
                .padding(10)
                
            }
            
            Spacer()
            
            VStack{
                Image("profile")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .scaledToFit()
                    .cornerRadius(30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.white, lineWidth: 2)
                    )

            }
            .padding(7)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color("Color4"), lineWidth: 3)
            )
            .shadow(radius: 5)
            .frame(width: 50, height: 50)
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 120)
        .padding(EdgeInsets(top: 35, leading: 20, bottom: 0, trailing: 20))
    }
}

struct CustomSection_Previews: PreviewProvider {
    
    static var previews: some View {
        CustomSection().background(Color("Color1"))
    }
}

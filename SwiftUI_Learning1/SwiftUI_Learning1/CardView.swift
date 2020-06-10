//
//  CardView.swift
//  SwiftUI_Learning1
//
//  Created by Sanjeev Pant on 10/06/20.
//  Copyright © 2020 Sanjeev Pant. All rights reserved.
//

import SwiftUI


//MARK: Component view used for designing purpose
struct CardView: View {
    var cardData:CardDataModel
    var body: some View {
        ZStack{
            Image.init(cardData.image).offset( y: 25.0)
            VStack{
                Text(cardData.cardName)
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
            }.offset(y:-210) // No frame with x and y , use offset to move up and down component
                
            //Button Created with text, image and with an action
            Button(action:({
                debugPrint("You have clicked")
            }) , label: {
                HStack{
                    Text("Click Me!!!")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black)
                    Image(systemName: "arrow.right.square")
                    .accentColor(Color("SP_Yellow"))
                }.padding(.horizontal,25.0)
                .padding(.vertical,5.0)
                .background(Color("SP_Green"))
                .clipShape(Capsule())
            }).offset(y:-120.0)
         
            Text("Follow me in TikTok")
            .frame(width:490, height: 40)
            .foregroundColor(Color.black)
            .background(Color.white)
            .offset(y:240) // order matters here for offset , if written before will have unwanted effects
            .rotationEffect(Angle.init(degrees: 20.0))  // difficult with constraint

        }
        .frame(width: 335.0, height:550.0)
        .background(cardData.color)
        .cornerRadius(20.0)
    }
}

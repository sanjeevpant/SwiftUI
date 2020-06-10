//
//  ContentView.swift
//  SwiftUI_Learning1
//
//  Created by Sanjeev Pant on 10/06/20.
//  Copyright © 2020 Sanjeev Pant. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var cardData:[CardDataModel]
    var body: some View {
        ScrollView{
            VStack{
                Text("Card Display")
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                
                            
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(alignment:.center , spacing: 20.0){
                        ForEach(cardData) { item in
                            CardView.init(cardData: item)
                        }
                    }.offset(x:20)
                }
            }
            
            
            VStack{
               Text("Card Display2")
                   .font(.title)
                   .fontWeight(.heavy)
                   .multilineTextAlignment(.center)
               
                           
               ScrollView(.horizontal){
                  HStack(alignment:.center , spacing: 20.0){
                     ForEach(cardData) { item in
                          CardView.init(cardData: item)
                      }
                  }.offset(x:20)
              }
           }
            
            VStack{
                Text("Card Display3")
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                
                            
                 ScrollView(.horizontal){
                   HStack(alignment:.center , spacing: 20.0){
                      ForEach(cardData) { item in
                           CardView.init(cardData: item)
                       }
                   }.offset(x:20)
               }
            }
        }.padding([.top , .bottom])
    }
}

//MARK: Preview Part using protocol PreviewProvider

struct UIPreview: PreviewProvider {
    static var previews: some View {
        ContentView(cardData: cardList).previewLayout(.sizeThatFits)
    }
}

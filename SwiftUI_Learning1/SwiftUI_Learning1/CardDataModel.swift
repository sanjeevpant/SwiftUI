//
//  CardDataModel.swift
//  SwiftUI_Learning1
//
//  Created by Sanjeev Pant on 10/06/20.
//  Copyright © 2020 Sanjeev Pant. All rights reserved.
//

import SwiftUI

struct CardDataModel:Identifiable {
    var id = UUID()
    var cardName:String
    var image:String
    var color:Color
}


let cardList : [CardDataModel] = [
    CardDataModel.init(cardName: "Good Will", image: "img-1", color:Color("SP_Red")),
    CardDataModel.init(cardName: "Good Health", image: "img-2", color:Color("SP_Green")),
    CardDataModel.init(cardName: "Good Wealth", image: "img-3", color:Color("SP_Yellow")),
    CardDataModel.init(cardName: "Good WellBeing", image: "img-4", color:Color("SP_Blue"))
]

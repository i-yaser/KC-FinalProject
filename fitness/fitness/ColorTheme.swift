//
//  ColorThem.swift
//  fitness
//
//  Created by Yasr Alajmi on 26/08/2022.
//

import SwiftUI


extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme{
    let Background = Color("Background")
    let coloA = Color("colorA")
    let coloB = Color("colorB")
    let Colorf = Color("Colorf")
    let Colorjj = Color("Colorjj")
    let Primary = Color("Primary")
    let PrimaryOn = Color("PrimaryOn")
    let PrimaryContainer = Color("PrimaryContainer")
    let OnPrimaryContainer = Color("OnPrimaryContainer")
}


//Color 👆🏻 //


struct AdModel: Identifiable{
    let id = UUID()
    var PhotoAd: String
    

}

var AdAdAd = [ AdModel(PhotoAd: "FoodAd"), AdModel(PhotoAd: "Dr.Ad"), AdModel(PhotoAd: "GYM.Ad")

]

//Struct Ad👆🏻 //


struct homeModel: Identifiable{
    let id = UUID()
    var photo1: String
    var photo2: String
    
}

var HomePhoto = [ homeModel(photo1: "KETO", photo2: "BMR")

]

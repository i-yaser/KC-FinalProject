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

//Struct undr ad👆🏻 //
struct HealthyModel: Identifiable{
    let id = UUID()
    var category1: String
//    var category2: String
    
}

var HealthyPhoto0 = [HealthyModel(category1: "FoodAd")]
var HealthyPhoto1 = [HealthyModel(category1: "GYM.Ad")]
var HealthyPhoto2 = [HealthyModel(category1: "Dr.Ad")]

//Struct Healthy Tab👆🏻//

struct detailsNadi: Identifiable{
    let id = UUID()
    var Name: String
    var logo: String
    var Prices: String
    var ourPhotoNadi: [String]
    var Place: String
    
}

var ourGYM = [
    detailsNadi(Name: "OXYGEN GYMS | اوكسجين جيم", logo: "OXYGEN GYMS | اوكسجين جيم", Prices: "8K.D/1day \n 50K.D/1m \n 140K.D/3m \n 240K.D/6m \n 440K.D/1y", ourPhotoNadi: ["O2-1", "O2-2", "O2-3", "O2-4", "O2-5"], Place: "العديليه - المنقف \n الجابريه - صباح السالم")
,
    detailsNadi(Name: "Platinum Health Club", logo: "Platinum Health Club", Prices: "50K.D/m", ourPhotoNadi: ["P-1","P-2","P-3","P-4","P-5","P-6","P-7",], Place: "كيفان - صباح السالم \n المهبولة - شرق \n الخيران")
,
    
]




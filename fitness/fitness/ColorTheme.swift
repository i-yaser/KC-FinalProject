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
    let Bg = Color("Bg")
    let OnBg = Color("OnBg")
    let OnBg2 = Color("OnBg2")
    let coloA = Color("colorA")
    let coloB = Color("colorB")
    let Colorf = Color("Colorf")
    let Colorjj = Color("Colorjj")
    //Color App👇🏻
    let Primary = Color("Primary")
    let PrimaryOn = Color("PrimaryOn")
    let PrimaryContainer = Color("PrimaryContainer")
    let OnPrimaryContainer = Color("OnPrimaryContainer")
    //Color App👆🏻
    let For40 = Color("For40")
    let iColor = Color("iColor")
//Color line👇🏻
    let Outline = Color("Outline")
    let Outline2 = Color("Outline2")
    let Outline3 = Color("Outline3")
    //Color line👆🏻
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

//ourGEM ///

struct DaitLOL: Identifiable {
    let id = UUID()
    var photo1: String
    var photo2: String
    var photo3: String
    var photo4: String
    var photo5: String
    var photo6: String
    var photo7: String
    var photo8: String
    var photo9: String
    var photo10: String
    var photo11: String
    var photo12: String
    var photo13: String
    var photo14: String

}

var ourDait = [DaitLOL(photo1: "photo2500", photo2: "photo2400", photo3: "photo2300", photo4: "photo2200", photo5: "photo2100", photo6: "photo2000", photo7: "photo1900", photo8: "photo1800", photo9: "photo1700", photo10: "photo1600", photo11: "photo1500", photo12: "photo1400", photo13: "photo1300", photo14: "photo1200")]

//Dait no ?//

//struct HealehyDait: Identifiable{
//    let id = UUID()
//    var PhotoDait: String
////    var NumDait: String
////    var F6or204040: String
////    var F6or502030: String
////    var F6or305020: String
//
//
//}
//
//var ForDait = [
//HealehyDait(PhotoDait: "photo2500"),
//HealehyDait(PhotoDait: "photo2400"),
//HealehyDait(PhotoDait: "photo2300"),
//HealehyDait(PhotoDait: "photo2400"),
//HealehyDait(PhotoDait: "photo2100"),
//HealehyDait(PhotoDait: "photo2000"),
//HealehyDait(PhotoDait: "photo1900"),
//HealehyDait(PhotoDait: "photo1800"),
//HealehyDait(PhotoDait: "photo1700"),
//HealehyDait(PhotoDait: "photo1600"),
//HealehyDait(PhotoDait: "photo1500"),
//HealehyDait(PhotoDait: "photo1400"),
//HealehyDait(PhotoDait: "photo1300"),
//HealehyDait(PhotoDait: "photo1200"),
// ]


struct DaitListModel: Identifiable{
    let id = UUID()
    var PhotoDait: String
        var F6or204040: String


}

var OurInList = [
    DaitListModel(PhotoDait: "calories2500"
                  , F6or204040: "2 بيض مسلوق. - كوب واحد من الحليب. \n كوب من عصير التو الازرق - طبق صغير من الشوفان."
            ),
    DaitListModel(PhotoDait: "calories2400"
                  , F6or204040: "2 بيض مسلوق. - كوب واحد من الحليب. \n كوب من عصير التو الازرق - طبق صغير من الشوفان."
                 )
]

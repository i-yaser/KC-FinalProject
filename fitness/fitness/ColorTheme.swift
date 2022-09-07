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
    let iiColor = Color("iiColor")
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
    var msb7: String
    var Place: String
    var l97: String
    var l56a: String
    
}

var ourGYM = [
    detailsNadi(Name: "OXYGEN GYMS | اوكسجين جيم", logo: "OXYGEN GYMS | اوكسجين جيم", Prices: "8K.D/1day \n 50K.D/1m \n 140K.D/3m \n 240K.D/6m \n 440K.D/1y", ourPhotoNadi: ["O2-1", "O2-2", "O2-3", "O2-4", "O2-5"], msb7: "مسبح + رجالي + نسائي:", Place: "العديليه - المنقف \n الجابريه - صباح السالم", l97: "checkmark.square.fill", l56a: "xmark.square.fill")
,
    detailsNadi(Name: "Platinum Health Club", logo: "Platinum Health Club", Prices: "7K.D/1d \n 20K.D/1w \n 40K.D/1m \n 75K.D/2m \n 200K.D/6m+1m مجاناً \n 390K.D/1y+2m مجاناً", ourPhotoNadi: ["P-1","P-2","P-3","P-4","P-5","P-6","P-7",],
                msb7: "مسبح + رجالي + نسائي:", Place: "كيفان - صباح السالم \n المهبولة - شرق \n الخيران", l97: "checkmark.square.fill", l56a: "xmark.square.fill")
    ,
    detailsNadi(Name: "Flare فلير", logo: "Flare فلير", Prices: "10K.D/1Day \n 85K.D/1month \n لتفاصيل اكثر توجه لموقع النادي", ourPhotoNadi: ["F-1","F-2","F-3","F-4","F-5","F-6","F-7","F-8"], msb7: "مسبح + رجالي + نسائي:", Place: "الجابرية رجال+نساء \n شويخ رجال+نساء \n شرق رجال+نساء", l97: "checkmark.square.fill", l56a: "xmark.square.fill"), detailsNadi(Name: "SPARK ATHLETIC CENTER - مركز سبارك الرياضي", logo: "SPARK ATHLETIC CENTER - مركز سبارك الرياضي", Prices: "لمعرفة الاسعار \n يرجا التواصل على الواتس اب : 69304771", ourPhotoNadi: ["SP-1", "SP-2","SP-3", "SP-4","SP-5"], msb7: "مسبح + رجالي + نسائي:", Place: "شرق - الشويخ \n الافنيوز - الجابريه", l97: "checkmark.square.fill", l56a: ""),
    detailsNadi(Name: "GLAMOR GYM FOR LADIES -  معهد جلامور  لنساء", logo: "GLAMOR GYM FOR LADIES -  معهد جلامور  لنساء", Prices: "50-60K.D/m", ourPhotoNadi: ["G-1","G-2","G-3","G-4","G-5","G-6"], msb7: "نسائي + مسبح", Place: "الرقعي", l97: "checkmark.square.fill", l56a: ""),
    detailsNadi(Name: "GOLD’S GYM 🇰🇼 جولدز جيم", logo: "GOLD’S GYM 🇰🇼 جولدز جيم", Prices: "160K.D/3m \n 250K.D/6m \n 350K.D/1y", ourPhotoNadi: ["GG-1", "GG_2","GG-3", "GG-4"], msb7: "مسبح + رجالي + نسائي:", Place: "السالمية", l97: "checkmark.square.fill", l56a: ""),
    detailsNadi(Name: "معهد ديفا الصحي للسيدات", logo: "معهد ديفا الصحي للسيدات", Prices: "", ourPhotoNadi: [""], msb7: "", Place: "", l97: "", l56a: ""),
    detailsNadi(Name: "The Champion Health Club - نادي ومعهد ذي تشامبين الصحي", logo: "The Champion Health Club - نادي ومعهد ذي تشامبين الصحي", Prices: "", ourPhotoNadi: [""], msb7: "", Place: "", l97: "", l56a: ""),
    detailsNadi(Name: "Pilates & More Women's Gym - بيلاتس أند مور ", logo: "Pilates & More Women's Gym - بيلاتس أند مور ", Prices: "", ourPhotoNadi: [""], msb7: "", Place: "", l97: "", l56a: "")
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

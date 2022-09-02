//
//  ContentView.swift
//  fitness
//
//  Created by Yasr Alajmi on 23/08/2022.
//

import SwiftUI


struct ContentView: View {
    
    @State var selesctedIndex = 1

    var IconTabBarView = ["house","bolt.heart", "location.circle", "person.crop.circle"]
    var body: some View {
        
        ZStack {
            
            VStack{
                                    switch selesctedIndex{
                    case 0:
                        NavigationView{
                            AppView()
                        }
                    case 1:
                        NavigationView{
                            HealthyView()
                        }
                    case 2:
                        NavigationView{
                            NadiView()
                            
                        }
                    default:
                        NavigationView{
                            ProfileView()
                            
                        }
                    }
                
                    
                
                
                Spacer()
                HStack {
                    ForEach(0..<4) { num in
                        Button {
                           selesctedIndex = num
                        } label: {
                            Spacer()
                            
                            
                            if num == 1 {
                                Image(systemName: IconTabBarView[num])
                                    .font(.system(size: 34, weight: .bold))
                                    .foregroundColor(.red)
                            }
                            else if num == 2 {
                                Image(systemName: IconTabBarView[num])
                                    .font(.system(size: 34, weight: .bold))
                                    .foregroundColor(.red)

                            }
                            else{
                                Image(systemName: IconTabBarView[num])
                                    .font(.system(size: 24, weight: .bold))
                                    .foregroundColor(.blue)
                                    .foregroundColor(selesctedIndex == num ? Color(.black) : .init(white: 0.8))

                            }
                            Spacer()
                        }

                    }
                }
//                .frame(width: 404, height: 40)
//                .background(Color.theme.OnPrimaryContainer)
//
//                .cornerRadius(10)
            }
        }

        
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 11")
    }
}

//ZStack {
//
//
//    TabView{
//
//
//         AppView()
//         .tabItem {
//        Image(systemName: "house")
//        Text("Home")
//                                   }
//        HealthyView()
//        .tabItem{
//         Image(systemName: "bolt.heart")
//          Text("Healthy")
//                                   }
//       NadiView()
//            .tabItem {
//                Image(systemName: "location.circle.fill")
//                Text("location")
//            }
//         ProfileView()
//          .tabItem {
//         Image(systemName: "person.crop.circle")
//          Text("Profile")
//                                   }
//
//    }
//}

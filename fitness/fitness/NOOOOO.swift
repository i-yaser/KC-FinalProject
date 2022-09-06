//
//  ContentView.swift
//  fitness
//
//  Created by Yasr Alajmi on 23/08/2022.
//

import SwiftUI


struct Nooo: View {
    
    @State var selesctedIndex = 1

    var IconTabBarView = ["house","bolt.heart","cart", "location.circle", "person.crop.circle"]
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
                                        VStack{
                                            Text("fjf")
                                        }
                    case 3:
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
                    ForEach(0..<5) { num in
                        Button {
                           selesctedIndex = num
                        } label: {
                            Spacer()
                            
//                            "\(image)\(selectedTab == image ? ".fill" : "")")
//                            "\(IconTabBarView)\(selesctedIndex = IconTabBarView ? ".fill" : "")")

                            if num == 1 {
                                Image(systemName: IconTabBarView[num])                    .font(.system(size: 34, weight: .bold))
                                    .foregroundColor(.red)
                            }
                            else if num == 2 {
                                Image(systemName: IconTabBarView[num])
                                    .font(.system(size: 40, weight: .bold))
                                    .foregroundColor(.white)
                                    .background(.blue)
                                    .cornerRadius(14)
                            }

                            else if num == 3 {
                                Image(systemName: IconTabBarView[num])
                                    .font(.system(size: 34, weight: .bold))
                                    .foregroundColor(.red)
                                    

                            }
                            else{
                                Image(systemName: IconTabBarView[num])
                                    .font(.system(size: 24, weight: .bold))
                                    .foregroundColor(.blue)
                                    .foregroundColor(selesctedIndex == num ? Color(.black) : .init(white: 0.8))
//                                    .offset(y: selesctedIndex == IconTabBarView ? -10 : 0)
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
struct Nooo_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            .previewDevice("iPhone 11")
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 11")
        }
    }
}


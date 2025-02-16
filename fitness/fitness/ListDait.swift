//
//  ListDait.swift
//  fitness
//
//  Created by Yasr Alajmi on 01/09/2022.
//

import SwiftUI

struct ListDait: View {
    var body: some View {
    
   
            ZStack{
                    Color.theme.OnBg .ignoresSafeArea()
                                                List {
                                                    ForEach(OurInList){ For in
                                                        NavigationLink(destination: {
                                                            HealthyNotView(ourList: For)
                                                        }, label: {
                                                            List10(For: For.PhotoDait)
                                                                .opacity(100)
                                                        })                                                        
                                                        
                                }                                }
                    
            .navigationBarTitle("انظمة غذائية")
            .navigationBarTitleDisplayMode(.inline)

            .navigationBarItems(leading: Image(systemName: "house")
                                    
                                    , trailing:
                                    Image(systemName:"gear")
            )
            }
        
            
    }
}




//ListDait
struct ListDait_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListDait()
                .preferredColorScheme(.light)
            ListDait()
                .preferredColorScheme(.dark)
        }
    }
}



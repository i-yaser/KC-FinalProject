//
//  ListDait.swift
//  fitness
//
//  Created by Yasr Alajmi on 01/09/2022.
//

import SwiftUI

struct ListDait: View {
    var body: some View {
    
        NavigationView {
            ZStack{
                    Color.theme.Primary .ignoresSafeArea()
                                                List {
                                                    ForEach(OurInList){ For in
                                                        NavigationLink(destination: {
                                                            HealthyView0(ourList: For)
                                                        }, label: {
                                                            List10(For: For.PhotoDait)
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
}




//ListDait
struct ListDait_Previews: PreviewProvider {
    static var previews: some View {
        ListDait()
    }
}



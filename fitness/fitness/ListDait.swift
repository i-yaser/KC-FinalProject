//
//  ListDait.swift
//  fitness
//
//  Created by Yasr Alajmi on 01/09/2022.
//

import SwiftUI

struct ListDait: View {
    var body: some View {
    NavigationView{
            ZStack{
                Color.theme.Primary .ignoresSafeArea()
                
                VStack {
                    ScrollView{
                        
                        VStack{
                                ForEach(ourDait){ iin in
                                    
                                    VStack{
                                        HStack{
                                            
                                            Image(iin.photo1)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo2)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }

                                        HStack{
                                            
                                            Image(iin.photo3)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo4)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo5)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                    }
                                    VStack{
                                        HStack{
                                            
                                            Image(iin.photo6)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo7)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo8)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo9)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo10)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo11)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo12)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                    }
                                        HStack{
                                            
                                            Image(iin.photo13)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo14)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }


                                    
                                    
                                
                                
                            }
                            
                            
                        }
                        

                        
                    }.frame(width: 420, height: 800)
                }
            }
        }
    }
}

struct ListDait_Previews: PreviewProvider {
    static var previews: some View {
        ListDait()
    }
}

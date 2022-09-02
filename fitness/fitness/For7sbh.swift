//
//  ForSingUp.swift
//  fitness
//
//  Created by Yasr Alajmi on 02/09/2022.
//

import SwiftUI


struct ForSingUp: View {
    @State var tol = ""
    @State var wzin = ""
    @State var age = ""
    @State var MMM = 0.0

    var body: some View {
        ScrollView(.horizontal) {
            HStack{
                
                Button {
                    MMM = BMR(Toool: Double(tol) ?? 0.0 / 100, Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0)*1.900
                    
                } label: {
                    Text("شديد النشاط")
                        .frame(width: 100, height: 40)
                        .background(Color.theme.Colorf)
                        .cornerRadius(30)
                        .padding()
                    
                    
                    
                } //5
                
                Button {
                    MMM = BMR(Toool: Double(tol) ?? 0.0, Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0 )*1.725
                    
                } label: {
                    Text("نشيط")
                        .frame(width: 100, height: 40)
                        .background(Color.theme.Colorf)
                        .cornerRadius(30)
                        .padding()
                    
                        .cornerRadius(30)
                    
                } //4
                
                
                Button {
                    MMM = BMR(Toool: Double(tol) ?? 0.0, Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0 )*1.550
                    
                } label: {
                    Text("متوسط النّشاط")
                        .frame(width: 100, height: 40)
                        .background(Color.theme.Colorf)
                        .cornerRadius(30)
                        .padding()
                    
                        .cornerRadius(30)
                    
                    
                } //3
                
                Button {
                    MMM = BMR(Toool: Double(tol) ?? 0.0 , Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0 )*1.375
                    
                } label: {
                    Text("خفيف النشاط")
                        .frame(width: 100, height: 40)
                        .background(Color.theme.Colorf)
                        .cornerRadius(30)
                        .padding()
                    
                        .cornerRadius(30)
                    
                    
                }// 2
                
                
                
                Button {
                    MMM = BMR(Toool: Double(tol)  ?? 0.0, Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0 )*1.250
                    
                } label: {
                    Text(" خامل")
                        .frame(width: 100, height: 40)
                        .background(Color.theme.Colorf)
                        .cornerRadius(30)
                        .padding()
                    
                        .cornerRadius(30)
                    
                    
                } //1
                
                
                
                
                
                
                
                
                
                
                
                
            } .background(Color.theme.Colorjj) .cornerRadius(20)
            
        }
    }
    func BMR(Toool: Double, Wzzen: Double, Age10: Double) -> Double{
        return (66.5) + (13.75 * Wzzen) + (5.003 * Toool) - (6.75 * Age10)
    }
        

}
struct ForSingUp_Previews: PreviewProvider {
    static var previews: some View {
        ForSingUp()
    }
}

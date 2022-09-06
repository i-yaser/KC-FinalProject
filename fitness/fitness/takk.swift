//
//  takk.swift
//  fitness
//
//  Created by Yasr Alajmi on 06/09/2022.
//

import SwiftUI

struct takk: View {
    var body: some View {
        ZStack{
            Color.theme.Primary .ignoresSafeArea()
            
            Ellipse()
                .scale(1.1)
                .foregroundColor(Color.theme.PrimaryOn .opacity(0.15))
                
            Ellipse()
                .scale(0.98)
                .foregroundColor(Color.theme.PrimaryContainer)

            VStack{
                
                Text("\n التغذية: هي تناول الطعام لتلبية احتياجات الجسم الغذائية. \n والأغذية الكافية ضرورية للحفاظ على الحياة. والتغذية الجيدة مهمة للصحة الجيدة.\n  ويمكن لسوء التغذية أن يؤدي إلى \n تدهور المناعة، والتعرض للأمراض،\n واختلال النمو البدني والعقلي، وتدهور إنتاجية الفرد. \n وتؤثر التغذية على عملية النماء في جميع \n مراحل دورة الحياة منذ الحمل حتى الوفاة.")
                    .font(.title3)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct takk_Previews: PreviewProvider {
    static var previews: some View {
        takk()
    }
}

//
//  Ecran3.swift
//  Travelyo
//
//  Created by Apprenant 75 on 06/05/2024.
//

import SwiftUI

struct Ecran3: View {
    @State var nb: Int = 0
    
    var body: some View {
        
        VStack {
            Picker("",selection: $nb) {
                Text("Vol").tag(0)
                Text("Hôtel").tag(1)
            }
            .pickerStyle(.segmented)
            .frame(maxWidth: .infinity)
            .padding()
            
            if nb == 0 {
                Ecran3Vol()
            }
            else {
                Ecran3Hotel()
            }
            
            NavigationLink {
                Ecran4()
            } label: {
                Text("Valider")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color("TravelyoBlue"),in: RoundedRectangle(cornerRadius: 16,style: .continuous))
                    .foregroundColor(.white)
            }

            
        }
        .padding()
    }
}

#Preview {
    Ecran3()
}

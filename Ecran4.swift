//
//  SwiftUIView Ecran4.swift
//  MonPremierProjet
//
//  Created by Stéphanie on 24/04/2024.
//

import SwiftUI

struct Ecran4: View {
    
    // @State private var logIn : String = "Connexion ou Inscription"
    
    
    var body: some View {
        ScrollView {
            VStack{
                Image("Travelyo")
                    .resizable()
                    .frame(width: 400, height: 400, alignment: .top)
                    .cornerRadius(10)
                
                Text("Bénéficiez d'alertes personnalisées")
                
                    .padding()
                
                NavigationLink {
                    SwiftUIView()
                } label: {
                    Text("Continuer avec votre adresse mail")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .font(.system(size:18))
                        .padding()
                        .background(Color("TravelyoBlue"))
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                }
                
                NavigationLink {
                    SwiftUIView()
                } label: {
                    Text("Continuer avec Apple")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .font(.system(size:18))
                        .padding()
                        .background(Color("TravelyoBlue"))
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                }
                .padding()
            }
        }
    }
}


#Preview {
    Ecran4()
}

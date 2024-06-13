//
//  ContentView.swift
//  Travelyo
//
//  Created by Apprenant 75 on 23/04/2024.
//

import SwiftUI

struct Ecran3Vol: View {
    
    @State private var showModal:Bool  = false
    var body: some View {
        
        
        
       List
        {
            ButtonBilletAvion(villeDepart: "Marseille", directOrEscale: "Direct", dureeTrajet: "11H00", villeArriver: "Sydney", logo: "Image", classeVol: "Classe Economique", prix: "1345€")
            
                .listRowSeparator(.hidden); ButtonBilletAvion(villeDepart: "Marseille", directOrEscale: "Direct", dureeTrajet: "11H00", villeArriver: "Sydney", logo: "Image", classeVol: "Classe Economique", prix: "1345€")
            
                .listRowSeparator(.hidden); ButtonBilletAvion(villeDepart: "Marseille", directOrEscale: "Direct", dureeTrajet: "11H00", villeArriver: "Sydney", logo: "Image", classeVol: "Classe Economique", prix: "1345€")
            
                .listRowSeparator(.hidden); ButtonBilletAvion(villeDepart: "Marseille", directOrEscale: "Direct", dureeTrajet: "11H00", villeArriver: "Sydney", logo: "Image", classeVol: "Classe Economique", prix: "1345€")
            
                .listRowSeparator(.hidden); ButtonBilletAvion(villeDepart: "Marseille", directOrEscale: "Direct", dureeTrajet: "11H00", villeArriver: "Sydney", logo: "Image", classeVol: "Classe Economique", prix: "1345€")
            
                .listRowSeparator(.hidden); ButtonBilletAvion(villeDepart: "Marseille", directOrEscale: "Direct", dureeTrajet: "11H00", villeArriver: "Sydney", logo: "Image", classeVol: "Classe Economique", prix: "1345€")
                .listRowSeparator(.hidden)
            
            
        }
        .listStyle(.inset)
    
        
    }
    
    struct ButtonBilletAvion: View {
        var villeDepart:String
        var directOrEscale:String
        var dureeTrajet:String
        var villeArriver:String
        var logo:String
        var classeVol:String
        var prix:String
        
        var body: some View {
            Button(action: {}, label: {
                
                ZStack {
                    Rectangle()
                        .fill(Color("TravelyoGray"))
                        .frame(maxWidth: .infinity)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    VStack(spacing: 10) {
                        HStack {
                            Text(villeDepart)
                                .font(.system(size: 13))
                                .fontWeight(.light)
                                .foregroundStyle(.black)
                                .frame(width :70,height :20)
                            Rectangle()
                                .fill(.black)
                                .frame(width: 50, height :0.3)
                            
                            VStack {
                                Text(directOrEscale)
                                    .font(.system(size: 13))
                                    .fontWeight(.light)
                                    .foregroundStyle(.black)
                                    .frame(width :70 ,height :20)
                                Text(dureeTrajet)
                                    .font(.system(size: 8))
                                    .fontWeight(.thin)
                                    .foregroundStyle(.black)
                            }
                            Rectangle()
                                .fill(.black)
                                .frame(width: 50, height :0.3)
                            
                            Text(villeArriver)
                                .font(.system(size: 13))
                                .fontWeight(.light)
                                .foregroundStyle(.black)
                                .frame(width :70 ,height :20)
                        }
                        
                        Divider()

                        HStack(spacing:50) {
                            Image(systemName: "airplane")
                                .foregroundColor(.travelyoBlue)


                            Text(classeVol)
                                .font(.system(size: 13))
                                .fontWeight(.light)
                                .foregroundStyle(.black)

                            Text(prix)
                                .font(.system(size: 17))
                                .fontWeight(.light)
                                .foregroundStyle(.black)
                        }
                    }
                }
            })
        }
        
    }
}

#Preview {
    Ecran3Vol()
}

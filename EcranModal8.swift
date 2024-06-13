//
//  EcranModal8.swift
//  Exercice1
//
//  Created by Benjamin VINCENT on 07/05/2024.
//

import SwiftUI

struct EcranModal8: View {
    
    var australiePassport: String = """
Il vous reste 5 jours pour obtenir un rendez-vous en mairie et déposer votre dossier de demande de passeport, compte tenu de la date prévue pour votre départ, de la date d'aujourd'hui, de votre département de résidence (83) et des délais moyens actualisés (8 à 10 semaine) selon la préfecture du Var.
"""
    var australieID: String = """
La carte d'identité française n'est pas utile pour se rendre en Australie.
"""
    
    var australieVisa: String = """
Si vous êtes détenteur d'un passport de l'Union européenne vous pouvez faire la demande d'un visa touristique pour l'Australie en ligne et cette démarche est gratuite.
"""
    
    var australieVaccins: String = """
     Il vous reste 36 jours pour vous faire vacciner contre L'Ancéphalite Japonaise. Il vous reste 2 semaines pour faire vacciner votre enfant contre la fièvre jaune.
    """
    
    var australieAssurance: String = """
Il vous reste 63 jours, autrement dit jusqu'à la veille du départ, pour souscrire une assurance voyage en évitant tout délai de carence.
"""
    
    var australieBillets: String = """
Il vous reste 3 jours à attendre avant de profiter des prix (traditionnellement) les plus bas sur les billets d'avion entre Paris et Sydney. Idéalement, il aurait fallu acheter ces billets le 15 octobre 2023 pour les payer au meilleur prix.
"""
    
    var australieHebergement: String = """
Il vous reste 1 jour pour réserver vos hébergements, la meilleure période étant déjà passée. Les prix ne devraient qu'augmenter d'ici à votre départ
"""
    
    @Binding var programmePerso: Bool
    
    var body: some View {
        

            
            ZStack {
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        
                        Button(action: {
                            programmePerso.toggle()
                        }, label: {
                            
                            
                            
                            Image(systemName: "xmark.circle")

                                .padding(. trailing, 35)
                                
                                .font(.system(size: 30, weight: .bold, design: .rounded))
                                .foregroundStyle(.black)
                            
                        })
                        
                        // .padding(.top, 5)
                        
                        Spacer()
                        
                    }
                    .padding(.top, 20)
                    
                }
         
                VStack {
                    
                    Spacer()
                    
                    Text("Mon programme personnalisé")
                        .fontWeight(.bold)
                        .font(.system(size: 32))
                        .multilineTextAlignment(.center)
                        .padding(.top,50)
                    
                    
                    ScrollView {
                    VStack (alignment: .leading) {
                        
                        
                        Text("Passeport")
                            .foregroundStyle(Color("TravelyoBlue"))
                            .multilineTextAlignment(.trailing)
                            .fontWeight(.bold)
                            .font(.system(size:18))
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        Text(australiePassport)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        
                        Text("Carte d'identité")
                            .foregroundStyle(Color("TravelyoBlue"))
                            .multilineTextAlignment(.trailing)
                            .fontWeight(.bold)
                            .font(.system(size:18))
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        Text(australieID)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        
                        Text("Visa(s)")
                            .foregroundStyle(Color("TravelyoBlue"))
                            .multilineTextAlignment(.trailing)
                            .fontWeight(.bold)
                            .font(.system(size:18))
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        Text(australieVisa)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)

                        Text("Vaccin(s)")
                            .foregroundStyle(Color("TravelyoBlue"))
                            .multilineTextAlignment(.trailing)
                            .fontWeight(.bold)
                            .font(.system(size:18))
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        Text(australieVaccins)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        
                        Text("Assurance voyage")
                            .foregroundStyle(Color("TravelyoBlue"))
                            .multilineTextAlignment(.trailing)
                            .fontWeight(.bold)
                            .font(.system(size:18))
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        Text(australieAssurance)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        
                        Text("Billet(s) d'avion")
                            .foregroundStyle(Color("TravelyoBlue"))
                            .multilineTextAlignment(.trailing)
                            .fontWeight(.bold)
                            .font(.system(size:18))
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        Text(australieBillets)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        
                        Text("Hébergement")
                            .foregroundStyle(Color("TravelyoBlue"))
                            .multilineTextAlignment(.trailing)
                            .fontWeight(.bold)
                            .font(.system(size:18))
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        Text(australieHebergement)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        
                        // Spacer()
                        
                    }
                    
                    Spacer()
                    
                }
                
                // .padding(.top, 0)
                
            }
            
        }
        
    }
}

#Preview {
    EcranModal8(programmePerso: .constant(false))
}

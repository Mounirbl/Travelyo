//
//  EcranModal.swift
//  MonPremierProjet
//
//  Created by StéphaniEntreprendre les démarches avant le 17 juin 2024. Consulter le site internet du ministère australien de l"immigration.e on 07/05/2024.
//


import SwiftUI

struct EcranModal: View {
    
    @Binding var infoVoyage: Bool
    var UUID = "12052024"
    var nameSpace = "EUROPSPACESECURE2024"
    var passeport = "Entreprendre les démarches avant le 17 juin 2024. Consulter le site internet du ministère australien de l'immigration"
    var affaires = "Solliciter un visa "
    var vaccination = """
Les vaccins recommandés sont l'Ancéphalite Japonaise . Le schéma vaccinal Schéma vaccinal (à partir de l’âge de 2 mois) : 2 injections espacées de 7 (adulte) à 28 jours. Rappel (adulte) : 12 à 24 mois plus tard.
NB. Un certificat de vaccination contre la fièvre jaune est exigé des voyageurs âgés d’un an et plus en provenance d’un pays où il y a un risque de transmission de la fièvre jaune*, y compris les voyageurs restés plus de 12 heures en transit dans un aéroport de ce pays.
"""
    var attentat = """
    Vigilance renforcée recommandée à l'ensemble de nos ressortissants résidant ou de passage en Australie. Pour les informations relatives aux risques encourus et les recommandations associées, veuillez consulter le site Internet de France Diplomatie:
    En cas, de problème, contacter l'ambassade de France en Australie.
    """
    
    
    
    
    
    
    
    
    var body: some View {
        
        
        VStack {
            ZStack {
                
                Spacer(minLength: 100)
                
                ScrollView {
                    VStack
                    {
                        HStack{
                            Spacer()
                            
                            Button(action:{infoVoyage.toggle()}, label:{Image(systemName: "xmark.circle")
                                     .font(.system(size: 30, weight: .bold, design: .rounded))
                                    .foregroundStyle(.black)
                                //                            .offset(CGSize(width: 150, height: 10.0))
                            })
                            //                    Spacer(minLength: 150)
                        }
                    }
                    
                    Text("AUSTRALIE")
                        .fontWeight(.bold)
                        .font(.system(size: 32))
                        .foregroundStyle(.black)
                        .foregroundStyle(.travelyoBlue)
                    
                    
                    Spacer(minLength: 50)
                    VStack(alignment: .leading) {
                        Text("Passeport")
                            .multilineTextAlignment(.leading)
                            .fontWeight(.bold)
                            .font(.system(size:18))
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                        //                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                            .foregroundStyle(.travelyoBlue)
                        
                        Text(passeport)
                        
                        Text("")
                        
                        Text("Voyageurs d'affaires")
                            .multilineTextAlignment(.leading)
                            .fontWeight(.bold)
                            .font(.system(size:18))
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .foregroundStyle(.travelyoBlue)      .padding(.trailing, 30)
                        Text(affaires)
                        Text("Vaccination")
                            .multilineTextAlignment(.leading)
                            .fontWeight(.bold)
                            .font(.system(size:18))
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .padding(.trailing, 30)
                            .foregroundStyle(.travelyoBlue)
                        Text("""
Les vaccins recommandés sont l'Ancéphalite Japonaise . Le schéma vaccinal (à partir de l’âge de 2 mois) : 2 injections espacées de 7 à 28 jours concernant les adultes . Rappel  : 12 à 24 mois plus tard. NB. Un certificat de vaccination contre la fièvre jaune est exigé des voyageurs âgés d’un an et plus en provenance d’un pays où il y a un risque de transmission de la fièvre jaune*, y compris les voyageurs restés plus de 12 heures en transit dans un aéroport de ce pays.
""")
                        Text("Vigilance Attentat")
                            .multilineTextAlignment(.leading)
                            .fontWeight(.bold)
                            .font(.system(size:18))
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .padding(.trailing, 30)
                            .foregroundStyle(.travelyoBlue)
                        Text(attentat)
                        
                        
                    }
                }
            }
            .frame(width: 350)
            
            Spacer()
            
            Link("Diplomatie.Gouv", destination: URL(string: "https://www.diplomatie.gouv.fr/fr/conseils-aux-voyageurs/conseils-par-pays-destination/")!)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
            Link("Ministère Australien de l'immigration", destination: URL(string: "https://immi.homeaffairs.gov.au//")!)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
        }.padding()
                }
}

#Preview {
    EcranModal(infoVoyage: .constant(false))
}

//
//  SwiftUIView Ecran1.swift
//  MonPremierProjet
//
//  Created by Stéphanie on 29/04/2024.
//

import SwiftUI

struct EcranModal1: View {
    
    enum Departement: String {
        case ain = "Ain"
        case calvados = "Calvados"
        case finistère = "Finistère"
        case lot = "Lot"
        case Iledefrance = "Ile de France"
        case tarn = "Tarn"
    }
    
    enum Pays: String {
        case australie = "Australie"
        case france = "France"
        case usa = "Etats-unis"
        case angleterre = "Royaume-unis"
        case jordanie = "Jordanie"
    }
    
    @State var bouttonModal = false
    @State private var Departement = ""
    @State private var datededepart = Date()
    @State private var datederetour = Date()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 8) {
                Image("Monde")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                
                Text("Destination  ")

                Text("AUSTRALIE")
                    .font(.title)

                DatePicker(selection: $datededepart, displayedComponents: [.date], label: { Text("Date de départ:")
                        .offset(x: 16, y :0)
                })
                
                DatePicker(selection:$datederetour, displayedComponents: [.date],
                           label: { Text("Date de retour:")
                        .offset(x: 16, y: 0)
                })
                
                Text("Votre département")
                
                Picker(selection: $Departement,
                       label: Text("Votre département")) {
                    Text("Ain").tag(1)
                    Text("Calvados").tag(2)
                    Text("Finistère").tag(3)
                    Text("Lot").tag(4)
                    Text("Ile de France").tag(5)
                    Text("Var").tag(6)
                }.pickerStyle(.wheel)
                    
            }
            .padding(.bottom, 16)
            
            VStack {
                NavigationLink {
                    ChooseDestinationView()
                } label: {
                    Text("Valider")
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.travelyoBlue, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                }
                
                Button(action: {
                    bouttonModal.toggle()
                }, label: {
                    Text("Informations")
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.travelyoBlue, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                })
                .sheet(isPresented: $bouttonModal) {
                    EcranModal(infoVoyage: $bouttonModal)
                }
            }
        }
        .padding()
    }
}
#Preview {
    EcranModal1()
}

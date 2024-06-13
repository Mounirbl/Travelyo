//
//  Ecran8.swift
//  Exercice1
//
//  Created by Benjamin VINCENT on 23/04/2024.
//

import SwiftUI

struct Ecran8: View {
    
    @State private var passportCoolon = false
    @State private var passportLaston = false
    @State private var idCoolon = false
    @State private var idLaston = false
    @State private var visaCoolon = false
    @State private var visaLaston = false
    @State private var vaccineCoolon = false
    @State private var vaccineLaston = false
    @State private var insuranceCoolon = false
    @State private var insuranceLaston = false
    @State private var ticketsCoolon = false
    @State private var ticketsLaston = false
    @State private var housingCoolon = false
    @State private var housingLaston = false
    @State private var climateAlerton = false
    @State private var politicalAlerton = false
    
    @State private var displayModal = false
    
    var colorItem = "lighblue"
    
    var body: some View {
        
        
        
        NavigationStack {
            
            
                
                VStack {
                    Spacer()
                    
                    Text("Mes rappels voyage")
                        .fontWeight(.bold)
                        .font(.system(size: 32))
                    
                    
                    Text("Choisir quand les recevoir")
                        .fontWeight(.semibold)
                        .font(.system(size:18))
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                        .padding(.bottom, 20)
                    
                    ZStack {
                        //Color.yellow
                        // .frame(height: 200, //alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        
                        
                    } // Fin de ZStack
                    
                    
                    VStack(spacing: 15){
                        
                        
                        HStack(spacing: 20) {
                            
                            Spacer()
                            Text("Délai cool")
                            Text("Dernier jour")
                            
                            
                            
                            
                        }
                        
                        HStack {
                            
                            Text("Passeport")
                            
                            Spacer()
                            
                            
                            
                            
                            // Image(systemName: "square")
                            //     .font(.title)
                            //     .padding(.horizontal, 30)
                            
                            
                            Button(action: { passportCoolon.toggle() },
                                   label: {
                                switch passportCoolon {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                }
                            })
                            
                            Button(action: { passportLaston.toggle() },
                                   label: {
                                switch passportLaston {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                }
                            })
                            
                        }
                        
                        HStack {
                            
                            Text("Carte d'identité")
                            
                            Spacer()
                            
                            Button(action: { idCoolon.toggle() },
                                   label: {
                                switch idCoolon {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                }
                            })
                            
                            Button(action: { idLaston.toggle() },
                                   label: {
                                switch idLaston {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                }
                            })
                            
                        }
                        
                        HStack {
                            
                            Text("Visa(s)")
                            
                            Spacer()
                            
                            Button(action: { visaCoolon.toggle() },
                                   label: {
                                switch visaCoolon {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                }
                            })
                            
                            Button(action: { visaLaston.toggle() },
                                   label: {
                                switch visaLaston {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                }
                            })
                            
                        }
                        
                        HStack {
                            
                            Text("Vaccin(s)")
                            
                            Spacer()
                            
                            Button(action: { vaccineCoolon.toggle() },
                                   label: {
                                switch vaccineCoolon {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                }
                            })
                            
                            Button(action: { vaccineLaston.toggle() },
                                   label: {
                                switch vaccineLaston {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                }
                            })
                            
                        }
                        
                        
                        
                        HStack {
                            
                            Text("Assurance voyage")
                            
                            Spacer()
                            Button(action: { insuranceCoolon.toggle() },
                                   label: {
                                switch insuranceCoolon {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                }
                            })
                            
                            Button(action: { insuranceLaston.toggle() },
                                   label: {
                                switch insuranceLaston {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                }
                            })
                            
                        }
                        
                        HStack {
                            
                            Text("Billet(s) d'avion")
                            
                            Spacer()
                            Button(action: { ticketsCoolon.toggle() },
                                   label: {
                                switch ticketsCoolon {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                }
                            })
                            
                            Button(action: { ticketsLaston.toggle() },
                                   label: {
                                switch ticketsLaston {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                }
                            })
                            
                        }
                        
                        HStack {
                            
                            Text("Hébergement")
                            
                            Spacer()
                            Button(action: { housingCoolon.toggle() },
                                   label: {
                                switch housingCoolon {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                }
                            })
                            
                            Button(action: { housingLaston.toggle() },
                                   label: {
                                switch housingLaston {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 30)
                                }
                            })
                            
                            
                            
                        }
                        
                    }
                    .padding(.horizontal)
                    
                    
                    VStack {
                        
                        Text("Imprévus à destination")
                            .fontWeight(.semibold)
                            .font(.system(size:20))
                            .multilineTextAlignment(.center)
                            .padding(.top, 25)
                            .padding(.bottom, 20)
                        
                        HStack {
                            Spacer()
                            Text("Climatique")
                            Button(action: { climateAlerton.toggle() },
                                   label: {
                                switch climateAlerton {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 10)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 10)
                                }
                            })
                            Spacer()
                            
                            
                            
                            Spacer()
                            Text("Politique & social")
                            Button(action: { politicalAlerton.toggle() },
                                   label: {
                                switch politicalAlerton {
                                case
                                    true:
                                    Image(systemName: "checkmark.square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 10)
                                default:
                                    Image(systemName: "square")
                                        .font(.title)
                                        .foregroundStyle(.black)
                                        .padding(.horizontal, 10)
                                }
                            })
                            Spacer()
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                        } // fin de HStack
                        
                    }
                    
                    Spacer()
                    
                    Button("Mon programme personnalisé"){
                        displayModal.toggle()
                    }
                    
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .font(.system(size:18))
                    .padding()
                    .background(Color("TravelyoBlue"))
                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
                    .sheet(isPresented: $displayModal) {EcranModal8(programmePerso: $displayModal)
                    }
                    Spacer()
                    
                    
                }
                
            }
            
        }
    
        
}

#Preview {
    Ecran8()
}

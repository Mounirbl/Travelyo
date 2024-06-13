//
//  TOTO.swift
//  Travelyo
//
//  Created by Mounir on 07/05/2024.
//

import SwiftUI

struct TabTestView: View {
    var body: some View {
        TabView {
            
            Ecran7()
                .tabItem {
                    Label("Profil", systemImage: "person.crop.circle")
                }
            
            ContentView()
                .tabItem {
                    Label("Résumé", systemImage: "airplane")
                }
            
            Ecran8()
                .badge(7)
                .tabItem {
                    Label("Alertes", systemImage: "bell.fill")
                }
            EcranModal1()
                .tabItem {
                    Label("Voyage", systemImage: "globe.europe.africa.fill")
                }
            
            
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    TabTestView()
}



import SwiftUI

struct ChooseDestinationView: View {
    @State private var isPassportSelected = false
    @State private var isVisaSelected = false
    @State private var isVaccinSelected = false
    @State private var isAssuranceSelected = false
    @State private var isInformationOfCountrySelected = false
    
    @State private var villeArrivee = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Text("Quelle est votre destination ?")
                        .font(.title)
                }
    
                VStack {
                    Picker(selection: $villeArrivee,
                           label: Text("Votre destination")) {
                        Text("Sydney - Australie").tag(0)
                        Text("Melbourne").tag(1)
                        Text("Camberra").tag(2)
                        
                            .pickerStyle(.wheel)
                            .frame(width: 100, height: 100)
                    }
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                Rectangle()
                    .frame(width: 340, height: 1)
                    .foregroundStyle(.black)
                
                Text("De quoi avez-vous besoin  ?")
                    .padding()
                    .font(.title)
                VStack(spacing: 28.0){
                    choiceRowView(text: "Passeport", isSelected: $isPassportSelected) {
                        isPassportSelected.toggle()
                    }
                    
                    choiceRowView(text: "Visa", isSelected: $isVisaSelected) {
                        isVisaSelected.toggle()
                    }
                    
                    choiceRowView(text: "Vaccin", isSelected: $isVaccinSelected) {
                        isVaccinSelected.toggle()
                    }
                    
                    choiceRowView(text: "Assurance Voyage ", isSelected: $isAssuranceSelected) {
                        isAssuranceSelected.toggle()
                    }
                    
                    choiceRowView(text: "Informations du pays ", isSelected: $isInformationOfCountrySelected) {
                        isInformationOfCountrySelected.toggle()
                    }
                }
                .padding()
                
                VStack {
                        NavigationLink {
                            Ecran3()
                        } label: {
                            Text("Valider")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color("TravelyoBlue"),in: RoundedRectangle(cornerRadius: 16,style: .continuous))
                                .foregroundColor(.white)
                        }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack {
                            Text("Partager")
                            Image(systemName: "square.and.arrow.up")
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("TravelyoBlue"),in: RoundedRectangle(cornerRadius: 16,style: .continuous))
                        .foregroundColor(.white)
                        
                    })
                }
                .padding()
                
                
            }
            
            
            
        }
        
        
        
    }
    
    
    
    func resumeCellView(text: String) -> some View {
        Text(text)
            .padding(8)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color("TravelyoGray"), in: RoundedRectangle(cornerRadius: 8, style: .continuous))
    }
    
    func choiceRowView(text: String, isSelected: Binding<Bool>, action: @escaping () -> Void) -> some View {
        HStack {
            Text(text)
                .frame(maxWidth: .infinity, alignment: .leading)
            Button {
                action()
            } label: {
                Image(systemName: isSelected.wrappedValue ? "checkmark.square" : "square")
                    .foregroundColor(.black)
            }
        }
    }
    
}


//private extension ContentView {
//    func resumeCellView(text: String) -> some View {
//        Text(text)
//            .padding(8)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(Color("TravelyoGray"), in: RoundedRectangle(cornerRadius: 8, style: .continuous))
//    }
//
//    func choiceRowView(text: String, isSelected: Binding<Bool>, action: @escaping () -> Void) -> some View {
//        HStack {
//            Text(text)
//                .frame(maxWidth: .infinity, alignment: .leading)
//            Button {
//                action()
//            } label: {
//                Image(systemName: isSelected.wrappedValue ? "checkmark.square" : "square")
//                    .foregroundColor(.black)
//            }
//        }
//    }
//
//}
#Preview {
    ChooseDestinationView()
}




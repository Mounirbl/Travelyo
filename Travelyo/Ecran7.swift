

import SwiftUI

struct Ecran7: View {
    @State private var isPresentedChangeYourProfilView = false
    var body: some View {
        VStack  {
            HStack {
                
                Image("Soraya")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle(), style: FillStyle())
            }
            
            
            Button(action: {
                isPresentedChangeYourProfilView = true
            }, label: {
                Text("Changer de profil")
                    .frame(width: 200, height: 25)
                    .cornerRadius(10)
                    .foregroundColor(Color("TravelyoBlue"))
            })
            
            changeProfil(text: "Prenom")
            changeProfil(text: "Nom")
            changeProfil(text: "Mail")
            changeProfil(text: "Telephone")
            
            Spacer()
            HStack {
               
                infoButton(texte: "Passeport")
                infoButton(texte: "Vaccin")
                infoButton(texte: "Visa")
                
            }
            infoButton(texte: "Faire la demande")
                .padding()
            Spacer()
            
            Spacer()
        }
        .sheet(isPresented: $isPresentedChangeYourProfilView, content: {
            Ecran7Modal()
        })
        
        
        
    }
}

struct infoButton: View
{
    var texte: String
    var body: some View
    {
    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
        Text(texte)
            .frame(width: 100, height: 50)
            .background(Color("TravelyoBlue"))
            .cornerRadius(20)
            .foregroundColor(.white)
    }
  )
}
           }

private extension Ecran7 {
    
    func changeProfil(text: String) -> some View {
        ZStack{
            Rectangle()
                .fill(Color("TravelyoGray"))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .frame(width: 300, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text(text)
                .padding(.horizontal, 88)
                .padding(.vertical, 2)
                .padding()
        }}
}


#Preview {
    Ecran7()
}

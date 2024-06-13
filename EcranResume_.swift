//
//  Ecran3 resumé .swift
//  Travelyo
//
//  Created by Apprenant 75 on 29/04/2024.
//

import SwiftUI

struct Ecran3_resume__: View {
    var body: some View {
        
        VStack(alignment: .leading)
        {
            Text("Résumé du voyage")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .padding(.trailing,110)
        }
        
        VStack()
        {
            ButtonResumeVoyage(imageVille: "imageVille", nomVille: "Tel Aviv", dateDepart: "17/04/2003", classVol: "Premiere Classe", prix: "1234€", heureAllez: "00H00", directOrEscale: "Direct", heureArriver: "6H00")
            
            
            ButtonResumeHotel(imageHotel: "imageHotel", nomHotel: "Alma Hotel", adresseHotel: "Yavne St 23, Tel Aviv-Yafo, Israel", prixHotel: "826€")
            
            /*Button(action: {},
             
             label:
             {
             VStack {
             Rectangle()
             .fill(Color.lightGray)
             .clipShape(RoundedRectangle(cornerRadius: 15))
             .frame(width: 350,height: 250)
             }
             
             })*/
            
            
            Button(action:
                    
                    {}
                   
                   ,label: {
                ZStack {
                    Rectangle()
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .frame(width : 150, height:45)
                    Text("Valider")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                .padding()
                
            })
            
        }
    }
}


struct ButtonResumeVoyage : View
{
    var imageVille:String
    
    var nomVille:String
    var dateDepart:String
    var classVol:String
    var prix:String
    
    var heureAllez:String
    var directOrEscale:String
    var heureArriver:String
    
    var body : some View
    {
        ZStack {
            Rectangle()
                .fill(Color("gris"))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 350,height: 250)
            
            //VStack mid rectangcle IMAGE
            VStack {
                VStack()
                {
                    Image(imageVille)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .frame(width: 350, height: 125)
                        .offset(x:0,y:-20)
                }
                
                //VStack mid rectangcle Info + button
                VStack
                {
                    
                    //HStack premiere ligne
                    HStack(spacing: 55)
                    {
                        VStack{
                            Text(nomVille)
                            /*Text(dateDepart)
                             .font(.system(size: 10))*/
                        }
                        Text(classVol)
                        
                        Text(prix)
                            .fontWeight(.light)
                        
                    }
                    .font(.system(size: 15))
                    .foregroundStyle(Color.black)
                    
                    
                    ZStack {
                        //HStack deuxieme ligne
                        HStack(spacing:90)
                        {
                            
                            
                            Text(heureAllez)
                            
                            
                            
                            
                            Text(directOrEscale)
                            
                            
                            
                            Text(heureArriver)
                            
                            /*Rectangle()
                             .fill(.black)
                             .clipShape(Rectangle())
                             .frame(width:30, height :1)*/
                            
                            
                            
                        }
                        .font(.system(size: 15))
                        .foregroundColor(.black)
                        
                        HStack(spacing:60)
                        {
                            Rectangle()
                                .fill(.black)
                                .clipShape(Rectangle())
                                .frame(width:70, height :0.4)
                            
                            Rectangle()
                                .fill(.black)
                                .clipShape(Rectangle())
                                .frame(width:70, height :0.4)
                        }
                    }
                    
                    
                    
                    
                    NavigationLink(destination:Ecran3())
                    {
                        Text("slken")
                        /*ZStack
                         {
                         Rectangle()
                         .clipShape(RoundedRectangle(cornerRadius: 10))
                         .frame(width: 300, height : 25)
                         Text("Modifier")
                         .foregroundStyle(Color.white)
                         }*/
                    }.buttonStyle(.bordered)
                    
                    
                    
                    /*Button modifier
                     Button(action: {}, label: {
                     
                     })*/
                    
                    
                    
                    
                }
            }
        }
        .padding()
    }
}

struct ButtonResumeHotel : View
{
    var imageHotel:String
    var nomHotel:String
    var adresseHotel:String
    var prixHotel:String
    
    var body : some View
    {
        ZStack {
            Rectangle()
                .fill(Color("gris"))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 350,height: 250)
            
            //VStack mid rectangcle IMAGE
            VStack {
                VStack()
                {
                    Image(imageHotel)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .frame(width: 350, height: 125)
                        .offset(x:0,y:-12)
                }
                
                //VStack mid rectangcle Info + button
                VStack
                {
                    
                    
                    HStack{
                        VStack(alignment: .leading,spacing: 2)
                        {
                            Text(nomHotel)
                                .font(.system(size: 20))
                            Text(adresseHotel)
                                .font(.system(size: 8))
                                .fontWeight(.thin)
                            HStack
                            {
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                                Image(systemName: "star")
                                    .fontWeight(.thin)
                            }
                            .padding(.trailing,190)
                            
                            
                            
                        }
                        .font(.system(size: 15))
                        .foregroundStyle(Color.black)
                        
                        
                        // Text("1234€")
                        
                    }
                    
                    
                    Text("826 Euros")
                        .foregroundStyle(.black)
                        .font(.system(size: 20))
                        .fontWeight(.light)
                        .padding(.leading,225)
                        .padding(.top,-25)
                    
                    
                    
                    
                    //Button modifier
                    Button(action: {}, label: {
                        ZStack {
                            Rectangle()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .frame(width: 300, height : 25)
                            Text("Modifier")
                                .foregroundStyle(Color.white)
                        }
                    })
                    
                    
                    
                    
                }
            }
        }
    }
}

#Preview {
    Ecran3_resume__()
}

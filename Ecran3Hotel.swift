//
//  EcranHotel.swift
//  Travelyo
//
//  Created by Apprenant 75 on 02/05/2024.
//

import SwiftUI

struct Ecran3Hotel: View {
    var body: some View {
       
        List()
        {
            ButtonHotel(imageHotel: "Oaks Sydney North Ryde Suites", nomHotel:"Alma Hotel Sydney ", adresseHotel: " Andrew St 23, Sydney, Australie", prixHotel: "826€")
                .listRowSeparator(.hidden)
            ButtonHotel(imageHotel: "Oaks Sydney North Ryde Suites", nomHotel:"Alma Hotel Sydney ", adresseHotel: " Andrew St 23, Sydney, Australie", prixHotel: "826€")
                .listRowSeparator(.hidden)
            ButtonHotel(imageHotel: "Oaks Sydney North Ryde Suites", nomHotel:"Alma Hotel Sydney ", adresseHotel: " Andrew St 23, Sydney, Australie", prixHotel: "826€")
                .listRowSeparator(.hidden)
            
        }
        
        .listStyle(.inset)
        
        
    }
}

struct ButtonHotel : View
{
    var imageHotel:String
    var nomHotel:String
    var adresseHotel:String
    var prixHotel:String
    
    var body : some View
    {
        ZStack {
            Rectangle()
                .fill(Color("TravelyoGray"))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .frame(width: 350,height: 330)
            
            
            //VStack mid rectangcle IMAGE
            VStack {
                VStack()
                {
                    Image(imageHotel)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .frame(width: 350, height: 160)
                        .padding(.top ,-30)
                       //.offset(x:0,y:-15)
                }
                
                //VStack mid rectangcle Info + button
                VStack()
                {
                    
                    
                    HStack(){
                        VStack(alignment: .leading,spacing : 5)
                        {
                            Text(nomHotel)
                                .font(.system(size: 22))
                                
                               
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
                            
                            
                         
                            
                            VStack(alignment: .leading,spacing : 10) {
                                HStack {
                                    Image(systemName: "wifi")
                                    Text("WiFi")
                                        .font(.system(size: 10))
                                }
                                
                                
                               
                                HStack {
                                    Image(systemName: "figure.pool.swim")
                                    Text("Piscine")
                                        .font(.system(size: 10))
                                }
                                HStack {
                                    Image(systemName: "mug.fill")
                                    Text("Petit Déjeuner ")
                                        .font(.system(size: 10))
                                }
                               
                               
                            } 
                            .padding(.leading,0)
                            //.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            
                            
                            
                            
                            
                            
                        }
                        .font(.system(size: 15))
                        .foregroundStyle(Color.black)
                        
                        
                    
                            
                    }
                    
                  
                        
                    
                
                    
                    //Button modifier
                   /* Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            Rectangle()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .frame(width: 300, height : 25)
                            Text("Modifier")
                                .foregroundStyle(Color.white)
                        }
                    })*/
                    //.offset(x: 0 , y:30)
                    
                    
                    
                    
                }
                //.offset(x:0,y:-38)
            }
            
            VStack
            {
                
                Text("Nuitée :")
                    .padding(.leading,-45)
                Text(prixHotel)
                    .foregroundStyle(.black)
                    .fontWeight(.light)
                    .font(.system(size: 38))
                    //.offset(x:80,y:-30)
            }
            .padding(.leading,200)
            .padding(.top,200)
            //.frame(width: 100,height: 100)
        }
        .frame(width: 350,height: 330)
        //.padding()
    }
}

#Preview {
    Ecran3Hotel()
}

//
//   actionSheet.swift
//  Travelyo
//
//  Created by Apprenant 75 on 02/05/2024.
//

import SwiftUI

struct Ecran7Modal: View {
    var body: some View {
        VStack (alignment :.leading ){
            HStack {
                Text("Ajouter profil")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                Spacer()
                Button(action:
                        {
                    
                },
                       label:
                        {
                    
                    Image(systemName: "multiply.circle.fill")
                        .foregroundStyle(Color.black)
                    
                })
            }
            
            Divider()
            
            HStack(spacing :20)
            {
                //Profil 1
                Button(
                    action: {},
                    label:
                        {
                            HStack
                            {
                                //Button profileExistant
                                VStack(/*spacing:*/)
                                {
                                    ZStack {
                                        Circle()
                                            .fill(.gray)
                                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                            .frame(width: 55,height:55)
                                        
                                        Image(systemName: "person.crop.circle")                                   .resizable()
                                            .frame(width:  45, height: 45)
                                            .foregroundStyle(Color.black)
                                        
                                    }
                                    Text("Profil 1")
                                }
                                .frame(width:75, height: 100)
                                
                            }
                            
                        }
                    
                )
                
                //Profil 2
                Button(action: {},
                       label:
                        {
                    HStack
                    {
                        //Button profileExistant
                        VStack(/*spacing:*/)
                        {
                            ZStack {
                                Circle()
                                    .fill(.gray)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .frame(width: 55,height:55)
                                
                                Image(systemName: "person.crop.circle")
                                    .resizable()
                                    .frame(width:  45, height: 45)
                                    .foregroundStyle(Color.black)
                                
                            }
                            Text("Profil 2")
                        }.frame(width: 75, height: 100)
                    }
                    
                })
                //Profil 3
                Button(action: {},
                       label:
                        {
                    HStack
                    {
                        //Button profileExistant
                        VStack(/*spacing:*/)
                        {
                            ZStack {
                                Circle()
                                    .fill(.gray)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .frame(width: 55,height:55)
                                
                                Image(systemName: "person.crop.circle")
                                    .resizable()
                                    .frame(width:  45, height: 45)
                                    .foregroundStyle(Color.black)
                                
                            }
                            Text("Profil 3")
                        }.frame(width: 75, height: 100)
                    }
                    
                })
            }
            Divider()
            Button(action: {},
                   label:
                    {
                HStack
                {
                    VStack()
                    {
                        ZStack {
                            Circle()
                                .fill(.gray)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .frame(width: 75,height:55)
                            
                            Image(systemName: "person.crop.circle.badge.plus")
                                .resizable()
                                .frame(width:  50, height: 50)
                                .foregroundStyle(Color.black)
                            
                        }
                        Text("Ajouter profil")
                    }
                    .frame(width:75, height: 100)
                }
                
            })
        }
        .frame(width :350, height : 260)
        .padding()
        .background(.gray)
        
        
        
    }
}

#Preview {
    Ecran7Modal()
}

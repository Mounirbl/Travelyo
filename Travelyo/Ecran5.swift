//
//  SwiftUIView.swift
//
//
//  Created by Bouallel Mounir on 13/05/2024.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var firstNameTextField = ""
    @State private var lastNameTextField = ""
    @State private var emailTextField = ""
    @State private var passwordTextField = ""
    
    @State private var isNotRobotChecked = false

    
    var isValidField: Bool {
        !firstNameTextField.isEmpty && !lastNameTextField.isEmpty && !emailTextField.isEmpty && !passwordTextField.isEmpty && isNotRobotChecked
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("Inscription")
                .font(.title)
                .bold()
            
            VStack {
                formView(formLabel: "Nom", placeholder: "Entrez votre nom...", textField: $firstNameTextField)
                formView(formLabel: "Prénom", placeholder: "Entrez votre prénom...", textField: $lastNameTextField)
                formView(formLabel: "Email", placeholder: "Entrez votre email...", textField: $emailTextField)
                formView(formLabel: "Password", placeholder: "Entrez votre mot de passe...", textField: $passwordTextField, isPasswordField: true)
            }
            Spacer()
            
            Toggle(isOn: $isNotRobotChecked) {
                Text("Je ne suis pas un robot")
                
            }
            .toggleStyle(iOSCheckboxToggleStyle())
            Spacer()
            
            
            NavigationLink {
                TabTestView()
            } label: {
                Text("Valider")
                    .padding(8)
                    .frame(maxWidth: .infinity)
            }
            .disabled(!isValidField)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

private extension SwiftUIView {
    func formView(formLabel: String, placeholder: String, textField: Binding<String>, isPasswordField: Bool = false) -> some View {
        VStack(alignment: .leading) {
            Text(formLabel)
            Group {
                if isPasswordField {
                    SecureField(placeholder, text: $passwordTextField)
                } else {
                    TextField(placeholder, text: textField)
                }
            }
            .padding()
            .background(Color.gray.opacity(0.2), in: RoundedRectangle(cornerRadius: 8, style: .continuous))
            
        }
        .frame(maxWidth: .infinity)
    }
}

struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }, label: {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                configuration.label
            }
        })
    }
}

#Preview {
    SwiftUIView()
}

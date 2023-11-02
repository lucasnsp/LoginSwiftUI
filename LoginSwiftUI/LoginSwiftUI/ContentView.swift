//
//  ContentView.swift
//  LoginSwiftUI
//
//  Created by Lucas Neves dos santos pompeu on 01/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(edges: .all)
            VStack(spacing: 10.0) {
                Text("Login")
                    .foregroundStyle(.white)
                    .font(.system(size: 40, weight: .bold))
                
                Image("LOGO")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                
                TextField("Digite seu e-mail:", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .cornerRadius(22)
                    .foregroundStyle(.black)
                    .keyboardType(.emailAddress)
                
                SecureField("Digite sua senha:", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .cornerRadius(22)

                    .foregroundStyle(.black)
                    .keyboardType(.default)
                
                Button {
                    print("Clique no botão!!")
                } label: {
                    Text("Login")
                        .frame(height: 40)
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.white)
                        .font(.system(size: 20, weight: .bold))
                        .background(Color(red: 228/255, green: 50/255, blue: 128/255))
                        .cornerRadius(22)
                }
                
                HStack {
                    Text("Não tem conta?")
                        .foregroundStyle(.white)
                    Button {
                        print("Clique no botão")
                    } label: {
                        Text("Cadastre-se")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(Color(red: 228/255, green: 58/255, blue: 128/255))
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  LoginSwiftUI
//
//  Created by Lucas Neves dos santos pompeu on 01/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(edges: .all)
            VStack {
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
                    .padding(.horizontal, 20)
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

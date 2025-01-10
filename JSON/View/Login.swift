//
//  Login.swift
//  JSON
//
//  Created by Gabo on 10/01/25.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var password = ""
    @EnvironmentObject var login: PostViewModel
    var body: some View{
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack{
                Text("Email").foregroundColor(.white).bold()
                TextField("Email", text: $email)
                    .background(Color.white)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                    .padding()
                Text("Password").foregroundColor(.white).bold()
                SecureField("Password", text: $password)
                    .background(Color.white)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button(action: {
                    login.login(email: email, password: password)
                }){
                    Text("Login").foregroundColor(.white).bold()
                }
            }
        }.padding()
    }
}

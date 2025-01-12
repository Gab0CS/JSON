//
//  Home.swift
//  JSON
//
//  Created by Gabo on 10/01/25.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject var login : PostViewModel
    
    var body: some View {
        NavigationView{
            Text("Welcome")
                .navigationBarTitle("JSON")
                .navigationBarItems(leading:
                                        Button(action:{
                                        UserDefaults.standard.removeObject(forKey: "sesion")
                                        login.authenticated = 0
                                        }){
                                            Text("Salir")
                                        }
                                    , trailing:
                                        Button(action: {
                                            //
                                        }){
                                            Text("Siguiente")
                                        }
                )
        }
    }
}

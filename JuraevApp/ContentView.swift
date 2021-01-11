//
//  ContentView.swift
//  JuraevApp
//
//  Created by Asadulla Juraev on 10.01.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                Image("im_1").resizable()
                    .aspectRatio(contentMode: .fit)
                Image("im_2").resizable()
                    .aspectRatio(contentMode: .fit)
                Image("im_3").resizable()
                    .aspectRatio(contentMode: .fit)
                Image("im_4").resizable()
                    .aspectRatio(contentMode: .fit)
            }.padding()
            .navigationBarItems(
                leading: Image("ic_menu"),
                trailing: HStack{
                    Image("ic_camera")
                    Image("ic_photo")
                }
            )
            .navigationBarTitle("Photos",displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

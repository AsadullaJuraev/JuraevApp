//
//  SlidesScreen.swift
//  JuraevApp
//
//  Created by Asadulla Juraev on 10.01.2021.
//

import SwiftUI

struct SlidesScreen: View {
    var body: some View {
        TabView{
            Image("im_slides1").resizable().frame(maxWidth: .infinity, maxHeight: .infinity)
            Image("im_slides2").resizable().frame(maxWidth: .infinity, maxHeight: .infinity)
            Image("im_slides3").resizable().frame(maxWidth: .infinity, maxHeight: .infinity)
        }.tabViewStyle(PageTabViewStyle())
    }
}

struct SlidesScreen_Previews: PreviewProvider {
    static var previews: some View {
        SlidesScreen()
    }
}

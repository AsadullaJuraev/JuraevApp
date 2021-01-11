//
//  AnimationScreen.swift
//  JuraevApp
//
//  Created by Asadulla Juraev on 11.01.2021.
//

import SwiftUI

struct AnimationScreen: View {
    @State private var half = false
    @State private var dim = false
    var body: some View {
        Image("tower")
            .resizable()
            .scaleEffect(half ? 0.5 : 1.0)
            .opacity(dim ? 0.2 : 1.0)
            .animation(.easeInOut(duration: 1.0))
            .onTapGesture {
                self.dim.toggle()
                self.half.toggle()
            }
    }
}

struct AnimationScreen_Previews: PreviewProvider {
    static var previews: some View {
        AnimationScreen()
    }
}

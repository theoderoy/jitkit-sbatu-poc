//
//  Creds.swift
//  JitKit SbATU POC
//
//  Created by Theo De Roy on 16/02/2023.
//

import SwiftUI

struct Creds: View {
    var body: some View {
        NavigationView {
            VStack{
                    Text("JitKit SbATU POC app by swifticul")
                        .bold()
                    Divider()
                    Text("SideStore by SideTeam")
                    Text("sidejit-enable URL scheme update by Spidy")
            }
        } .navigationBarTitle("Credits")
    }
}

struct Creds_Previews: PreviewProvider {
    static var previews: some View {
        Creds()
    }
}

//
//  ContentView.swift
//  JitKit SbATU POC
//
//  Created by Tristan on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var writtenappid = ("")
    
    var body: some View {
        NavigationView {
            List {
                
                Section {
                    VStack {
                        Spacer()
                            .frame(width: 0, height: 10)
                            .clipped()
                        
                        TextField("Enter App ID", text: $writtenappid)
                            .frame(maxWidth: 300) .textFieldStyle(.roundedBorder)
                        
                        Spacer()
                            .frame(width: 0, height: 15)
                            .clipped()
                        
                        Link("Inject to specified App ID", destination: URL(string: "sidestore://sidejit-enable?url=\(writtenappid)")!).buttonStyle(ButtonFromInteractfulROFL()) .frame(maxWidth: 300)
                        
                        Spacer()
                            .frame(width: 0, height: 10)
                            .clipped()
                        
                    }
                }
                
                Section {
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Text("View App ID Slots")
                    } .buttonStyle(ButtonFromInteractfulROFL())
                } footer: {
                    Text("- JitKit SbATU POC by swifticul \n- SideStore by SideTeam \n- SideJIT call URL scheme update by Spidy123222")
                }
            } .navigationTitle("JitKit SbATU POC")
            
        }
    }
}

public struct ButtonFromInteractfulROFL: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(Font.body.weight(.medium))
            .padding(.vertical, 12)
            .foregroundColor(Color.white)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 14.0, style: .continuous)
                    .fill(Color.accentColor)
            )
            .opacity(configuration.isPressed ? 0.4 : 1.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

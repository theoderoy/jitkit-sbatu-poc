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
        List {
            Section {
                VStack {
                    Text("JitKit SbATU POC")
                        .font(.largeTitle.weight(.medium))
                    
                    Spacer()
                        .frame(width: 0, height: 20)
                        .clipped()
                    
                    TextField("Enter App ID", text: $writtenappid)
                        .frame(maxWidth: 300) .textFieldStyle(.roundedBorder)
                    
                    Spacer()
                        .frame(width: 0, height: 20)
                        .clipped()
                    
                    Link("Inject to specified App ID", destination: URL(string: "sidestore://sidejit-enable?url=\(writtenappid)")!).buttonStyle(ButtonFromInteractfulROFL()) .frame(maxWidth: 300)
                    
                }
            }
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

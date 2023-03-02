//
//  ContentView.swift
//  JitKit SbATU POC
//
//  Created by Tristan on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
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
                        .textFieldStyle(.roundedBorder)
                        Spacer()
                            .frame(width: 0, height: 15)
                            .clipped()
                        Link("Inject to specified App ID", destination: URL(string: "sidestore://sidejit-enable?bid=\(writtenappid)")!).buttonStyle(ButtonFromInteractfulROFL())
                        Spacer()
                            .frame(width: 0, height: 20)
                            .clipped()
                        NavigationLink(destination: DoomMind()) {
                                Text("View Saved App IDs")
                            }
                    }
                } header: {
                    Text("sidestore url scheme poc")
                }
                footer: {
                    Text("You can have up to 2 saved App IDs for the app to remember. These can be changed at any time.")
                }
                Section {
                    NavigationLink(destination: Creds()) {
                        Text("View Credits")
                    }
                } header: {
                    Text("other")
                } footer: {
                    Text("sbatupoc \(appVersion ?? "AppVersion")")
                }
            } .navigationTitle("JitKit SbATU")
        } .navigationViewStyle(StackNavigationViewStyle())
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

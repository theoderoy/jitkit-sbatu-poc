//
//  DoomMind.swift
//  JitKit SbATU POC
//
//  Created by Tristan on 16/02/2023.
//

import SwiftUI

struct DoomMind: View {
    @AppStorage("appid1") private var appid1 = ("")
    @AppStorage("appid2") private var appid2 = ("")
    @State private var presentAlert1 = false
    @State private var presentAlert2 = false
    @AppStorage("macdirtycow") private var macdirtycow = false
    var body: some View {
        NavigationView {
            List {
                    Section {
                        VStack {
                            Spacer()
                                .frame(width: 0, height: 10)
                                .clipped()
                            Link("Inject to saved App ID", destination: URL(string: "sidestore://sidejit-enable?bid=\(appid1)")!).buttonStyle(ButtonFromInteractfulROFL())
                                .disabled(appid1 == (""))
                            Spacer()
                                .frame(width: 0, height: 10)
                                .clipped()
                            Button("Edit Saved App ID #1"){
                                presentAlert1 = true
                            }.font(Font.body.weight(.medium))
                                .padding(.vertical, 12)
                                .foregroundColor(Color.white)
                                .frame(maxWidth: .infinity)
                                .background(
                                    RoundedRectangle(cornerRadius: 14.0, style: .continuous)
                                        .fill(Color.blue)
                                )
                                .alert("Saved App ID #1", isPresented: $presentAlert1, actions: {
                                    TextField("App ID", text: $appid1)
                                    Button("Save", action: {})
                                    Button("Cancel", role: .cancel, action: {})
                                }, message: {
                                    Text("Enter an App ID to save in slot one")
                                })
                            Spacer()
                                .frame(width: 0, height: 20)
                            Text("App ID: \(appid1)")
                            Spacer()
                                .frame(width: 0, height: 10)
                        }
                    } header: {
                        Text("sidestore limit")
                    }
                    Section {
                        VStack {
                            Spacer()
                                .frame(width: 0, height: 10)
                                .clipped()
                            Link("Inject to saved App ID", destination: URL(string: "sidestore://sidejit-enable?bid=\(appid2)")!).buttonStyle(ButtonFromInteractfulROFL())
                                .disabled(appid2 == (""))
                            Spacer()
                                .frame(width: 0, height: 10)
                                .clipped()
                            Button("Edit Saved App ID #2"){
                                presentAlert2 = true
                            }.font(Font.body.weight(.medium))
                                .padding(.vertical, 12)
                                .foregroundColor(Color.white)
                                .frame(maxWidth: .infinity)
                                .background(
                                    RoundedRectangle(cornerRadius: 14.0, style: .continuous)
                                        .fill(Color.blue)
                                )
                                .alert("Saved App ID #2", isPresented: $presentAlert2, actions: {
                                    TextField("App ID", text: $appid2)
                                    Button("Save", action: {})
                                    Button("Cancel", role: .cancel, action: {})
                                }, message: {
                                    Text("Enter an App ID to save in slot two")
                                })
                            Spacer()
                                .frame(width: 0, height: 20)
                            Text("App ID: \(appid2)")
                            Spacer()
                                .frame(width: 0, height: 10)
                        }
                    }
                if #available(iOS 16.2, *) {
                    Text("MacDirtyCow features are unsupported on iOS 16.2 and above.")
                } else {
                    Section {
                        Toggle("Increase App ID limit (MacDirtyCow)", isOn: $macdirtycow)
                        NavigationLink(destination: DoomMindMDCView()) {
                            Text("MacDirtyCow App ID Slots")
                        } .disabled(macdirtycow == false)
                    }
                }

            }
        } .navigationBarTitle("Saved App IDs") .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct DoomMind_Previews: PreviewProvider {
    static var previews: some View {
        DoomMind()
    }
}

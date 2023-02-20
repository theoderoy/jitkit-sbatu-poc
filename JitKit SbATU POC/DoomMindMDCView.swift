//
//  DoomMindMDCView.swift
//  JitKit SbATU POC
//
//  Created by Tristan on 20/02/2023.
//

import SwiftUI

struct DoomMindMDCView: View {
    @AppStorage("appid3") private var appid3 = ("")
    @AppStorage("appid4") private var appid4 = ("")
    @AppStorage("appid5") private var appid5 = ("")
    @AppStorage("appid6") private var appid6 = ("")
    @AppStorage("appid7") private var appid7 = ("")
    @AppStorage("appid8") private var appid8 = ("")
    @AppStorage("appid9") private var appid9 = ("")
    @AppStorage("appid10") private var appid10 = ("")
    @State private var presentAlert3 = false
    @State private var presentAlert4 = false
    @State private var presentAlert5 = false
    @State private var presentAlert6 = false
    @State private var presentAlert7 = false
    @State private var presentAlert8 = false
    @State private var presentAlert9 = false
    @State private var presentAlert10 = false
    var body: some View {
        NavigationView {
            List {
                Section {
                                        VStack {
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Link("Inject to saved App ID", destination: URL(string: "sidestore://sidejit-enable?url=\(appid3)")!).buttonStyle(ButtonFromInteractfulROFL())
                                                .disabled(appid3 == (""))
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Button("Edit Saved App ID #3"){
                                                presentAlert3 = true
                                            }.font(Font.body.weight(.medium))
                                                .padding(.vertical, 12)
                                                .foregroundColor(Color.white)
                                                .frame(maxWidth: .infinity)
                                                .background(
                                                    RoundedRectangle(cornerRadius: 14.0, style: .continuous)
                                                        .fill(Color.blue)
                                                )
                                                .alert("Saved App ID #2", isPresented: $presentAlert3, actions: {
                                                    TextField("App ID", text: $appid3)
                                                    Button("Save", action: {})
                                                    Button("Cancel", role: .cancel, action: {})
                                                }, message: {
                                                    Text("Enter an App ID to save in slot three")
                                                })
                                            Spacer()
                                                .frame(width: 0, height: 20)
                                            Text("App ID: \(appid3)")
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                        }
                                    }
                                    Section {
                                        VStack {
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Link("Inject to saved App ID", destination: URL(string: "sidestore://sidejit-enable?url=\(appid4)")!).buttonStyle(ButtonFromInteractfulROFL())
                                                .disabled(appid4 == (""))
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Button("Edit Saved App ID #4"){
                                                presentAlert4 = true
                                            }.font(Font.body.weight(.medium))
                                                .padding(.vertical, 12)
                                                .foregroundColor(Color.white)
                                                .frame(maxWidth: .infinity)
                                                .background(
                                                    RoundedRectangle(cornerRadius: 14.0, style: .continuous)
                                                        .fill(Color.blue)
                                                )
                                                .alert("Saved App ID #4", isPresented: $presentAlert4, actions: {
                                                    TextField("App ID", text: $appid4)
                                                    Button("Save", action: {})
                                                    Button("Cancel", role: .cancel, action: {})
                                                }, message: {
                                                    Text("Enter an App ID to save in slot four")
                                                })
                                            Spacer()
                                                .frame(width: 0, height: 20)
                                            Text("App ID: \(appid4)")
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                        }
                                    }
                                    Section {
                                        VStack {
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Link("Inject to saved App ID", destination: URL(string: "sidestore://sidejit-enable?url=\(appid5)")!).buttonStyle(ButtonFromInteractfulROFL())
                                                .disabled(appid5 == (""))
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Button("Edit Saved App ID #5"){
                                                presentAlert5 = true
                                            }.font(Font.body.weight(.medium))
                                                .padding(.vertical, 12)
                                                .foregroundColor(Color.white)
                                                .frame(maxWidth: .infinity)
                                                .background(
                                                    RoundedRectangle(cornerRadius: 14.0, style: .continuous)
                                                        .fill(Color.blue)
                                                )
                                                .alert("Saved App ID #5", isPresented: $presentAlert5, actions: {
                                                    TextField("App ID", text: $appid5)
                                                    Button("Save", action: {})
                                                    Button("Cancel", role: .cancel, action: {})
                                                }, message: {
                                                    Text("Enter an App ID to save in slot five")
                                                })
                                            Spacer()
                                                .frame(width: 0, height: 20)
                                            Text("App ID: \(appid5)")
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                        }
                                    }
                                    Section {
                                        VStack {
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Link("Inject to saved App ID", destination: URL(string: "sidestore://sidejit-enable?url=\(appid6)")!).buttonStyle(ButtonFromInteractfulROFL())
                                                .disabled(appid6 == (""))
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Button("Edit Saved App ID #6"){
                                                presentAlert6 = true
                                            }.font(Font.body.weight(.medium))
                                                .padding(.vertical, 12)
                                                .foregroundColor(Color.white)
                                                .frame(maxWidth: .infinity)
                                                .background(
                                                    RoundedRectangle(cornerRadius: 14.0, style: .continuous)
                                                        .fill(Color.blue)
                                                )
                                                .alert("Saved App ID #6", isPresented: $presentAlert6, actions: {
                                                    TextField("App ID", text: $appid6)
                                                    Button("Save", action: {})
                                                    Button("Cancel", role: .cancel, action: {})
                                                }, message: {
                                                    Text("Enter an App ID to save in slot six")
                                                })
                                            Spacer()
                                                .frame(width: 0, height: 20)
                                            Text("App ID: \(appid6)")
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                        }
                                    }
                                    Section {
                                        VStack {
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Link("Inject to saved App ID", destination: URL(string: "sidestore://sidejit-enable?url=\(appid7)")!).buttonStyle(ButtonFromInteractfulROFL())
                                                .disabled(appid7 == (""))
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Button("Edit Saved App ID #7"){
                                                presentAlert7 = true
                                            }.font(Font.body.weight(.medium))
                                                .padding(.vertical, 12)
                                                .foregroundColor(Color.white)
                                                .frame(maxWidth: .infinity)
                                                .background(
                                                    RoundedRectangle(cornerRadius: 14.0, style: .continuous)
                                                        .fill(Color.blue)
                                                )
                                                .alert("Saved App ID #7", isPresented: $presentAlert7, actions: {
                                                    TextField("App ID", text: $appid7)
                                                    Button("Save", action: {})
                                                    Button("Cancel", role: .cancel, action: {})
                                                }, message: {
                                                    Text("Enter an App ID to save in slot seven")
                                                })
                                            Spacer()
                                                .frame(width: 0, height: 20)
                                            Text("App ID: \(appid7)")
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                        }
                                    }
                                    Section {
                                        VStack {
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Link("Inject to saved App ID", destination: URL(string: "sidestore://sidejit-enable?url=\(appid8)")!).buttonStyle(ButtonFromInteractfulROFL())
                                                .disabled(appid8 == (""))
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Button("Edit Saved App ID #8"){
                                                presentAlert8 = true
                                            }.font(Font.body.weight(.medium))
                                                .padding(.vertical, 12)
                                                .foregroundColor(Color.white)
                                                .frame(maxWidth: .infinity)
                                                .background(
                                                    RoundedRectangle(cornerRadius: 14.0, style: .continuous)
                                                        .fill(Color.blue)
                                                )
                                                .alert("Saved App ID #8", isPresented: $presentAlert8, actions: {
                                                    TextField("App ID", text: $appid8)
                                                    Button("Save", action: {})
                                                    Button("Cancel", role: .cancel, action: {})
                                                }, message: {
                                                    Text("Enter an App ID to save in slot eight")
                                                })
                                            Spacer()
                                                .frame(width: 0, height: 20)
                                            Text("App ID: \(appid8)")
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                        }
                                    }
                                    Section {
                                        VStack {
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Link("Inject to saved App ID", destination: URL(string: "sidestore://sidejit-enable?url=\(appid9)")!).buttonStyle(ButtonFromInteractfulROFL())
                                                .disabled(appid9 == (""))
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Button("Edit Saved App ID #9"){
                                                presentAlert9 = true
                                            }.font(Font.body.weight(.medium))
                                                .padding(.vertical, 12)
                                                .foregroundColor(Color.white)
                                                .frame(maxWidth: .infinity)
                                                .background(
                                                    RoundedRectangle(cornerRadius: 14.0, style: .continuous)
                                                        .fill(Color.blue)
                                                )
                                                .alert("Saved App ID #9", isPresented: $presentAlert9, actions: {
                                                    TextField("App ID", text: $appid9)
                                                    Button("Save", action: {})
                                                    Button("Cancel", role: .cancel, action: {})
                                                }, message: {
                                                    Text("Enter an App ID to save in slot nine")
                                                })
                                            Spacer()
                                                .frame(width: 0, height: 20)
                                            Text("App ID: \(appid9)")
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                        }
                                    }
                                    Section {
                                        VStack {
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Link("Inject to saved App ID", destination: URL(string: "sidestore://sidejit-enable?url=\(appid10)")!).buttonStyle(ButtonFromInteractfulROFL())
                                                .disabled(appid10 == (""))
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                                .clipped()
                                            Button("Edit Saved App ID #10"){
                                                presentAlert10 = true
                                            }.font(Font.body.weight(.medium))
                                                .padding(.vertical, 12)
                                                .foregroundColor(Color.white)
                                                .frame(maxWidth: .infinity)
                                                .background(
                                                    RoundedRectangle(cornerRadius: 14.0, style: .continuous)
                                                        .fill(Color.blue)
                                                )
                                                .alert("Saved App ID #10", isPresented: $presentAlert10, actions: {
                                                    TextField("App ID", text: $appid10)
                                                    Button("Save", action: {})
                                                    Button("Cancel", role: .cancel, action: {})
                                                }, message: {
                                                    Text("Enter an App ID to save in slot ten")
                                                })
                                            Spacer()
                                                .frame(width: 0, height: 20)
                                            Text("App ID: \(appid10)")
                                            Spacer()
                                                .frame(width: 0, height: 10)
                                        }
                                    }
            }
          } .navigationBarTitle("MacDirtyCow App IDs") .navigationViewStyle(StackNavigationViewStyle())
        }
}

struct DoomMindMDCView_Previews: PreviewProvider {
    static var previews: some View {
        DoomMindMDCView()
    }
}

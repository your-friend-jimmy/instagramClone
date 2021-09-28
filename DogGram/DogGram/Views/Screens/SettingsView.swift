//
//  SettingsView.swift
//  DogGram
//
//  Created by James Phillips on 9/27/21.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
               
                //MARK: - Section 1: DogGram
                GroupBox(label: SettingsLabelView(labelText: "DogGram", labelImage: "dot.radiowaves.left.and.right")) {
                    HStack(alignment: .center, spacing: 10) {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80, alignment: .center)
                            .cornerRadius(12)
                        
                        Text("DogGram is the #1 app for posting pictures of your dog and sharing them across the world. We are a dog-loving community and we're happy to have you.")
                            .font(.footnote)
                    }
                }
                .padding()
                
                //MARK: - Section 2: Profile
                GroupBox {
                    SettingsRowView(
                        leftIcon: "pencil",
                        text: "Display Name",
                        color: Color.MyTheme.purpleColor)
                    
                    SettingsRowView(
                        leftIcon: "text.quote",
                        text: "Bio",
                        color: Color.MyTheme.purpleColor)
                    
                    SettingsRowView(
                        leftIcon: "photo",
                        text: "Profile Picture",
                        color: Color.MyTheme.purpleColor)
                    
                    SettingsRowView(
                        leftIcon: "figure.walk",
                        text: "Sign Out",
                        color: Color.MyTheme.purpleColor)
                    
                } label: {
                    SettingsLabelView(labelText: "Profile", labelImage: "person.fill")
                }
                .padding()
                
                //MARK: - Section 3: Application
                GroupBox {
                    SettingsRowView(
                        leftIcon: "folder.fill",
                        text: "Privacy Policy",
                        color: Color.MyTheme.yellowColor)
                    
                    SettingsRowView(
                        leftIcon: "folder.fill",
                        text: "Terms & Conditions",
                        color: Color.MyTheme.yellowColor)
                    
                    SettingsRowView(
                        leftIcon: "globe",
                        text: "DogGram's Website",
                        color: Color.MyTheme.yellowColor)
            
                } label: {
                    SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                }
                .padding()
                
                //MARK: - Section 4: Sign off
                GroupBox {
                    Text("DogGram was made with love.\nAll Rights Reserved\n Cool Apps Inc.\n Copyright 2021")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                }
                .padding()
                .padding(.bottom,40)
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                leading: Button(
                    action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.title)
                    })
                    .accentColor(.primary))
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

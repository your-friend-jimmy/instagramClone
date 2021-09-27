//
//  ContentView.swift
//  DogGram
//
//  Created by James Phillips on 9/25/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            NavigationView{ FeedView(posts: PostArrayObject(), title: "Feed") }
            .tabItem {
                Image(systemName: "book.fill")
                Text("Feed")
            }
            
            
            NavigationView {BrowseView()}
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Browse")
            }
            
            Text("Screen3")
                .tabItem {
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Upload")
                }
            
            Text("Screen4")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(Color.MyTheme.purpleColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


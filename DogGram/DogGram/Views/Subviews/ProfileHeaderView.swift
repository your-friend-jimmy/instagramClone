//
//  ProfileHeaderView.swift
//  DogGram
//
//  Created by James Phillips on 9/27/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    @Binding var profileDisplayName: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            
            //MARK: - Profile picture
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120, alignment: .center)
                .cornerRadius(60)
            
            //MARK: - Username
            Text(profileDisplayName)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            //MARK: - Bio
            Text("This is the area wheere the user can add a bio to their profile.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
            
            
            HStack(alignment: .center, spacing: 20) {
                
                //MARK: - Post
                VStack(alignment: .center, spacing: 5) {
                    Text("5")
                        .font(.title2)
                    
                        Capsule()
                        .fill()
                        .frame(width: 20, height: 2, alignment: .center)
                    
                    Text("Post")
                        .font(.callout)
                        .fontWeight(.medium)
                }
                //MARK: - Likes
                VStack(alignment: .center, spacing: 5) {
                    Text("25")
                        .font(.title2)
                    
                    Capsule()
                        .fill()
                        .frame(width: 20, height: 2, alignment: .center)
                    
                    Text("likes")
                        .font(.callout)
                        .fontWeight(.medium)
                }
            }
        }
        .frame(maxWidth:.infinity)
        .padding()
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    
    @State static var name: String = "Joe"
    
    static var previews: some View {
        ProfileHeaderView(profileDisplayName: $name)
            .previewLayout(.sizeThatFits)
    }
}

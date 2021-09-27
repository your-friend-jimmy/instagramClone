//
//  PostView.swift
//  DogGram
//
//  Created by James Phillips on 9/25/21.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel
    var showHeaderAndFooter: Bool
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            
            //MARK: - Header
            if showHeaderAndFooter {
                HStack {
                    Image("dog1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                        .cornerRadius(15)
                    
                    Text(post.username)
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .font(.headline)
                }
                .padding(.all,6)
            }
            
            //MARK: - Image
            
            Image("dog1")
                .resizable()
                .scaledToFit()
            
            //MARK: - Footer
            if showHeaderAndFooter{
                HStack(alignment: .center, spacing: 20) {
                    Image(systemName: "heart")
                    
                    //MARK: - Comment Icon
                    NavigationLink(destination: CommentsView()) {
                        Image(systemName: "bubble.middle.bottom")
                            .font(.title3)
                            .foregroundColor(.primary)
                    }
                    
                    
                    Image(systemName: "paperplane")
                    
                    Spacer()
                }
                .font(.title3)
                .padding(.all, 6)
                
                if let caption = post.caption {
                    HStack {
                        Text(caption)
                        
                        Spacer(minLength: 0)
                    }
                    .padding(.all, 6)
                }
                
            }
        })
    }
}

struct PostView_Previews: PreviewProvider {
    
    static var post: PostModel = PostModel(postID: "",
                                           userID: "",
                                           username: "Joe Green",
                                           caption: "This is a test caption",
                                           dateCreate: Date(),
                                           likeCount: 0,
                                           likedByUser: false)
    
    static var previews: some View {
        PostView(post: post, showHeaderAndFooter: true)
            .previewLayout(.sizeThatFits)
    }
}

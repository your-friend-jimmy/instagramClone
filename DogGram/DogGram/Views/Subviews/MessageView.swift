//
//  MessageView.swift
//  DogGram
//
//  Created by James Phillips on 9/26/21.
//

import SwiftUI

struct MessageView: View {
    
    @State var comment: CommentModel
    
    var body: some View {
        HStack {
            
            //MARK: - Profile Image
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            VStack(alignment: .leading, spacing: 4) {
                
                //MARK: - User name
                Text(comment.username)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                //MARK: - Content
                Text(comment.content)
                    .padding(.all,10)
                    .foregroundColor(.primary)
                    .background(Color.gray)
                    .cornerRadius(10)
            }
            
            Spacer(minLength: 0)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    
    static var  comment: CommentModel = CommentModel(commentID: "", userID: "", username: "Joe Green", content: "This photo is really cool", dateCreated: Date())
    
    static var previews: some View {
        MessageView(comment: comment)
            .previewLayout(.sizeThatFits)
    }
}

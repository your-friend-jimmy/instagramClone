//
//  PostModel.swift
//  DogGram
//
//  Created by James Phillips on 9/25/21.
//

import Foundation
import SwiftUI

struct PostModel: Identifiable, Hashable {
    
    let id = UUID()
    var postID: String // ID for the Database
    var userID: String // ID for the user in Database
    var username: String // Username of user in Database
    var caption: String?
    var dateCreate: Date
    var likeCount: Int
    var likedByUser: Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

}

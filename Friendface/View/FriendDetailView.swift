//
//  FriendDetailView.swift
//  Friendface
//
//  Created by Olivier Van hamme on 04/08/2021.
//

import SwiftUI

struct FriendDetailView: View {
   
   var friend: FriendModel
   
   
    var body: some View {
      Text(friend.name)
    }
}

struct FriendDetailView_Previews: PreviewProvider {
   
   static var exampleFriend: FriendModel = FriendModel(id: "1", name: "Dorothy")
   
    static var previews: some View {
      FriendDetailView(friend: exampleFriend)
    }
}

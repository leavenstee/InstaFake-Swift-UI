//
//  ContentView.swift
//  Instagram-SWUI
//
//  Created by Steven Lee on 6/4/19.
//  Copyright © 2019 leavenstee llc. All rights reserved.
//

import SwiftUI
import AVKit
import CoreLocation

struct ContentView : View {
    var instaPhotos: [InstaPhoto]
    
    var body: some View {
        List {
            ForEach(instaPhotos) { photo in
                PizzaCell(photo: photo)
            }
        }
       
    }
    
    func takePhoto() {
       // Open Camera
        
    }
  
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(instaPhotos: [InstaPhoto(id: 0, username: "leavenstee", comments: ["Nice", "Cool","Lame"], likes: 100, image: "wwdc"),InstaPhoto(id: 0, username: "leavenstee", comments: ["Nice", "Cool","Lame","Nice", "Cool","Lame"], likes: 200, image: "pizza"),
                                  InstaPhoto(id: 0, username: "leavenstee", comments: ["Nice", "Cool","Lame","Nice", "Cool","Lame","Nice", "Cool","Lame","Nice", "Cool","Lame"], likes: 4440, image: "wwdc"),InstaPhoto(id: 0, username: "leavenstee", comments: ["Nice", "Cool"], likes: 20, image: "badge")])
    }
}
#endif

struct PizzaCell : View {
    @State var expanded = false
    @State var liked = false
    
    let photo: InstaPhoto
    
    var body: some View {
        return VStack(alignment: .leading) {
            Image(photo.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            // Control Buttons
            HStack {
                Button(action: withAnimation { likeButtonPressed }, label: {
                    Text( self.liked ? "❤️" :"💔")
                })
                Button(action: commentButtonPressed, label: {
                    Text("🗣")
                })
                Button(action: likeButtonPressed, label: {
                    Text("📪")
                })
                Spacer()
                Button(action: likeButtonPressed, label: {
                    Text("📕")
                })
            }
            Text("\(photo.likes) Likes")
                .multilineTextAlignment(.leading)
                Text(photo.username)
                    .multilineTextAlignment(.leading)
            Button(action: moreCommentsPressed, label: {
                Text("View All \(photo.comments.count) Comments")
                    .fontWeight(.light)
            })
            if expanded {
                VStack {
                    Text("Test Comment")
                    Text("Test Comment")
                    Text("Test Comment")
                    Text("Test Comment")
                }
            }
        }
    }
    func moreCommentsPressed() {
        expanded.toggle()
    }
    func likeButtonPressed() {
        liked.toggle()
    }

    func commentButtonPressed() {
       
    }

    func shareButtonPressed() {
    
    }

    func bookMarkButtonPressed() {
    
    }
}


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
    var instaPhotos: [InstaPhoto] = [InstaPhoto(id: 0, username: "leavenstee", comments: ["Nice", "Cool","Lame"], likes: 100, image: "burrito"),InstaPhoto(id: 0, username: "leavenstee", comments: ["Nice", "Cool","Lame","Nice", "Cool","Lame"], likes: 200, image: "pizza"),
    InstaPhoto(id: 0, username: "leavenstee", comments: ["Nice", "Cool","Lame","Nice", "Cool","Lame","Nice", "Cool","Lame","Nice", "Cool","Lame"], likes: 4440, image: "wwdc"),InstaPhoto(id: 0, username: "leavenstee", comments: ["Nice", "Cool"], likes: 20, image: "badge")]
    
    var body: some View {
        NavigationView {
        ZStack(alignment: .bottom) {
            List(instaPhotos) { photo in
                PizzaCell(photo: photo)
            }
            Button(action: takePhoto, label: {
                Image("photo-camera")
                }).background(Color.gray).cornerRadius(30)
        }
        }.navigationBarTitle(Text("WWDC-Gram").bold())
    }
    
    func takePhoto() {
       // Open Camera
      
    }
  
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct PizzaCell : View {
    let photo: InstaPhoto
    var body: some View {
        return VStack(alignment: .leading) {
        Image(photo.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            PictureButtons()
            Text("\(photo.likes) Likes")
                .multilineTextAlignment(.leading)
                Text(photo.username)
                    .multilineTextAlignment(.leading)
            Button(action: {}, label: {
                Text("View All \(photo.comments.count) Comments")
                    .fontWeight(.light)
            })
        }
    }
}

struct PictureButtons : View {
    var body: some View {
        return HStack {
            Button(action: likeButtonPressed, label: {
                Text("❤️")
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
                    }
    func likeButtonPressed() {
        
    }
    
    func commentButtonPressed() {
        
    }
    
    func shareButtonPressed() {
        
    }
    
    func bookMarkButtonPressed() {
        
    }
                }

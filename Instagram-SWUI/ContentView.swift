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
    var instaPhotos: [InstaPhoto] = []
    
    var body: some View {
        NavigationView {
        ZStack(alignment: .bottom) {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) {_ in
                PizzaCell()
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
    var body: some View {
        return VStack(alignment: .leading) {
        Image("burrito")
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            PictureButtons()
            Text("Likes 200")
                .multilineTextAlignment(.leading)
                Text("Pizza Pizza")
                    .multilineTextAlignment(.leading)
            Button(action: {}, label: {
                Text("View All 5 Comments")
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

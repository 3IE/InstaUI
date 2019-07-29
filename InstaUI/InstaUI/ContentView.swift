//
//  ContentView.swift
//  InstaUI
//
//  Created by yassir ramdani on 28/07/2019.
//  Copyright © 2019 yassir ramdani. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                StoriesView()
                PostCell()
            }.navigationBarTitle("InstaUI", displayMode: .inline)
        }
    }
}

struct PostCell: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            // Header
            HStack {
                Image("Avatar")
                VStack(alignment: .leading){
                    Text("pieroborgo")
                        .font(Font.system(size: 13.5))
                    Text("Milan, Italy")
                        .font(Font.system(size: 11.5))
                }
                Spacer()
                Image("More")
            }
            
            // Post
            Image("Photo")
                .resizable()
                .scaledToFit()
                .padding(.leading, -20)
                .padding(.trailing, -20)
            
            // Barre horizontale
            HStack(alignment: .center) {
                Image("Like")
                Image("Comment")
                Image("Send")
                Spacer()
                Image("Collect")
            }
            
            // Le nombre de Likes
            Text("Liked by leeviahq and 621 others")
                .font(Font.system(size: 13.5))
            
            // La description
            Text("pieroborgo Thanks for dowloading this freebie ❤️ #freebie #instagram #sketch")
                            .lineLimit(4)
                            .font(Font.system(size: 12.5))
                            .foregroundColor(.init(white: 0.2))
        }
    }
}

struct StoriesView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            // Stories text + Watch all
            HStack {
               Text("Stories")
               Spacer()
               Image("Watch")
               Text("Watch all")
            }
            
            // Stories Circles
            ScrollView([.horizontal], showsIndicators: false){
                HStack {
                    VStack {
                        ZStack(alignment: .bottomTrailing) {
                            Image("AvatarBig")
                            Image("Add")
                        }
                        Text("Your Story")
                            .font(Font.system(size: 13.5))
                    }.padding(.trailing, 12)
                    
                    
                    VStack {
                        ZStack {
                            Image("Border")
                            Image("AvatarBig1")
                        }
                        Text("beardguy")
                            .font(Font.system(size: 13.5))
                    }.padding(.trailing, 12)
                    
                    
                    VStack {
                        ZStack {
                            Image("Border")
                            Image("AvatarBig2")
                        }
                        Text("elleranas")
                            .font(Font.system(size: 13.5))
                    }.padding(.trailing, 12)
                   
                    
                    VStack {
                        ZStack {
                            Image("Border")
                            Image("AvatarBig3")
                        }
                        Text("Ally")
                            .font(Font.system(size: 13.5))
                    }.padding(.trailing, 12)
                    
                    VStack {
                        ZStack {
                            Image("Border")
                            Image("AvatarBig4")
                        }
                        Text("grandpa")
                            .font(Font.system(size: 13.5))
                    }.padding(.trailing, 12)
                    
                    
                    
                }.padding(.leading, 16)
            }.padding(.leading, -20)
             .padding(.trailing, -20)

        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

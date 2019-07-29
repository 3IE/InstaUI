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

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

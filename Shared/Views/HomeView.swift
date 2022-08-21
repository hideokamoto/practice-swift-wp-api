//
//  HomeView.swift
//  swift_wordpress
//
//  Created by 岡本秀高 on 2022/08/21.
//

import SwiftUI

struct HomeView: View {
    @StateObject var wpPosts = WPPosts()
    
    var body: some View {
        NavigationView {
            VStack {
                List(wpPosts.posts) {post in
                    NavigationLink {
                        PostDetailView(post: post)
                    } label: {
                        ListPostView(post: post)
                    }
                }
            }.onAppear {
                Task {
                    await wpPosts.listPosts()
                }
            }
        }.navigationTitle("Posts")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  PostDetailView.swift
//  swift_wordpress
//
//  Created by 岡本秀高 on 2022/08/21.
//

import SwiftUI

struct PostDetailView: View {
    var post: WPPost
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text(post.title.rendered)
                    .font(.largeTitle)
                Text(post.date)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Spacer()
                Divider()
                HTMLStringView(htmlContent: post.content.rendered)
            }.padding()
        }//.navigationTitle(post.title.rendered)
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(
            post: WPPost(
                id: 1,
                title: WPPostRendered(rendered: "Title"),
                excerpt: WPPostRendered(rendered: "Excrpt"),
                content: WPPostRendered(rendered: "<h1>content<h1>"),
                date: "2022/01/01"
            )
        )
    }
}

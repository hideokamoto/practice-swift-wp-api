//
//  ListPostView.swift
//  swift_wordpress
//
//  Created by 岡本秀高 on 2022/08/21.
//

import SwiftUI

struct ListPostView: View {
    var post: WPPost
    var body: some View {
        VStack (alignment: .leading) {
            Text(post.title.rendered)
                .font(.title2)
            Text(post.date)
                .font(.footnote)
            Spacer()
        }.padding()
    }
}

struct ListPostView_Previews: PreviewProvider {
    static var previews: some View {
        List{
            ListPostView(
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
}

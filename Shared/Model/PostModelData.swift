//
//  PostModelData.swift
//  swift_wordpress
//
//  Created by 岡本秀高 on 2022/08/21.
//

import Foundation

class WPPosts: ObservableObject {
    @Published var posts: [WPPost] = []
    
    func listPosts() async {
        guard let request_url = URL(
            string: "https://wp-api.wp-kyoto.net/wp-json/wp/v2/posts"
        ) else {
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: request_url)
            let items = try JSONDecoder().decode([WPPost].self, from:data)
            DispatchQueue.main.async {
                self.posts.removeAll()
            }
            for item in items {
                let post = WPPost(
                    id: item.id,
                    title: item.title,
                    excerpt: item.excerpt,
                    content: item.content,
                    date: formatWPDate(date: item.date, format: "yyyy/MM/dd HH:mm")
                )
                DispatchQueue.main.async {
                    self.posts.append(post)
                }
            }
        } catch {
            print("Error \(error)")
            return
        }
        
    }
}

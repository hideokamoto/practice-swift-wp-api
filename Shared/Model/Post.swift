//
//  Post.swift
//  swift_wordpress
//
//  Created by 岡本秀高 on 2022/08/21.
//

import Foundation

struct WPPostRendered: Codable {
    var rendered: String
}

struct WPPost: Codable, Identifiable {
    let id: Int
    let title: WPPostRendered
    let excerpt: WPPostRendered
    let content: WPPostRendered
    let date: String
}

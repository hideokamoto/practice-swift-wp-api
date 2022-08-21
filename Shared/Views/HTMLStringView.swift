//
//  HTMLStringView.swift
//  swift_wordpress
//
//  Created by 岡本秀高 on 2022/08/21.
//

import SwiftUI
import RichText

struct HTMLStringView: View {
    let htmlContent: String
    var body: some View {
            RichText(html: htmlContent)
                .lineHeight(170)
                .colorScheme(ColorScheme.auto)
                .imageRadius(12)
                .fontType(FontType.system)
                .foregroundColor(light: Color.primary, dark: Color.primary)
                .linkColor(light: Color.blue, dark: Color.blue)
                .colorPreference(forceColor: .onlyLinks)
                .customCSS("")
                .placeholder {
                    Text("loading")
                }
    }
}

struct HTMLStringView_Previews: PreviewProvider {
    static var previews: some View {
        HTMLStringView(
        htmlContent: "<h1>Hello</h1><bold>world</b>")
    }
}

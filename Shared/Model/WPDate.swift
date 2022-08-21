//
//  WPDate.swift
//  swift_wordpress
//
//  Created by 岡本秀高 on 2022/08/21.
//

import Foundation

func formatWPDate(date: String, format: String) -> String {
    let formatter: DateFormatter = DateFormatter()
    formatter.calendar = Calendar(identifier: .gregorian)
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
    if let _date = formatter.date(from: date) {
        formatter.dateFormat = format
        print(_date)
        print(formatter.string(from: _date))
        return formatter.string(from: _date)
    } else {
        return ""
    }
}

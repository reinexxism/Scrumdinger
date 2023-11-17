//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by 최주현 on 11/17/23.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Frontend",
                   attendees: ["Joohyun", "Yerin", "Dahee", "Nahye", "Songeun", "Jaehyung", "Sarang"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "Backend",
                   attendees: ["Nanyoung", "Jaeseung", "Sunwook", "Seoeun", "Suyeon"],
                   lengthInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "ios",
                   attendees: ["Joohyun"],
                   lengthInMinutes: 5,
                   theme: .lavender)
    ]
}

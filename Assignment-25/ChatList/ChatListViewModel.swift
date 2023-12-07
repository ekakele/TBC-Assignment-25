//
//  ChatListViewModel.swift
//  Assignment-25
//
//  Created by Eka Kelenjeridze on 07.12.23.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let avatar: String
    let name: String
    let message: String
    let date: String
}


struct ChatList {
    static let dummyData = [
        User(
            avatar: "user1",
            name: "Francisco Miles",
            message: "I went there yesterday",
            date: "18:14"
        ),
        User(
            avatar: "user2",
            name: "Arlene Fisher",
            message: "IDK what else is there to do",
            date: "22:31"
        ),
        User(
            avatar: "user3",
            name: "Darlene Hawkins",
            message: "No, I can't come tomorrow.",
            date: "Yesterday"
        ),
        User(
            avatar: "user4",
            name: "Eduardo Mckinney",
            message: "Go to hell",
            date: "Yesterday"
        ),
        User(
            avatar: "user5",
            name: "Aubrey Cooper",
            message: "I hope it goes well.",
            date: "Friday"
        ),
        User(
            avatar: "user6",
            name: "Jorge Nguyen",
            message: "So, what's your plan this weekend?",
            date: "Thursday"
        ),
        User(
            avatar: "user7",
            name: "Cody Cooper",
            message: "What's the progress on that task?",
            date: "Tuesday"
        ),
        User(
            avatar: "user8",
            name: "Kristin Pena",
            message: "Yeah! You're right.",
            date: "7/22/20"
        ),
        User(
            avatar: "user9",
            name: "Brandie Watson",
            message: "I went there yesterday",
            date: "8/19/20"
        ),
        User(
            avatar: "user10",
            name: "Stella Henry",
            message: "Martinique",
            date: "9/15/20"
        ),
        User(
            avatar: "user1",
            name: "Francisco Miles",
            message: "I went there yesterday",
            date: "18:14"
        ),
        User(
            avatar: "user2",
            name: "Arlene Fisher",
            message: "IDK what else is there to do",
            date: "22:31"
        ),
        User(
            avatar: "user3",
            name: "Darlene Hawkins",
            message: "No, I can't come tomorrow.",
            date: "Yesterday"
        ),
        User(
            avatar: "user4",
            name: "Eduardo Mckinney",
            message: "Go to hell",
            date: "Yesterday"
        ),
        User(
            avatar: "user5",
            name: "Aubrey Cooper",
            message: "I hope it goes well.",
            date: "Friday"
        ),
        User(
            avatar: "user6",
            name: "Jorge Nguyen",
            message: "So, what's your plan this weekend?",
            date: "Thursday"
        ),
        User(
            avatar: "user7",
            name: "Cody Cooper",
            message: "What's the progress on that task?",
            date: "Tuesday"
        ),
        User(
            avatar: "user8",
            name: "Kristin Pena",
            message: "Yeah! You're right.",
            date: "7/22/20"
        ),
        User(
            avatar: "user9",
            name: "Brandie Watson",
            message: "I went there yesterday",
            date: "8/19/20"
        ),
        User(
            avatar: "user10",
            name: "Stella Henry",
            message: "Martinique",
            date: "9/15/20"
        )
    ]
}

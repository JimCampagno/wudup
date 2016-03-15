//
//  Post.swift
//  Wudup


import Foundation


protocol Post: CustomStringConvertible {
    var type: PostType { get }
    var page: PersonPage { get }
}

enum PostType: String {
    case YouTube, Book, Article, Song, Message, Location, Meal, Photo
}

struct MessagePost: Post {
    
    let type: PostType
    unowned let page: PersonPage
    var message: String
    var description: String {
        return message
    }
    
    init(type: PostType = .Message, page: PersonPage, message: String) {
        self.type = type
        self.page = page
        self.message = message
    }
    
}
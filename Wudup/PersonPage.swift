//
//  PersonPage.swift
//  Wudup


import UIKit

class PersonPage {
    
    var name: String
    let uniqueID: String
    var posts = [String: [Post]]() {
        didSet {
            print("Did Set")
        }
        
    }
    
    
    init(name: String, uniqueID: String) {
        self.name = name
        self.uniqueID = uniqueID
        
        let types: [PostType] = [.Message, .YouTube, .Book, .Article, .Song, .Message, .Location, .Meal, .Photo]
        types.forEach(){ type in
            posts[type.rawValue] = [Post]()
        }
    }
    
}

//MARK: Posts
extension PersonPage {
    
    func add(post: Post) {
        let key = post.type.rawValue
        var postsOfType = posts[key]!
        postsOfType.append(post)
        posts[key] = postsOfType
    }
    
    
    func test() {
        print(__FUNCTION__)
        let testPage = PersonPage(name: "Jim", uniqueID: "123456")
        testPage.add(MessagePost(page: testPage, message: "Hi there."))
        print(testPage.posts)
    }
    
}




//MARK: Equatable
extension PersonPage: Equatable {}

func ==(lhs: PersonPage, rhs: PersonPage) -> Bool {
    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
}

//MARK: Hashable
extension PersonPage: Hashable {
    
    var hashValue: Int {
        return name.hashValue ^ uniqueID.hashValue
    }
    
}

//MARK: CustomStringConvertible
extension PersonPage: CustomStringConvertible {
    
    var description: String {
        let descriptionDictionary = ["name": name, "uniqueID": uniqueID]
        return descriptionDictionary.description
    }
    
}


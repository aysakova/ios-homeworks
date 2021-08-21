//
//  Post.swift
//  Navigation
//
//  Created by Artem Novichkov on 12.09.2020.
//  Copyright © 2020 Artem Novichkov. All rights reserved.
//

struct Post {
    
    let author: String
    let description: String
    let image: String
    let likes: Int
    let views: Int
}

let postPolitics = Post(author: "Famous politician", description: "What's the world coming to?\nWe have no clue what's going to hapeen next.", image: "politics", likes: 5, views: 5)

let postEconomics = Post(author: "Famous economist", description: "S&P500 crashed amidst threat of nuclear attack from Wakanda government.", image: "economics", likes: 20, views: 20)

let postGossip = Post(author: "Famous instagrammer", description: "Brad Pitt and Angelina Jolie are back together! \nThe couple threw a wedding party on the bride's private island.", image: "gossip", likes: 123, views: 1000)

let postHealth = Post(author: "Famous bodybuilder", description: "Gut microbiome is said to affect brain activity.\n The scientinsts from ALabama Univeristy linked a diet high in fiber to prolonged cognitive benefits in humans.", image: "health", likes: 1, views: 2)

let arrayOfPosts = [postPolitics, postEconomics, postGossip, postHealth]

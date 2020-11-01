//
//  MovieAPI.swift
//  Escaping Example
//
//  Created by Fomagran on 2020/10/31.
//

import Foundation

class MovieAPI {
    
    static var movies: [Movie] = []
    
    static func getMovieWithEscaping(completion:@escaping (Bool, [Movie]) -> Void)  {
        //API실행가정
        for movie in moviesArray {
            movies.append(movie)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            //클로져 탈출
            completion(true,movies)
        }
        
    }
    
//   noEscape 오류예제
    static func getMovieNoEscaping(completion:(Bool, [Movie]) -> Void) {
        //API실행가정
        for movie in moviesArray {
            movies.append(movie)
        }
        //Error 클로쳐 탈출불가
        DispatchQueue.main.async {
            completion(true,movies)
        }

    }
    
    //escaping없이 비동기 처리하기
    static func getMovieNoCompletion() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            for movie in moviesArray {
                movies.append(movie)
            }
            //다 끝나면 Notification으륳 알려줘
            NotificationCenter.default.post(name: NSNotification.Name("getMovie"), object: nil, userInfo: ["movies":movies])
        }
    }
}

let joker = Movie(image: #imageLiteral(resourceName: "Joker"), title: "Joker")
let marathon = Movie(image: #imageLiteral(resourceName: "Marathon"), title: "Marathon")
let monster = Movie(image: #imageLiteral(resourceName: "Monster"), title: "Monster")
let parasite = Movie(image: #imageLiteral(resourceName: "Parasite"), title: "Parasite")
let money = Movie(image: #imageLiteral(resourceName: "Money"), title: "Money")
let her = Movie(image: #imageLiteral(resourceName: "Her"), title: "Her")
let silece = Movie(image: #imageLiteral(resourceName: "Silence"), title: "Silence")
let exit = Movie(image: #imageLiteral(resourceName: "Exit"), title: "Exit")
let number = Movie(image: #imageLiteral(resourceName: "1987"), title: "1987")
let mother = Movie(image: #imageLiteral(resourceName: "Mother"), title: "Mother")
let okja = Movie(image: #imageLiteral(resourceName: "Okja"), title: "Okja")

let moviesArray = [joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja,joker,marathon,money,mother,monster,parasite,her,silece,exit,number,mother,okja]

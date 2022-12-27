//
//  RecordRouter.swift
//  RD-NetworkTests
//
//  Created by Junho Lee on 2022/10/14.
//  Copyright © 2022 RecorDream. All rights reserved.
//

import Foundation

import Alamofire

enum RecordRouter {
    case writeRecord(title: String, date: String, content: String?, emotion: Int?, genre: [Int]?, note: String?, voice: String?)
    case searchRecord(keyword: String)
}

extension RecordRouter: BaseRouter {
    var method: HTTPMethod {
        switch self {
        case .writeRecord:
            return .post
        case .searchRecord:
            return .get
        }
    }
    
    var path: String {
        switch self {
        case .writeRecord:
            return "/record"
        case .searchRecord:
            return "/record/storage/search"
        }
    }
    
    var parameters: RequestParams {
        switch self {
        case .writeRecord(let title, let date, let content, let emotion, let genre, let note, let voice):
            let requestBody: [String: Any] = [
                "title": title,
                "date": date,
                "content": content,
                "emotion": emotion,
                "genre": genre,
                "note": note,
                "voice": voice
            ]
            return .requestBody(requestBody)
        case .searchRecord(let keyword):
            let query: [String: Any] = [
                "keyword": keyword
            ]
            return .query(query, parameterEncoding: parameterEncoding)
        }
    }
    
    var parameterEncoding: ParameterEncoding {
        switch self {
        case .searchRecord:
            return URLEncoding.init(destination: .queryString)
        default:
            return JSONEncoding.default
        }
    }
}

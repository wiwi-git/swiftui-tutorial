//
//  ModelData.swift
//  Landmarks
//
//  Created by apple on 2023/06/12.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("메인 번들에서 \(fileName)을(를) 찾을 수 없습니다.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("메인 번들에서 \(fileName)을 로드할 수 없습니다:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch let err {
        fatalError("변환 실패 \(fileName) as \(T.self): \n\(err)")
    }
}

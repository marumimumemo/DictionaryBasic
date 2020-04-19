//
//  ViewController.swift
//  DictionaryBasic
//
//  Created by satoshi.marumoto on 2020/04/19.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Dictionary宣言方法①
        let result: Dictionary<String, String> = ["英語": "a", "体育": "b"]
        print(result)
        // 値の取り出し
        guard let taiku = result["体育"] else { return }
        print(taiku)
        
        // Dictionary宣言方法②
        var point: [String: Int] = ["理科": 70, "社会": 80]
        print(point)
        // 値の取り出し
        guard let society = point["社会"] else { return }
        print(society)
        // 値の追加
        point["数学"] = 50
        print(point)
        
        // 値の削除
        var check: [String: String] = ["文学": "a", "生命科学": "b"]
        print(check)
        check["生命科学"] = nil
        print(check)
        
        // Dictionary宣言方法③ 型推論
        var animal = ["犬": 1, "猫": 2]
        print(animal)
        // 値の更新
        animal["猫"] = 3
        print(animal)
        
        // 空のDictionary宣言方法①
        let emptyDict: [String: Int] = [:]
        print(emptyDict)
        
        // 空のDictionary宣言方法②
        let emptyDict2 = [String: Int]()
        print(emptyDict2)
        
        // Dictionaryの中身が空かチェックする
        if emptyDict.isEmpty {
            print("dictionary is empty.")
        } else {
            print("dictionary is not empty.")
        }
        
        // Dictionaryのデータ数をチェックする
        let artists = ["絵画": "石田尚志", "文学": "島田雅彦"]
        print(artists.count)
        
        // Keyだけをプリントする
        let artistsKeys = [String](artists.keys)
        print(artistsKeys)
        
        // Valueだけをプリントする
        let artistsValues = [String](artists.values)
        print(artistsValues)
        
        // for文でKEYとVALUEを取り出す
        var companies = ["Z" : "Zozotown", "O" : "OYO", "A" : "Apple", "G" : "Google", "AM" : "Amazon", "FB" : "Facebook", "M" : "Mercari"]

        for (key, value) in companies {
            print("\(key) -> \(value)")
        }
        
        // ソート
        let sortedDic = companies.sorted() { $0 < $1 }
        print(sortedDic)
        
        // KEYをソート
        let sortedKeys = Array(companies.keys).sorted(by: <)
        print(sortedKeys)
        
        // VALUEをソート
        let sortedValues = companies.sorted{ $0.value > $1.value }
        print(sortedValues)
        
        // keyの配列を取得
        let companiesKeys = Array(companies.keys)
        print(companiesKeys)
        
        // valueの配列を取得
        let companiesValues = Array(companies.values)
        print(companiesValues)
        
        // データ更新 update
        companies.updateValue("Metro", forKey: "M")
        print(companies)
        
        // データ更新 insert
        companies.updateValue("PPFM", forKey: "P")
        print(companies)
        
        // 指定したkeyのデータを削除
        companies.removeValue(forKey: "AM")
        print(companies)
        
        // 全削除
        companies.removeAll()
        print(companies)
        
        // filterをかける
        let fruits = ["Grape": 3, "Orange": 2, "Apple": 1]
        let filtered = fruits.filter { $0.value > 1 }
        print(filtered)
        
        // mapValues　全ての値に対して処理を加える
        let mapped = fruits.mapValues { $0 * 2 }
        print(mapped)
        
        
    }


}


//
//  String+AddText.swift
//  MyLocations_6th_iOS11
//
//  Created by Vlado Velkovski on 3/23/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//

extension String {
    mutating func add(text: String?, separatedBy separator: String = "") {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            self += text
        }
    }
}

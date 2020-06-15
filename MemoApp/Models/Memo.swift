//
//  Memo.swift
//  MemoApp
//
//  Created by KAWASHIMA Yoshiyuki on 2020/06/09.
//  Copyright © 2020 ykws. All rights reserved.
//

import Foundation

struct Memo: Hashable, Codable, Identifiable {
  var id = UUID()
  var title = "title"
  var body = "body"
}

//
//  Data.swift
//  MemoApp
//
//  Created by KAWASHIMA Yoshiyuki on 2020/06/10.
//  Copyright © 2020 ykws. All rights reserved.
//

import SwiftUI

class MemoData: ObservableObject {
  @Published var memos: [Memo] = []
  
  func store(memo: Memo) {
    if let index = memos.firstIndex(where: { $0.id == memo.id }) {
      memos[index] = memo
    } else {
      memos.insert(memo, at:0)
    }
  }
  
  func remove(memo: Memo) {
    guard let index = memos.firstIndex(where: { $0.id == memo.id }) else { return }
    memos.remove(at: index)
  }
}

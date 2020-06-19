//
//  MemoRow.swift
//  MemoApp
//
//  Created by KAWASHIMA Yoshiyuki on 2020/06/10.
//  Copyright © 2020 ykws. All rights reserved.
//

import SwiftUI

struct MemoRow: View {
  var memo: Memo
    
  var body: some View {
    HStack {
      Image(systemName: "doc.plaintext")
        .resizable()
        .frame(width: 20, height: 20)
        .padding(.leading, 10)
      VStack(alignment: .leading) {
        Text(memo.title)
          .lineLimit(1)
          .font(.headline)
          .padding(.leading, 10)
          .padding(.trailing, 20)
        Text(memo.body)
          .lineLimit(1)
          .font(.subheadline)
          .padding(.leading, 10)
          .padding(.trailing, 20)
          .padding(.top, 10)
          .padding(.bottom, 10)
      }
    }
  }
}

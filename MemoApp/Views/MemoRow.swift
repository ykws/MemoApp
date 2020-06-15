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
      Text(memo.title)
        .padding(.leading, 20)
      Spacer()
    }
  }
}
/*
struct MemoRow_Previews: PreviewProvider {
  static var previews: some View {
    MemoRow(memo: memoData[0])
      .previewLayout(.fixed(width: 300, height: 70))
  }
}
 */

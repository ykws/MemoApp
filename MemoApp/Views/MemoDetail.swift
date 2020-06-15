//
//  MemoDetail.swift
//  MemoApp
//
//  Created by KAWASHIMA Yoshiyuki on 2020/06/09.
//  Copyright © 2020 ykws. All rights reserved.
//

import SwiftUI

struct MemoDetail: View {
  var memo: Memo
    
  var body: some View {
    VStack {
      ScrollView {
        VStack(alignment: .leading) {
          Text(memo.title)
            .font(.title)
            .padding(.bottom, 20)
          HStack {
            Text(memo.body)
              .font(.subheadline)
            Spacer()
          }
          Spacer()
        }
        .padding()
      }
    }
  }
}

/*
struct MemoDetail_Previews: PreviewProvider {
    static var previews: some View {
        MemoDetail(memo: memoData[0])
    }
}
 */

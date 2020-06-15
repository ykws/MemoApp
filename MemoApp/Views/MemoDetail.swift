//
//  MemoDetail.swift
//  MemoApp
//
//  Created by KAWASHIMA Yoshiyuki on 2020/06/09.
//  Copyright © 2020 ykws. All rights reserved.
//

import SwiftUI

struct MemoDetail: View {
  @State var memo: Memo
  var onSave: (Memo) -> ()
    
  var body: some View {
    VStack {
      ScrollView {
        VStack(alignment: .leading) {
          TextField("title", text: $memo.title)
            .font(.title)
            .padding(.bottom, 20)
          HStack {
            TextField("body", text: $memo.body)
              .font(.subheadline)
            Spacer()
          }
          Spacer()
        }
        .padding()
      }
    }
    .onDisappear {
      self.onSave(self.memo)
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

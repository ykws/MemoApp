//
//  MemoList.swift
//  MemoApp
//
//  Created by KAWASHIMA Yoshiyuki on 2020/06/10.
//  Copyright © 2020 ykws. All rights reserved.
//

import SwiftUI

struct MemoList: View {
  @EnvironmentObject var memoData: MemoData
  @State var editing: Memo?

  var body: some View {
    NavigationView {
      VStack(alignment: .leading) {
        List(memoData.memos) { memo in
          NavigationLink(destination: MemoDetail(memo: memo, onSave: { memo in
            self.memoData.store(memo: memo)
          }, onDelete: { memo in
            self.memoData.remove(memo: memo)
          })) {
            MemoRow(memo: memo)
          }
        }
        .navigationBarTitle(Text("MemoApp"))
                
        Button(action: {
          self.memoData.store(memo: Memo())
        }) {
          Image(systemName: "plus.circle.fill")
            .resizable()
            .frame(width: 20, height: 20)
        }
        .padding(20)
      }
    }
  }
}

struct MemoList_Previews: PreviewProvider {
  static var previews: some View {
    MemoList()
  }
}

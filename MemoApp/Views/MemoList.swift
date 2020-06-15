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
  
  var body: some View {
    NavigationView {
      VStack(alignment: .leading) {
        List(memoData.memos) { memo in
          NavigationLink(destination: MemoDetail(memo: memo) { memo in
            self.memoData.store(memo: memo)
          }) {
            MemoRow(memo: memo)
          }
        }
        .navigationBarTitle(Text("MemoApp"))
                
        Button(action: {
          self.memoData.store(memo: Memo())
        }) {
          HStack {
            Image(systemName: "plus.circle.fill")
              .resizable()
              .frame(width: 20, height: 20)
            Text("New memo")
          }
        }
        .padding(.leading, 20)
      }
    }
  }
}

struct MemoList_Previews: PreviewProvider {
  static var previews: some View {
    MemoList()
  }
}

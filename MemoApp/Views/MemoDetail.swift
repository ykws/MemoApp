//
//  MemoDetail.swift
//  MemoApp
//
//  Created by KAWASHIMA Yoshiyuki on 2020/06/09.
//  Copyright © 2020 ykws. All rights reserved.
//

import SwiftUI

struct MemoDetail: View {
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  @State var memo: Memo
  var onSave: (Memo) -> ()
  var onDelete: (Memo) -> ()
    
  var body: some View {
    VStack {
      ScrollView {
        VStack(alignment: .leading) {
          TextField("title", text: $memo.title, onEditingChanged: { _ in
            self.onSave(self.memo)
          })
            .font(.title)
            .padding(.bottom, 20)
          HStack {
            TextField("body", text: $memo.body, onEditingChanged: { _ in
              self.onSave(self.memo)
            })
              .font(.subheadline)
            Spacer()
          }
          Spacer()
        }
        .padding()
      }
      .navigationBarItems(trailing: Button(action: {
        self.presentationMode.wrappedValue.dismiss()
        self.onDelete(self.memo)
      }) {
          Image(systemName: "trash.fill")
      })
    }
  }
}

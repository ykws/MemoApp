//
//  MemoList.swift
//  MemoApp
//
//  Created by KAWASHIMA Yoshiyuki on 2020/06/10.
//  Copyright © 2020 ykws. All rights reserved.
//

import SwiftUI

struct MemoList: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List(memoData) { memo in
                    NavigationLink(destination: MemoDetail(memo: memo)) {
                        MemoRow(memo: memo)
                    }
                }
                .navigationBarTitle(Text("MemoApp"))
                
                Button(action: { print("new") }) {
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

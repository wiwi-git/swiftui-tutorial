//
//  TestList.swift
//  swiftui-ex
//
//  Created by apple on 2023/06/13.
//

import SwiftUI

struct TestList: View {
    var body: some View {
        List {
            ForEach(0 ..< 10, id: \.self) { i in
                Text("item \(i)")
            }
        }
    }
}

struct TestList_Previews: PreviewProvider {
    static var previews: some View {
        TestList()
    }
}

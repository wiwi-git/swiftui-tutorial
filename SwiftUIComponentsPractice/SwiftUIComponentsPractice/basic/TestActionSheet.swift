//
//  TestActionSheet.swift
//  swiftui-ex
//
//  Created by apple on 2023/06/13.
//

import SwiftUI

struct TestActionSheet: View {
    @State var showActionSheet = false
    var body: some View {
        Button("sheet") {
            showActionSheet = true
        }
        .buttonStyle(.bordered)
        
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("Title"), buttons: [
                ActionSheet.Button.default(Text("text"), action: {
                    print("tap text")
                }),
                .default(Text("default")),
                .cancel()
            ])
        }
    }
}

struct TestActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        TestActionSheet()
    }
}

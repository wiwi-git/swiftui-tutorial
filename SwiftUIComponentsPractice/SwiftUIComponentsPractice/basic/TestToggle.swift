//
//  TestToggle.swift
//  swiftui-ex
//
//  Created by apple on 2023/06/13.
//

import SwiftUI

struct TestToggle: View {
    @State private var toggleValue: Bool = false
    
    var body: some View {
        Toggle(isOn: $toggleValue) {
            Text("토글 텍스트")
        }
    }
}

struct TestToggle_Previews: PreviewProvider {
    static var previews: some View {
        TestToggle()
    }
}

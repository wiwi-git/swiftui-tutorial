//
//  TestTextField.swift
//  swiftui-ex
//
//  Created by apple on 2023/06/13.
//

import SwiftUI

struct TestTextField: View {
    @State private var textValue: String = ""
        
    var body: some View {
        TextField("PlaceHolder...", text: $textValue)
    }
}

struct TestTextField_Previews: PreviewProvider {
    static var previews: some View {
        TestTextField()
    }
}

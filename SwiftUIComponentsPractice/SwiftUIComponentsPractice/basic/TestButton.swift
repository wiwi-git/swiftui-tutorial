//
//  TestButton.swift
//  swiftui-ex
//
//  Created by apple on 2023/06/13.
//

import SwiftUI

struct TestButton: View {
    var body: some View {
        VStack {
            Button {
                print("Tap")
            } label: {
               Text("Tap me!")
            }
            .padding()
            
            Button {
                print("Tap")
            } label: {
               Text("Tap me!")
            }
            .buttonStyle(.bordered)
            .padding()
            
            Button {
                print("Tap")
            } label: {
               Text("Tap me!")
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
            Button {
                print("Tap")
            } label: {
               Text("Tap me!")
            }
            .buttonStyle(.plain)
            .font(.headline)
            .padding()
        }
    }
}

struct TestButton_Previews: PreviewProvider {
    static var previews: some View {
        TestButton()
    }
}

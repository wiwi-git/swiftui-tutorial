//
//  TestAlert.swift
//  swiftui-ex
//
//  Created by apple on 2023/06/13.
//

import SwiftUI

struct TestAlert: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Text("Show Alert")
        }
        .alert("title", isPresented: $showingAlert) {
            Button("OK", role: .cancel) {
                print("tap ok")
            }
            Button("NO", role: .destructive) {
                print("tap no")
            }
        }
        /*
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Title"), message: Text("This is a alert message"), dismissButton: .default(Text("Dismiss")))
        }
        */
    }
}

struct TestAlert_Previews: PreviewProvider {
    static var previews: some View {
        TestAlert()
    }
}

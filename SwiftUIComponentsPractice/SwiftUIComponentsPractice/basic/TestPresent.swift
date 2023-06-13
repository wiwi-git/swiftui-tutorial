//
//  TestPresent.swift
//  swiftui-ex
//
//  Created by apple on 2023/06/13.
//

import SwiftUI
struct ModalView: View {
    @Binding var isShow: Bool
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            VStack {
                Button("close") {
                    isShow = false
                }
                .frame(height: 50)
                
                Text("hello world")
            }
            .background(.green)
        }
    }
}

struct TestPresent: View {
    @State private var fullShow = false
    @State private var modalShow = false
    
    var body: some View {
        
        VStack {
            Button("Present0") {
                self.fullShow = true
            }
            .padding()
            
            Button("Present1") {
                self.modalShow = true
            }
            .padding()
            
            .sheet(isPresented: $modalShow) {
                ModalView(isShow: $modalShow)
            } // 아직도 애네들이 어떻게 붙어서 동작하는지 이해가 안간다.
        }
        .fullScreenCover(isPresented: $fullShow) {
            ModalView(isShow: $fullShow)
        } // 도대체 넌 어떻게 붙어서 동작하는거니 uikit처럼 타겟설정하는게 좋은데 말야 
    }
}

struct TestPresent_Previews: PreviewProvider {
    static var previews: some View {
        TestPresent()
    }
}

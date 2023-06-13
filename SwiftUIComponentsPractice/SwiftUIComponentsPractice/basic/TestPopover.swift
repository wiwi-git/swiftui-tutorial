//
//  TestPopover.swift
//  swiftui-ex
//
//  Created by apple on 2023/06/13.
//

import SwiftUI

struct TestPopover: View {
    @State var show = false
    
    var body: some View {
        Button("popover") {
            show = true
        }
        
        .popover(isPresented: $show) {
            HStack {
              Text("New Popover")
            }
            .frame(width: 500, height: 500)
            .background(Color.red)
            //왜 인지 시트랑 똑같은게 뜨는데, 버그인지 같은건지 모르겠다
        }
    }
}

struct TestPopover_Previews: PreviewProvider {
    static var previews: some View {
        TestPopover()
    }
}

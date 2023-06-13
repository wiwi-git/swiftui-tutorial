//
//  TestLazyGrid.swift
//  swiftui-ex
//
//  Created by apple on 2023/06/13.
//

import SwiftUI

struct TestLazyGrid: View {
    let layout: [GridItem] = [
        GridItem(.flexible(minimum: 40, maximum: 100)),
        GridItem(.flexible(minimum: 40, maximum: 100)),
    ]
    
    var body: some View {
        VStack(alignment: .center) {
            ScrollView(.vertical) {
                LazyVGrid(columns: layout) {
                    ForEach(0 ..< 100, id: \.self) { index in
                        Text("item \(index)")
                            .frame(height: 30)
                    }
                }
            }
            .frame(maxHeight: .infinity)
            .background(.yellow)
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: layout) {
                    ForEach(0 ..< 100, id: \.self) { index in
                        Text("item \(index)")
                            .frame(height: 30)
                    }
                }
            }
            .frame(maxHeight: .infinity)
        }
    }
}

struct TestLazyGrid_Previews: PreviewProvider {
    static var previews: some View {
        TestLazyGrid()
    }
}

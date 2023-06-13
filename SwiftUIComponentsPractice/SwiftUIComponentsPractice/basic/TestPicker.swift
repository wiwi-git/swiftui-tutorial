//
//  TestPicker.swift
//  swiftui-ex
//
//  Created by apple on 2023/06/13.
//

import SwiftUI

struct TestPicker: View {
    @State var select = "Apple"
    
    var fruits = ["Apple", "Apricot", "Banana", "Pear"]
    
    var body: some View {
        VStack(alignment: .leading) {
            Picker("picker 타이틀", selection: $select) {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                }
            }
            .pickerStyle(.inline)
            .background(.red)
            
            Picker(selection: $select, label: Text("Fruit")) {
                ForEach(fruits, id: \.self) {
                    Text($0)
                }
            }
            .background(.green)
            
            NavigationView {
                Picker(selection: $select, label: Text("Fruit")) {
                    ForEach(fruits, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.navigationLink)
                .background(Color.mint)
            }
            
            Picker("title", selection: $select) {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                }
            }
            .pickerStyle(.segmented)
            .background(Color.orange)
            
        }.padding()
    }
}

struct TestPicker_Previews: PreviewProvider {
    static var previews: some View {
        TestPicker()
    }
}

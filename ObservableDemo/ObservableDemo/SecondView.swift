//
//  SecondView.swift
//  ObservableDemo
//
//  Created by apple on 2023/06/15.
//
import SwiftUI

struct SecondView: View {
  @ObservedObject var timerData:TimerData
  
  var body: some View {
    VStack {
      Text("second view")
        .font(.largeTitle)
      Text("timer count \(timerData.timeCount)")
        .font(.headline)
    }
    .padding()
  }
}

struct SecondView_Previews: PreviewProvider {
  static var previews: some View {
    SecondView(timerData: TimerData())
  }
}

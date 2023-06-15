//
//  ContentView.swift
//  ObservableDemo
//
//  Created by apple on 2023/06/15.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var timerData:TimerData = .init()
  
  var body: some View {
    NavigationView {
      VStack {
        Text("Timer count = \(timerData.timeCount)")
          .font(.largeTitle)
          .fontWeight(.bold)
          .padding()
        Button {
          timerData.resetCount()
        } label: {
          Text("Reset Counter")
        }
        
        NavigationLink {
          SecondView(timerData: timerData)
        } label: {
          Text("next view")
        }

      }//vSTack
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

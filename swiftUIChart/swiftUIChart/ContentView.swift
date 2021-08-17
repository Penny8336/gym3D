//
//  ContentView.swift
//  swiftUIChart
//
//  Created by 羅珮珊 on 2021/8/17.
//

import SwiftUICharts
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //Bigger Line View
//            LineView(data: [12,5,8,12,15], title: "Line Chart")

            //Line chart
            LineChartView(data: [12,5,8,12,15], title: "Line Chart")
            Spacer()
            
            //Bar chart
            BarChartView(
                data: ChartData(values: [
                    ("B1", 12),
                    ("1F", 15),
                    ("2F", 6),
                    ("3F", 8),
                    ("3F", 10)
                ]),
                title: "Bar Chart")
            Spacer()
            
            //Pie chart
            PieChartView(data: [12,5,8,12,15], title: "Pie Chart")
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

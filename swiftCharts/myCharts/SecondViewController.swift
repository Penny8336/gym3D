//
//  SecondViewController.swift
//  myCharts
//
//  Created by 羅珮珊 on 2021/8/16.
//

import Charts
import UIKit

class SecondViewController: UIViewController, ChartViewDelegate {

    var linechart = LineChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        linechart.delegate = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        linechart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: view.frame.size.width)
        linechart.center = view.center
        view.addSubview(linechart)

        var entries = [ChartDataEntry]()
        for x in 0..<10{
            entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        }
        
        let set = LineChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.material()
        
        let data = LineChartData(dataSet: set)
        
        linechart.data = data
    }

}

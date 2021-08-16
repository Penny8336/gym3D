//
//  ViewController.swift
//  myCharts
//
//  Created by 羅珮珊 on 2021/8/16.
//

import UIKit
import Charts

class ViewController: UIViewController, ChartViewDelegate {

    var barchart = BarChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barchart.delegate = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        barchart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: view.frame.size.width)
        barchart.center = view.center
        view.addSubview(barchart)

        var entries = [BarChartDataEntry()]
        for x in 0..<10{
            entries.append(BarChartDataEntry(x: Double(x), y: Double(x)))
        }
        
        let set = BarChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.joyful()
        
        let data = BarChartData(dataSet: set)
        
        barchart.data = data
    }

}


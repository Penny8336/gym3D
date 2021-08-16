//
//  ThridViewController.swift
//  myCharts
//
//  Created by 羅珮珊 on 2021/8/16.
//

import Charts
import UIKit

class ThridViewController: UIViewController, ChartViewDelegate {

    var piechart = PieChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        piechart.delegate = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        piechart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: view.frame.size.width)
        piechart.center = view.center
        view.addSubview(piechart)

        var entries = [ChartDataEntry]()
        for x in 0..<10{
            entries.append(ChartDataEntry(x: Double(x), y: Double(x)))
        }
        
        let set = PieChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.colorful()
        
        let data = PieChartData(dataSet: set)
        
        piechart.data = data
    }

}

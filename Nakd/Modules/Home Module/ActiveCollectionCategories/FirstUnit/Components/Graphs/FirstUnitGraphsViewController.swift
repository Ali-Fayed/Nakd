//
//  FirstUnitGraphsViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 02/11/2021.
//

import Charts
import UIKit
class FirstUnitGraphsViewController: UIViewController, ChartViewDelegate {
    var pieChart = PieChartView()
    var entries = [ChartDataEntry]()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        title = "EducationGraphs".localized()
        pieChart.delegate = self
        chartsData ()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pieChart.frame = CGRect(x: 0, y: 0,
                                width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        pieChart.center = view.center
        view.addSubview(pieChart)
    }
    
    func chartsData () {
        for x in 0..<10 {
            entries.append (ChartDataEntry(x: Double(x), y: Double(x)))
        }
        let set = PieChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.joyful()
        let data = PieChartData(dataSet: set)
        pieChart.data = data
    }
}

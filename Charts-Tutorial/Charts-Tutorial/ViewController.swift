//
//  ViewController.swift
//  Charts-Tutorial
//
//  Created by 김도윤 on 10/20/21.
//

import UIKit
import Charts

class ViewController: UIViewController {
    @IBOutlet weak var lineChartView: LineChartView!
    @IBOutlet weak var piChartView: PieChartView!
    @IBOutlet weak var barChartView: BarChartView!
    
    let sampleDataSet = [1, 3, 5, 7, 9, 11, 13]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        graphLineChart(dataArr: sampleDataSet)
        //graphPiChart(dataArr: sampleDataSet)
        //graphBarChart(dataArr: sampleDataSet)
    }
    
    // Example code for plotting chart
    func graphLineChart(dataArr: [Int]) {
        
        // View size configuration: Make View have width and height both equal to width of screen
        lineChartView.frame = CGRect(x:0, y: 0, width: self.view.frame.width, height: self.view.frame.height / 2)
        
        // Make View center to be horizontally centered, but offset towards the top of the screen.
        lineChartView.center.x = self.view.center.x
        lineChartView.center.y = self.view.center.y - 240       // 240?
        
        // Initialize graph with empty dataset.
        var entries = [ChartDataEntry]()
        
        // For each element, set x and y coordinates in a data chart entry, and add to the entries arr
        // <Collection>.enumerated():
        //  Returns a sequence of pairs (n, x), where n represents a consecutive integer starting at zero and x represents an element of the sequence.
        for (index, element) in dataArr.enumerated() {
            let value = ChartDataEntry(x: Double(index), y: Double(element))
            entries.append(value)
        }
        
        // Use the entries object and a label string to make a LineChartDataSet Obj.
        let dataSet = LineChartDataSet(entries: entries, label: "Line Chart Example")
        
        // Customize graph setting.
        dataSet.colors = ChartColorTemplates.joyful()
        
        // Make Obj that will be added to the chart and set it to the variable in the Storyboard
        let lineChartData = LineChartData(dataSet: dataSet)
        lineChartView.data = lineChartData
        
        // Add setting for the chartView
        lineChartView.chartDescription?.text = "Pi Values"
        
        // Animations
        lineChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .linear)
                                    
    }
    
    func graphPiChart(dataArr: [Int]) {
        
        // View size configuration: Make View have width and height both equal to width of screen
        piChartView.frame = CGRect(x:0, y: 0, width: self.view.frame.width, height: self.view.frame.height / 2)
        
        // Make View center to be horizontally centered, but offset towards the top of the screen.
        piChartView.center.x = self.view.center.x
        piChartView.center.y = self.view.center.y - 240       // 240?
        
        // Initialize graph with empty dataset.
        var entries = [ChartDataEntry]()
        
        // For each element, set x and y coordinates in a data chart entry, and add to the entries arr
        // <Collection>.enumerated():
        //  Returns a sequence of pairs (n, x), where n represents a consecutive integer starting at zero and x represents an element of the sequence.
        for (index, element) in dataArr.enumerated() {
            let value = ChartDataEntry(x: Double(index), y: Double(element))
            entries.append(value)
        }
        
        // Use the entries object and a label string to make a LineChartDataSet Obj.
        let dataSet = PieChartDataSet(entries: entries, label: "Line Chart Example")
        
        // Customize graph setting.
        dataSet.colors = ChartColorTemplates.joyful()
        
        // Make Obj that will be added to the chart and set it to the variable in the Storyboard
        let PieChartData = PieChartData(dataSet: dataSet)
        piChartView.data = PieChartData
        
        // Add setting for the chartView
        piChartView.chartDescription?.text = "Pi Values"
        
        // Animations
        piChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .linear)
        
    }
    
    func graphBarChart(dataArr: [Int]) {
        
        // View size configuration: Make View have width and height both equal to width of screen
        barChartView.frame = CGRect(x:0, y: 0, width: self.view.frame.width, height: self.view.frame.height / 2)
        
        // Make View center to be horizontally centered, but offset towards the top of the screen.
        barChartView.center.x = self.view.center.x
        barChartView.center.y = self.view.center.y - 240       // 240?
        
        // Initialize graph with empty dataset.
        var entries = [ChartDataEntry]()
        
        // For each element, set x and y coordinates in a data chart entry, and add to the entries arr
        // <Collection>.enumerated():
        //  Returns a sequence of pairs (n, x), where n represents a consecutive integer starting at zero and x represents an element of the sequence.
        for (index, element) in dataArr.enumerated() {
            let value = ChartDataEntry(x: Double(index), y: Double(element))
            entries.append(value)
        }
        
        // Use the entries object and a label string to make a LineChartDataSet Obj.
        let dataSet = BarChartDataSet(entries: entries, label: "Line Chart Example")
        
        // Customize graph setting.
        dataSet.colors = ChartColorTemplates.joyful()
        
        // Make Obj that will be added to the chart and set it to the variable in the Storyboard
        let barChartData = BarChartData(dataSet: dataSet)
        barChartView.data = barChartData
        
        // Add setting for the chartView
        barChartView.chartDescription?.text = "Pi Values"
        
        // Animations
        barChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .linear)
        
    }

}


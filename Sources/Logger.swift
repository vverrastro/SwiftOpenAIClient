//
//  File.swift
//  
//
//  Created by Vito Verrastro on 27/02/24.
//

import Foundation

enum LogLevel: Int {
    case debug = 1, info, warning, error
}

class Logger {
    static let shared = Logger()
    var logLevel: LogLevel = .debug // Default
    
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
        return formatter
    }

    func log(message: String, level: LogLevel) {
        guard level.rawValue >= self.logLevel.rawValue else { return }
        let timestamp = dateFormatter.string(from: Date())
        print("[\(timestamp)] [\(level)] \(message)")
    }
}

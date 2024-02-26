//
//  File.swift
//  
//
//  Created by Vito Verrastro on 26/02/24.
//

import Foundation

extension String: LocalizedError {
    
    public var errorDescription: String? { self }
}

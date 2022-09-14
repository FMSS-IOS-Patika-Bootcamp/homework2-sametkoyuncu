//
//  Extensions.swift
//  homework2-news-app
//
//  Created by Samet Koyuncu on 14.09.2022.
//

import UIKit
// CollectionView'in son satırında sorun yaşıyordum onun için ekledim
// faydasını da görmedim ama olsa iyi olacak bir şeymiş sanki..
extension CGFloat {
    func xx_rounded(_ rule: FloatingPointRoundingRule = .down, toDecimals decimals: Int = 2) -> CGFloat {
        let multiplier = CGFloat(pow(10.0, CGFloat(decimals)))
        return (self * multiplier).rounded(.down) / multiplier
    }
}

extension CGSize {
    func xx_rounded(rule: FloatingPointRoundingRule = .down, toDecimals: Int = 2) -> CGSize {
        return CGSize(
            width: width.xx_rounded(rule, toDecimals: toDecimals),
            height: height.xx_rounded(rule, toDecimals: toDecimals)
        )
    }
}

//
//  Xcode13ClockHandRotationEffectModifier.swift
//  Xcode13ClockHandRotationEffectModifier
//
//  Created by everettjf on 2022/12/14.
//
import SwiftUI
import WidgetKit


enum Xcode13ClockHandRotationEffectPeriod {
    case custom(TimeInterval)
    case secondHand, hourHand, miniuteHand
}

struct Xcode13ClockHandRotationEffectModifier: ViewModifier {

    let clockPeriod: WidgetKit._ClockHandRotationEffect.Period
    let clockTimezone: TimeZone
    let clockAnchor: UnitPoint
    
    init(period: Xcode13ClockHandRotationEffectPeriod, timezone: TimeZone, anchor: UnitPoint) {
        var clockPeriod: WidgetKit._ClockHandRotationEffect.Period = .secondHand
        switch period {
        case .custom(let timeInterval):
            clockPeriod = .custom(timeInterval)
        case .secondHand:
            clockPeriod = .secondHand
        case .hourHand:
            clockPeriod = .hourHand
        case .miniuteHand:
            clockPeriod = .minuteHand
        }
        self.clockPeriod = clockPeriod
        self.clockTimezone = timezone
        self.clockAnchor = anchor
    }

    func body(content: Content) -> some View {
        content
            ._clockHandRotationEffect(self.clockPeriod, in: self.clockTimezone, anchor: self.clockAnchor)
    }

}

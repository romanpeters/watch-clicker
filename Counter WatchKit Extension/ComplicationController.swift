//
//  ComplicationController.swift
//  Counter WatchKit Extension
//
//  Created by Roman Peters on 12/05/2020.
//  Copyright © 2020 Roman Peters. All rights reserved.
//

import ClockKit


class ComplicationController: NSObject, CLKComplicationDataSource {
    
    // MARK: - Timeline Configuration
    
    func getSupportedTimeTravelDirections(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimeTravelDirections) -> Void) {
        handler([.forward, .backward])
    }
    
    func getTimelineStartDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        handler(nil)
    }
    
    func getTimelineEndDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        handler(nil)
    }
    
    func getPrivacyBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationPrivacyBehavior) -> Void) {
        handler(.showOnLockScreen)
    }
    
    // MARK: - Timeline Population
    
    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void) {
        // Call the handler with the current timeline entry
        handler(nil)
    }
    
    func getTimelineEntries(for complication: CLKComplication, before date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries prior to the given date
        handler(nil)
    }
    
    func getTimelineEntries(for complication: CLKComplication, after date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries after to the given date
        handler(nil)
    }
    
    // MARK: - Placeholder Templates
    
    func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void) {
        // This method will be called once per supported complication, and the results will be cached
        handler(constructTemplate(for: complication))
    }
    
}


private func constructTemplate(for complication: CLKComplication) -> CLKComplicationTemplate? {
    return nil

//    switch complication.family {
//        case .modularSmall:
//            let template = CLKComplicationTemplateModularSmallSimpleText()
//            let provider = CLKSimpleTextProvider(text: String(5))
//            template.textProvider = provider
//            return template
//        case .modularLarge:
//            return nil
//        case .utilitarianSmall:
//            return nil
//        case .utilitarianSmallFlat:
//            return nil
//        case .utilitarianLarge:
//            return nil
//        case .circularSmall:
//            return nil
//        case .extraLarge:
//            return nil
//        case .graphicCorner:
//            return nil
//        case .graphicBezel:
//            return nil
//        case .graphicCircular:
//            return nil
//        case .graphicRectangular:
//            return nil
//        default:
//            return nil
//    }
}

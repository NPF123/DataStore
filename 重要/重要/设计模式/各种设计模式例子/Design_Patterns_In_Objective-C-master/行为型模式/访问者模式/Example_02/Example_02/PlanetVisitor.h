//
//  PlanetVisitor.h
//  Example_02
//
//  Created by 找塑料 on 16/4/22.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

@class PlanetAlderaan;
@class PlanetCoruscant;
@class PlanetTatooine;

#ifndef PlanetVisitor_h
#define PlanetVisitor_h

@protocol PlanetVisitor <NSObject>

- (void)visitWithPlanetAlderaan:(PlanetAlderaan *)planet;
- (void)visitWithPlanetCoruscant:(PlanetCoruscant *)planet;
- (void)visitWithPlanetTatooine:(PlanetTatooine *)planet;

@end

#endif /* PlanetVisitor_h */

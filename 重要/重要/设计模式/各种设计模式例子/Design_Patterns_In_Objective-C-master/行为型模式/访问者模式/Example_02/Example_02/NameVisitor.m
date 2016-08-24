//
//  NameVisitor.m
//  Example_02
//
//  Created by 找塑料 on 16/4/22.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "NameVisitor.h"

@implementation NameVisitor

- (void)visitWithPlanetAlderaan:(PlanetAlderaan *)planet
{
    self.name = @"Alderaan";
}

- (void)visitWithPlanetTatooine:(PlanetTatooine *)planet
{
    self.name = @"Tatooine";
}

- (void)visitWithPlanetCoruscant:(PlanetCoruscant *)planet
{
    self.name = @"Coruscant";
}

@end

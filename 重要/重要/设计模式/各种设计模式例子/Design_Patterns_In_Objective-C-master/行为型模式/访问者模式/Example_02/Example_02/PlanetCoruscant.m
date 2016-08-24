//
//  PlanetCoruscant.m
//  Example_02
//
//  Created by 找塑料 on 16/4/22.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "PlanetCoruscant.h"

@implementation PlanetCoruscant

- (void)acceptWithVisitor:(id<PlanetVisitor>)visitor
{
    [visitor visitWithPlanetCoruscant:self];
}

@end

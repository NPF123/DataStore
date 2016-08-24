//
//  Planet.h
//  Example_02
//
//  Created by 找塑料 on 16/4/22.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "PlanetVisitor.h"

#ifndef Planet_h
#define Planet_h

@protocol Planet <NSObject>

- (void)acceptWithVisitor:(id<PlanetVisitor>)visitor;

@end

#endif /* Planet_h */

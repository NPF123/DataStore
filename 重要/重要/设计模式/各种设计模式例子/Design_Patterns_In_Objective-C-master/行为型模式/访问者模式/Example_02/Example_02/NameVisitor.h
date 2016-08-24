//
//  NameVisitor.h
//  Example_02
//
//  Created by 找塑料 on 16/4/22.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlanetVisitor.h"

@interface NameVisitor : NSObject <PlanetVisitor>

@property (strong, nonatomic) NSString *name;

@end

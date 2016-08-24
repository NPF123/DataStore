//
//  ChungasRevengeDisplay.h
//  Example_02
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChungasRevengeDisplay : NSObject

@property (strong, nonatomic, nonnull) NSString *name;

@property (strong, nonatomic, nonnull) NSString *font;

- (nullable instancetype)initWithFont:(NSString * _Nullable)font;

- (nullable ChungasRevengeDisplay *)clone;

@end

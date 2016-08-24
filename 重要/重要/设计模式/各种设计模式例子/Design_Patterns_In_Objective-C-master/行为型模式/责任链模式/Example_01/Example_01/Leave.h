//
//  Leave.h
//  Example_01
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Leave : NSObject

@property (assign, nonatomic) int day;
@property (strong, nonatomic) NSString *content;
@property (strong, nonatomic) NSString *proposer;

@end

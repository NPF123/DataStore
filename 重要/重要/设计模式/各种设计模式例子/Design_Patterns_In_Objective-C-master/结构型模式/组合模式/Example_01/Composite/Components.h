//
//  Components.h
//  Composite
//
//  Created by 伟明 毕 on 15/2/25.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Components;

@protocol Components <NSObject>

- (void)add:(Components <Components> *)componenet;
- (void)remove:(Components <Components> *)componenet;
- (void)display:(int)depth;

@end

@interface Components : NSObject

@property (strong, nonatomic) NSString *name;

- (instancetype)initWithName:(NSString *)name;

@end
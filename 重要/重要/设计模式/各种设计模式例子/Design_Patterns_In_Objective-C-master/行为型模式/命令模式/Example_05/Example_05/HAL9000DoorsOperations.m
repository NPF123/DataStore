//
//  HAL9000DoorsOperations.m
//  Example_05
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "HAL9000DoorsOperations.h"

@implementation HAL9000DoorsOperations

- (instancetype)initWithDoors:(NSString *)doors
{
    if (self = [super init]) {
        _openCommand = [[OpenCommand alloc] initWithDoors:doors];
        _closeCommand = [[CloseCommand alloc] initWithDoors:doors];
    }
    return self;
}

- (NSString *)close
{
    return [_closeCommand execute];
}

- (NSString *)open
{
    return [_openCommand execute];
}

@end

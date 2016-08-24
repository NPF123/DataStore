//
//  HAL9000DoorsOperations.h
//  Example_05
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OpenCommand.h"
#import "CloseCommand.h"

NS_ASSUME_NONNULL_BEGIN

@interface HAL9000DoorsOperations : NSObject

@property (strong, nonatomic, nonnull) id<DoorCommand> openCommand;
@property (strong, nonatomic, nonnull) id<DoorCommand> closeCommand;

- (instancetype)initWithDoors:(NSString *)doors;

- (NSString *)close;

- (NSString *)open;

@end

NS_ASSUME_NONNULL_END
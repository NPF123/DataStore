//
//  CloseCommand.h
//  Example_05
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DoorCommand.h"

@interface CloseCommand : NSObject <DoorCommand>

@property (strong, nonatomic, nonnull) NSString *doors;

- (nonnull instancetype)initWithDoors:(NSString * _Nonnull)doors;

@end

//
//  Request.h
//  Chain of Responsibility
//
//  Created by 伟明 毕 on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, RequestType) {
    RequestTypeSickLeave = 0,
    
};

@interface Request : NSObject

@property (assign, nonatomic) RequestType requestType;
@property (strong, nonatomic) NSString *content;
@property (assign, nonatomic) unsigned int amount;

- (instancetype)initWithRequestType:(RequestType)requestType content:(NSString *)content amount:(unsigned int)amount;

@end

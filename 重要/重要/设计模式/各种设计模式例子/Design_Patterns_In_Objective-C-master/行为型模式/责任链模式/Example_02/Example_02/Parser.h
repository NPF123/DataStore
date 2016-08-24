//
//  Parser.h
//  Example_02
//
//  Created by btw on 15/3/11.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Parser <NSObject>

- (NSString *)parserWithString:(NSString *)string;

@end

@interface Parser : NSObject

@property (strong, nonatomic) Parser<Parser> *nextParser;

@end

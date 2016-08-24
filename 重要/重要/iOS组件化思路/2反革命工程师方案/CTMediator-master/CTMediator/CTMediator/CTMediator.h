//
//  CTMediator.h
//  CTMediator
//
//  Created by casa on 16/3/13.
//  Copyright © 2016年 casa. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CTMediator : NSObject

+ (instancetype)sharedInstance;

// 远程App调用入口
- (id)performActionWithUrl:(NSURL *)url completion:(void(^)(NSDictionary *info))completion;
// 本地组件调用入口
- (id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params;

@end

/*
 CTMediator.h.m
 功能：指定目标(target，类名)＋动作(action，方法名)，并提供一个字典类型的参数。CTMediator.h.m会判断target-action是否可以调用，如果可以，则调用。由于这一功能是通过runtime动态实现的，所以在CTMediator.h.m的实现中，不会依赖任何其他模块，也不需要知道target-action的具体功能，只要target-action存在，就会被执行(target-action具体的功能由DemoModule自己负责)。
 CTMediator.h里实际提供了两个方法，分别处理url方式的调用和target-action方式的调用，其中，如果使用url方式，会自动把url转换成target-action。
 */
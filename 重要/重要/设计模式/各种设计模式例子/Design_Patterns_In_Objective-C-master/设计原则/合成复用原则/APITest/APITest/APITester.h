//
//  APITester.h
//  APITest
//
//  Created by btw on 15/3/24.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, APITesterHTTPMethodType) {
    APITesterHTTPMethodTypeGet = 0,
    APITesterHTTPMethodTypePost
};

typedef NS_ENUM(NSUInteger, APITesterRequestCachePolicy) {
    APITesterRequestUseProtocolCachePolicy = 0,
    
    APITesterRequestReloadIgnoringLocalCacheData = 1,
    APITesterRequestReloadIgnoringLocalAndRemoteCacheData = 4, // Unimplemented
    APITesterRequestReloadIgnoringCacheData = NSURLRequestReloadIgnoringLocalCacheData,
    
    APITesterRequestReturnCacheDataElseLoad = 2,
    APITesterRequestReturnCacheDataDontLoad = 3,
    
    APITesterRequestReloadRevalidatingCacheData = 5, // Unimplemented
};

@protocol APITester <NSObject>

- (NSData *)sendSynchronousRequest;

- (void)sendAsynchronousRequestWithCompletionHandler:(void (^)(NSURLResponse* response, NSData* data, NSError* connectionError))completionHandler;

@end

@interface APITester : NSObject

@property (assign, nonatomic, readwrite) APITesterHTTPMethodType methodType;
@property (strong, nonatomic, readwrite) NSString *URLString;
@property (strong, nonatomic, readwrite) NSDictionary *parameters;
@property (assign, nonatomic, readwrite) NSTimeInterval timeOut;
@property (assign, nonatomic, readwrite) APITesterRequestCachePolicy cachePolicy;

- (instancetype)initWithURLString:(NSString *)URLString parameters:(NSDictionary *)parameters methodType:(APITesterHTTPMethodType)methodType;

@end

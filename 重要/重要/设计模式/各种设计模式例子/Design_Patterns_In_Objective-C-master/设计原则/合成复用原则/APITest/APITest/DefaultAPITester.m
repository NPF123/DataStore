//
//  DefaultAPITester.m
//  APITest
//
//  Created by btw on 15/3/24.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import "DefaultAPITester.h"

@implementation DefaultAPITester

- (void)sendAsynchronousRequestWithCompletionHandler:(void (^)(NSURLResponse* response, NSData* data, NSError* connectionError))completionHandler {
    [NSURLConnection sendAsynchronousRequest:[self request] queue:[NSOperationQueue new] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        completionHandler(response, data, connectionError);
    }];
}

- (NSData *)sendSynchronousRequest {
    NSData *responseData = [NSURLConnection sendSynchronousRequest:[self request] returningResponse:nil error:nil];
    return responseData;
}

- (NSURLRequest *)request {
    NSURLRequest *_request = nil;
    
    if (self.methodType == APITesterHTTPMethodTypeGet) {
        NSMutableString *parametersString = [[NSMutableString alloc] init];
        [self.parameters enumerateKeysAndObjectsUsingBlock:^(NSString *key, id obj, BOOL *stop) {
            [parametersString appendFormat:@"%@=%@&", key, obj];
        }];
        [parametersString deleteCharactersInRange:NSMakeRange(parametersString.length-1, 1)];
        NSURL *URL = [NSURL URLWithString:[NSString stringWithFormat:@"%@?%@",self.URLString, parametersString]];
        
        _request = [NSURLRequest requestWithURL:URL cachePolicy:(NSUInteger)self.cachePolicy timeoutInterval:self.timeOut];
        
    } else if (self.methodType == APITesterHTTPMethodTypePost) {
        NSURL *URL = [NSURL URLWithString:self.URLString];
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:URL cachePolicy:(NSUInteger)self.cachePolicy timeoutInterval:self.timeOut];
        [request setHTTPMethod:@"POST"];
        NSMutableString *parametersString = [[NSMutableString alloc] init];
        [self.parameters enumerateKeysAndObjectsUsingBlock:^(NSString *key, id obj, BOOL *stop) {
            [parametersString appendFormat:@"%@=%@&", key, obj];
        }];
        [parametersString deleteCharactersInRange:NSMakeRange(parametersString.length-1, 1)];
        
        [request setHTTPBody:[parametersString dataUsingEncoding:NSUTF8StringEncoding]];
        
        _request = request;
    }

    return _request;
}

@end

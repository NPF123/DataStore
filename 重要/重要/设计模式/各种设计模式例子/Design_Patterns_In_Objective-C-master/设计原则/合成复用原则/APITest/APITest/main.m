//
//  main.m
//  APITest
//
//  Created by btw on 15/3/24.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

//  with params [pid=550fca150005, uid=24, du=add]
#import <Foundation/Foundation.h>
#import "DefaultAPITester.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        APITester<APITester> *tester = [[DefaultAPITester alloc] init];
        tester.URLString = @"http://192.168.0.185:86/json/index.ashx?aim=useproduct";
        tester.methodType = APITesterHTTPMethodTypePost;
        tester.cachePolicy = APITesterRequestReloadIgnoringCacheData;
        tester.parameters = @{
                              @"pid" : @"550fca150005",
                              @"uid" : @24,
                              @"du" : @"add"
                              };
        
        [tester sendAsynchronousRequestWithCompletionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
            NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSLog(@"%@", dict[@"error"]);
        }];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}

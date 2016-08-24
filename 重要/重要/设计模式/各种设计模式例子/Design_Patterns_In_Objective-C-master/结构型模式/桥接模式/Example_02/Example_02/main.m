//
//  main.m
//  Example_02
//
//  Created by 找塑料 on 16/4/27.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>

// Message
#import "CommonMessage.h"
#import "UrgencyMessage.h"
#import "SpecialUrgencyMessage.h"

// Method
#import "SMSMethod.h"
#import "MailMethod.h"
#import "MobileMethod.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Method<Method> *method = [[SMSMethod alloc] init];
        
        Message<Message> *message = [[CommonMessage alloc] initWithMethod:method];
        [message sendeMessageWithUserName:@"请喝一杯茶" message:@"小李"];
        
        message = [[UrgencyMessage alloc] initWithMethod:method];
        [message sendeMessageWithUserName:@"请喝一杯茶" message:@"小李"];
        
        message = [[SpecialUrgencyMessage alloc] initWithMethod:method];
        [message sendeMessageWithUserName:@"请喝一杯茶" message:@"小李"];
        
        // 把实现方式切换成手机短消息，然后再实现一次
        method = [[MobileMethod alloc] init];
        
        message = [[CommonMessage alloc] initWithMethod:method];
        [message sendeMessageWithUserName:@"请喝一杯茶" message:@"小李"];
        
        message = [[UrgencyMessage alloc] initWithMethod:method];
        [message sendeMessageWithUserName:@"请喝一杯茶" message:@"小李"];
        
        message = [[SpecialUrgencyMessage alloc] initWithMethod:method];
        [message sendeMessageWithUserName:@"请喝一杯茶" message:@"小李"];
    }
    
    return 0;
}

//
//  SpecialUrgencyMessage.h
//  Example_02
//
//  Created by 找塑料 on 16/4/27.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "Message.h"

/**
 *  特急消息的处理类
 */
@interface SpecialUrgencyMessage : Message <Message>

/**
 *  特急消息特有的处理
 *
 *  @param messageId 消息ID
 */
- (void)hurryWithMessageId:(NSString *)messageId;

@end

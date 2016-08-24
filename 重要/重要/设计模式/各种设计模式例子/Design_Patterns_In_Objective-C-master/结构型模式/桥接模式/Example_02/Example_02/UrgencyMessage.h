//
//  UrgencyMessage.h
//  Example_02
//
//  Created by 找塑料 on 16/4/27.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import "Message.h"

/**
 *  加急消息
 */
@interface UrgencyMessage : Message <Message>

/**
 *  扩展自己的新功能：监控某消息的处理过程
 *
 *  @param messageId 被监控的消息的编号
 *
 *  @return 包含监控到的数据对象，这里示意一下，所以用了NSObject
 */
- (NSObject *)watchWithMessageId:(NSString *)messageId;

@end

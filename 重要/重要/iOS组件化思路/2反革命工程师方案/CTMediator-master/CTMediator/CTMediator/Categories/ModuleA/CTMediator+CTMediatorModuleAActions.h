//
//  CTMediator+CTMediatorModuleAActions.h
//  CTMediator
//
//  Created by casa on 16/3/13.
//  Copyright © 2016年 casa. All rights reserved.
//

#import "CTMediator.h"
#import <UIKit/UIKit.h>

@interface CTMediator (CTMediatorModuleAActions)

- (UIViewController *)CTMediator_viewControllerForDetail;
- (void)CTMediator_showAlertWithMessage:(NSString *)message cancelAction:(void(^)(NSDictionary *info))cancelAction confirmAction:(void(^)(NSDictionary *info))confirmAction;
- (void)CTMediator_presentImage:(UIImage *)image;

@end

/*
 CTMediator+CTMediatorModuleAActions.h.m
 功能：CTMediator的扩展，用于管理跳转到DemoModule模块的动作。其他模块想要跳转到DemoModule模块时，通过调用这个类的方法来实现。
 但是这个类中，并不真正去做跳转的动作，它只是对CTMediator.h.m类的封装，这样用户就不需要关心使用CTMediator.h.m跳转到DemoModule模块时具体需要的target名称和action名称了。
 
 ‘CTMediator.h.m’＋‘CTMediator+CTMediatorModuleAActions.h.m’共同组成了一个面相DemoModule的跳转，并且它不会在代码上依赖DemoModule，DemoModule是否提供了相应的跳转功能，只体现在运行时是否能够正常跳转。至此，CTMediator这个中间层实现了完全的独立，其他模块不需要预先注册，CTMediator也不需要知道其他模块的实现细节。唯一的关联就是需要在‘CTMediator+CTMediatorModuleAActions.h.m’中写明正确的target＋action和正确的参数，而且这些action和参数只依赖于Target_A.h.m。action和参数的正确性只会在运行时检查，如果target或action不存在，可以在‘CTMediator.h.m’中进行相应的处理。既：CTMediator不需要依赖任何模块就可以编译运行。
 */
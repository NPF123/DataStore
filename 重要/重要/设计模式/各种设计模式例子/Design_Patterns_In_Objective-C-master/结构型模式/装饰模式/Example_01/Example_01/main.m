/**
 装饰模式，动态地给一个对象添加一些额外的职责，就增加功能来说，装饰模式比生成子类更为灵活。
 
 Component是定义一个对象接口，可以给这些对象动态地添加职责。ConcreteComponent是定义了一个具体的对象，也可以给这个对象添加一些职责。Decorator，装饰题抽血类，继承了Component，从外类来扩展Component类的功能，但对于Component来说，是无需知道Decorator的存在的。至于ConcreteDecorator就是具体的装饰对象，起到给Component添加职责的功能。
 
 装饰模式是利用setComponent来对对象进行包装的。这样每个装饰对象的实现就和如何使用这个对象分离开了，每个装饰对象只关心自己的功能，不需关心如何被添加到对象链当中。
 
 如果只有一个ConcreteComponent类而没有抽象的Component类，那么Decorator类可以是ConcreteComponent的一个子类。
 同样道理，如果只有一个ConcreteDecorator类，那么就没有必要建立一个单独的Decorator类，而可以把Decorator和ConcreteDecorator的责任合并成一个类。
 
 装饰模式是为已有功能动态地添加更多功能的一种方式。
 当系统需要新功能的时候，是向旧的类中添加新的代码。这些新加的代码通常装饰了原有类的核心职责或主要行为。
装饰模式把每个要装饰的功能放在单独的类中，并让这个类包装它所要装饰的对象，因此，当需要执行特殊行为时，客户代码就可以运行时根据需要有选择地、按顺序地使用装饰功能包装对象了。
 
 优点：
    1、把类中的装饰功能从类中移除，可以简化原有的类。
    2、有效地把类的核心职责和装饰功能区分开了。而且可以去除相关类中重复的装饰逻辑。
 
 */

#import <Foundation/Foundation.h>
#import "ConcreteComponent.h"
#import "ConcreteDecoratorA.h"
#import "ConcreteDecoratorB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ConcreteComponent *c = [[ConcreteComponent alloc] init];
        ConcreteDecoratorA *d1 = [[ConcreteDecoratorA alloc] init];
        ConcreteDecoratorB *d2 = [[ConcreteDecoratorB alloc] init];
        
        [d1 setComponent:c];
        [d2 setComponent:d1];
        [d2 operation];
    }
    return 0;
}

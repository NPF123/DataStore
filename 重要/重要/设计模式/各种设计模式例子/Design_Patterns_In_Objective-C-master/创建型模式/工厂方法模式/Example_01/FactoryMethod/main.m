/**
 名称：工厂方法模式
 定义：定义一个用于创建对象的接口，让子类决定实例化哪一个类。工厂方法使得一个类的实例化延迟到其子类。
 重点：
 工厂方法模式实现时，客户端需要决定实例化哪一个工厂来实现运算类，选择判断的问题还是存在的，也就是说，工厂方法把简单工厂的内部逻辑判断移到了客户端代码进行。
 你想要添加新功能，本来是改工厂类的，而现在是修改客户端！
 工厂方法模式总结
 工厂方法模式是简单工厂模式的延伸，它继承了简单工厂模式的优点，同时还弥补了简单工厂模式的不足。工厂方法模式是使用频率最高的设计模式之一，是很多开源框架和API类库的核心模式。
 
 1. 主要优点
 工厂方法模式的主要优点如下：
 (1) 在工厂方法模式中，工厂方法用来创建客户所需要的产品，同时还向客户隐藏了哪种具体产品类将被实例化这一细节，用户只需要关心所需产品对应的工厂，无须关心创建细节，甚至无须知道具体产品类的类名。
 (2) 基于工厂角色和产品角色的多态性设计是工厂方法模式的关键。它能够让工厂可以自主确定创建何种产品对象，而如何创建这个对象的细节则完全封装在具体工厂内部。工厂方法模式之所以又被称为多态工厂模式，就正是因为所有的具体工厂类都具有同一抽象父类。
 (3) 使用工厂方法模式的另一个优点是在系统中加入新产品时，无须修改抽象工厂和抽象产品提供的接口，无须修改客户端，也无须修改其他的具体工厂和具体产品，而只要添加一个具体工厂和具体产品就可以了，这样，系统的可扩展性也就变得非常好，完全符合“开闭原则”。
 
 2. 主要缺点
 工厂方法模式的主要缺点如下：
 (1) 在添加新产品时，需要编写新的具体产品类，而且还要提供与之对应的具体工厂类，系统中类的个数将成对增加，在一定程度上增加了系统的复杂度，有更多的类需要编译和运行，会给系统带来一些额外的开销。
 (2) 由于考虑到系统的可扩展性，需要引入抽象层，在客户端代码中均使用抽象层进行定义，增加了系统的抽象性和理解难度，且在实现时可能需要用到DOM、反射等技术，增加了系统的实现难度。
 
 3. 适用场景
 在以下情况下可以考虑使用工厂方法模式：
 (1) 客户端不知道它所需要的对象的类。在工厂方法模式中，客户端不需要知道具体产品类的类名，只需要知道所对应的工厂即可，具体的产品对象由具体工厂类创建，可将具体工厂类的类名存储在配置文件或数据库中。
 (2) 抽象工厂类通过其子类来指定创建哪个对象。在工厂方法模式中，对于抽象工厂类只需要提供一个创建产品的接口，而由其子类来确定具体要创建的对象，利用面向对象的多态性和里氏代换原则，在程序运行时，子类对象将覆盖父类对象，从而使得系统更容易扩展。
 */

#import <Foundation/Foundation.h>
#import "AddFactory.h"
#import "SubFactory.h"
#import "MulFactory.h"
#import "DivFacotry.h"
#import "PowerFactory.h"
#import "Operation.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double op1 = 0.f, op2 = 0.f;
        char op_s = 0;
        printf("请输入运算表达式：\n");
        scanf("%lf %c %lf", &op1, &op_s, &op2);
        
        IFactory<IFactory> *factory = nil;
        
        switch (op_s) {
            case '+':
                factory = [[AddFactory alloc] init];
                break;
            case '-':
                factory = [[SubFactory alloc] init];
                break;
            case '*':
                factory = [[MulFactory alloc] init];
                break;
            case '/':
                factory = [[DivFacotry alloc] init];
                break;
            case '^':
                factory = [[PowerFactory alloc] init];
                break;
        }
        
        Operation<Operation> *operation = [factory createOperation];
        operation.op1 = op1;
        operation.op2 = op2;
        float result = [operation getResult];
        printf("%lf %c %lf = %lf\n", op1, op_s, op2, result);
    }
    return 0;
}

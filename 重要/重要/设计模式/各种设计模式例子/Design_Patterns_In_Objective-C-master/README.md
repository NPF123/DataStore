Objective-C的设计模式
==============================

![designpatterns](./images/designpatterns.jpg)

设计模式(Design Pattern)是一套被反复使用、多数人知晓的、经过分类编目的、代码设计经验的总结，使用设计模式是为了可重用代码、让代码更容易被他人理解并且保证代码可靠性。

在软件工程中，设计模式是设计中经常出现的问题的一种通用的、可重复利用的解决问题的方案。

设计模式不是一种可以直接转换成代码的具体例子，它是描述一个问题应该如何优雅的解决并提供解决思路和方案。

**本开源项目用Objective-C语言实现了各种设计模式，收集各种例子，方便大家学习普及设计模式。**

---

## 设计模式一览表

- 创建型模式主要用于描述如何创建对象
- 结构型模式主要用于描述如何实现类或对象的组合
- 行为型模式主要用于描述类或对象怎样交互以及怎样分配职责

<table style="text-align:center">
    <tr>
    <th>类型</th>
    <th>模式名称</th>
    <th>学习难度</th>
    <th>使用频率</th>
    </tr>
    
    <tr>
    <td rowspan="6">
    <a href="./创建型模式"><p>创建型模式<br />Creational Pattern</p></a>
    </td>
    <td><a href="./创建型模式/单例模式"><p>单例模式<br />Singleton Pattern</p></a></td>
    <td>★☆☆☆☆</td>
    <td>★★★★☆</td>
    </tr>
    
    <tr>
    <td>
        <a href="./创建型模式/简单工厂模式"><p>简单工厂模式<br />Simple Factory Pattern</p></a>
    </td>
    <td>★★☆☆☆</td>
    <td>★★★☆☆</td>
    </tr>
    
    <tr>
    <td>
        <a href="./创建型模式/工厂方法模式"><p>工厂方法模式<br />Factory Method Pattern</p></a>
    </td>
    <td>★★☆☆☆</td>
    <td>★★★★★</td>
    </tr>
    
    <tr>
    <td>
        <a href="./创建型模式/抽象工厂模式"><p>抽象工厂模式<br />Abstract Factory Pattern</p></a>
    </td>
    <td>★★★★☆</td>
    <td>★★★★★</td>
    </tr>
    
    <tr>
    <td>
        <a href="./创建型模式/原型模式"><p>原型模式<br />Prototype Pattern</p></a>
    </td>
    <td>★★★☆☆</td>
    <td>★★★☆☆</td>
    </tr>
    
    <tr>
    <td>
        <a href="./创建型模式/建造者模式"><p>建造者模式<br />Builder Pattern</p></a>
    </td>
    <td>★★★★☆</td>
    <td>★★☆☆☆</td>
    </tr>
    
    <tr>
    <td rowspan="7">
        <a href="./结构型模式"><p>结构型模式<br />Structural Pattern</p></a>
    </td>
    <td>
        <a href="./结构型模式/适配器模式"><p>适配器模式<br />Adapter Pattern</p></a>
    </td>
    <td>★★☆☆☆</td>
    <td>★★★★☆</td>
    </tr>
    
    <tr>
    <td>
        <a href="./结构型模式/桥接模式"><p>桥接模式<br />Bridge Pattern</p></a>
    </td>
    <td>★★★☆☆</td>
    <td>★★★☆☆</td>
    </tr>
    
    <tr>
    <td>
        <a href="./结构型模式/组合模式"><p>组合模式<br />Composite  Pattern</p></a>
    </td>
    <td>★★★☆☆</td>
    <td>★★★★☆</td>
    </tr>
    
    <tr>
    <td>
         <a href="./结构型模式/装饰模式"><p>装饰模式<br />Decorator  Pattern</p></a>
    </td>
    <td>★★★☆☆</td>
    <td>★★★☆☆</td>
    </tr>
    
    <tr>
    <td><a href="./结构型模式/外观模式"><p>外观模式<br />Façade  Pattern</p></a></td>
    <td>★☆☆☆☆</td>
    <td>★★★★★</td>
    </tr>
    
    <tr>
    <td><a href="./结构型模式/享元模式"><p>享元模式<br />Flyweight  Pattern</p></a></td>
    <td>★★★★☆</td>
    <td>★☆☆☆☆</td>
    </tr>
    
    <tr>
    <td><a href="./结构型模式/代理模式"><p>代理模式<br />Proxy  Pattern</p></a></td>
    <td>★★★☆☆</td>
    <td>★★★★☆</td>
    </tr>
    
    <tr>
    <td rowspan="11">
    <a href="./行为型模式"><p>行为型模式<br />Behavioral Pattern</p></a>
    </td>
    <td><a href="./行为型模式/责任链模式"><p>责任链模式<br />Chain  of Responsibility Pattern</p></a></td>
    <td>★★★☆☆</td>
    <td>★★☆☆☆</td>
    </tr>
    
    <tr>
    <td><a href="./行为型模式/命令模式"><p>命令模式<br />Command  Pattern</p></a></td>
    <td>★★★☆☆</td>
    <td>★★★★☆</td>
    </tr>
    
    <tr>
    <td><a href="./行为型模式/解释器模式"><p>解释器模式<br />Interpreter  Pattern</p></a></td>
    <td>★★★★★</td>
    <td>★☆☆☆☆</td>
    </tr>
    
    <tr>
    <td><a href="./行为型模式/迭代器模式"><p>迭代器模式<br />Iterator  Pattern</p></a></td>
    <td>★★★☆☆</td>
    <td>★★★★★</td>
    </tr>
    
    <tr>
    <td><a href="./行为型模式/中介者模式"><p>中介者模式<br />Mediator  Pattern</p></a></td>
    <td>★★★☆☆</td>
    <td>★★☆☆☆</td>
    </tr>
    
    <tr>
    <td><a href="./行为型模式/备忘录模式"><p>备忘录模式<br />Memento  Pattern</p></a></td>
    <td>★★☆☆☆</td>
    <td>★★☆☆☆</td>
    </tr>
    
    <tr>
    <td><a href="./行为型模式/观察者模式"><p>观察者模式<br />Observer  Pattern</p></a></td>
    <td>★★★☆☆</td>
    <td>★★★★★</td>
    </tr>
    
    <tr>
    <td><a href="./行为型模式/状态模式"><p>状态模式<br />State  Pattern</p></a></td>
    <td>★★★☆☆</td>
    <td>★★★☆☆</td>
    </tr>
    
    <tr>
    <td><a href="./行为型模式/策略模式"><p>策略模式<br />Strategy  Pattern</p></a></td>
    <td>★☆☆☆☆</td>
    <td>★★★★☆</td>
    </tr>
    
    <tr>
    <td><a href="./行为型模式/模板方法模式"><p>模板方法模式<br />Template  Method Pattern</p></a></td>
    <td>★★☆☆☆</td>
    <td>★★★☆☆</td>
    </tr>
    
    <tr>
    <td><a href="./行为型模式/访问者模式"><p>访问者模式<br />Visitor  Pattern</p></a></td>
    <td>★★★★☆</td>
    <td>★☆☆☆☆</td>
    </tr>
    
</table>

## 设计模式的基本原则

设计模式的基本原则非常重要，只要真正深入地理解了设计原则，很多设计模式其实就是原则的应用而已，或许在不知不觉中就在使用设计模式了：
* **单一职责原则（SRP）**，就一个类而言，应该仅有一个引起它变化的原因。
* **开放-封闭原则（OCP）**，是说软件实体（类、模块、函数等等）应该可以拓展，但是不可修改。
* **依赖倒转原则（DIP）**，A. 高层模块不应该依赖低层模块，两个都应该依赖抽象。B. 抽象不应该依赖细节，细节应该依赖抽象。
* **里氏代换原则（LSP）**，子类型必须能够替换掉它们的父类型。
* **迪米特法则（LoD）**，如果两个类不必彼此直接通信，那么这两个类就不应当发生直接的相互作用。如果其中一个类需要调用另一个类的某一个方法的话，可以通过第三者转发这个调用。
* **合成/聚合复用原则（CARP）**，尽量使用合成/聚合，尽量不要使用类继承。

注：SRP-Single Responsibility Principle，OCP-Open-Closed Principle，DIP-Dependency Inversion Principle，LSP-Liskov Subsitution Principle，LoD-Law of Demeter，CARP-Composition/Aggregation Principle。

## 23种设计模式的定义

不管是 .NET 中的 C# 语言，还是 Java、VB.NET、C++ 或 Objective-C 语言，面向对象语言在设计模式的层面上都是相通的，只不过在设计模式的具体实现上语法稍有差异罢了：
 1. **策略模式（Strategy）**，它定义了算法家族，分别封装起来，让它们之间可以互相替换，此模式让算法的变化，不会影响到使用算法的客户。
 2. **装饰模式（Decorator）**，动态地给一个对象添加一些额外的职责，就增加功能来说，装饰模式比生成子类更为灵活。
 3. **代理模式（Proxy）**，为其他对象提供一种代理以控制对这个对象的访问。
 4. **工厂方法模式（Factory Method）**，定义一个用于创建对象的接口，让子类决定实例化哪一个类。工厂方法使一个类的实例化延迟到其子类。
 5. **原型模式（Prototype）**，用原型实例指定创建对象的种类，并且通过拷贝这些原型创建新的对象。
 6. **模板方法模式（Template Method）**，定义一个操作中的算法的骨架，而将一些步骤延迟到子类中。模板方法使得子类可以不改变一个算法的结构即可重定义该算法的某些特定步骤。
 7. **外观模式（Facade）**，为子系统中的一组接口提供一个一致的界面，此模式定义了一个高层接口，这个接口使得这一子系统更加容易使用。
 8. **建造者模式（Builder）**，将一个复杂对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示。
 9. **观察者模式（Observer）**，定义了一种一对多的依赖关系，让多个观察者对象同时监听某一个主题对象。这个主题对象在状态发生变化时，会通知所有观察者对象，使它们能够自动更新自己。
 10. **抽象工厂模式（Abstract Factory）**，提供一个创建一系列相关或相互依赖对象的接口，而无需指定它们具体的类。
 11. **状态模式（State）**，当一个对象的内在状态改变时允许改变其行为，这个对象看起来像是改变了其类。
 12. **适配器模式（Adapter）**，将一个类的接口转换成客户希望的另外一个接口。Adapter 模式使得原本由于接口不兼容而不能一起工作的那些类可以一起工作。
 13. **备忘录模式（Memento）**，在不破坏封装性的前提下，捕获一个对象的内部状态，并在该对象之外保存这个状态。这样以后就可将该对象恢复到原先保存的状态。
 14. **组合模式（Composite）**，将对象组合成树形结构以表示‘部分-整体’的层次结构。组合模式使得用户对单个对象和组合对象的使用具有一致性。
 15. **迭代器模式（Iterator）**，提供一种方法顺序访问一个聚合对象中各个元素，而又不暴露该对象的内部表示。
 16. **单例模式（Singleton）**，保证一个类仅有一个实例，并提供一个访问它的全局访问点。
 17. **桥接模式（Bridge）**，将抽象部分与它的实现部分分离，使它们都可以独立地变化。
 18. **命令模式（Command）**，将一个请求封装为一个对象，从而使你可用不同的请求对客户进行参数化；对请求排队或记录请求日志，以及支持可撤销的操作。
 19. **职责链模式（Chain of Responsibility）**，使多个对象都有机会处理请求，从而避免请求的发送者和接收者之间的耦合关系。将这个对象连成一条链，并沿着这条链传递该请求，直到有一个对象处理它为止。
 20. **中介者模式（Mediator）**，用一个中介对象来封装一系列的对象交互。中介者使各对象不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。
 21. **享元模式（Flyweight）**，运用共享技术有效地支持大量细粒度的对象。
 22. **解释器模式（Interpreter）**，给定一个语言，定义它的文法的一种表示，并定义一个解释器，这个解释器使用该表示来解释语言中的句子。
 23. **访问者模式（Visitor）**，表示一个作用于某对象结构中的各元素的操作。它使你可以在不改变各元素的类的前提下定义作用于这些元素的新操作。
 
## License

Design Patterns In Objective-C is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
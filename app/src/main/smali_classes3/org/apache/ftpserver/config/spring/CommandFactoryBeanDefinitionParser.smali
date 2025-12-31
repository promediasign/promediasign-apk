.class public Lorg/apache/ftpserver/config/spring/CommandFactoryBeanDefinitionParser;
.super Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;-><init>()V

    return-void
.end method


# virtual methods
.method public doParse(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)V
    .locals 5

    const-class v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;

    invoke-static {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->genericBeanDefinition(Ljava/lang/Class;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    move-result-object v0

    new-instance v1, Lorg/springframework/beans/factory/support/ManagedMap;

    invoke-direct {v1}, Lorg/springframework/beans/factory/support/ManagedMap;-><init>()V

    invoke-static {p1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElements(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    const-string v4, "name"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p2, p3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseSpringChildElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/springframework/beans/factory/support/ManagedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v2, "commandMap"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    const-string v1, "use-default"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "useDefaultCommands"

    invoke-virtual {v0, v1, p1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    :cond_1
    invoke-virtual {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object p1

    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getReaderContext()Lorg/springframework/beans/factory/xml/XmlReaderContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/springframework/beans/factory/xml/XmlReaderContext;->generateBeanName(Lorg/springframework/beans/factory/config/BeanDefinition;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/springframework/beans/factory/config/BeanDefinitionHolder;

    invoke-direct {v1, p1, v0}, Lorg/springframework/beans/factory/config/BeanDefinitionHolder;-><init>(Lorg/springframework/beans/factory/config/BeanDefinition;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getRegistry()Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/apache/ftpserver/config/spring/CommandFactoryBeanDefinitionParser;->registerBeanDefinition(Lorg/springframework/beans/factory/config/BeanDefinitionHolder;Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;)V

    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/springframework/beans/factory/support/AbstractBeanDefinition;->setFactoryBeanName(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object p1

    const-string p2, "createCommandFactory"

    invoke-virtual {p1, p2}, Lorg/springframework/beans/factory/support/AbstractBeanDefinition;->setFactoryMethodName(Ljava/lang/String;)V

    return-void
.end method

.method public getBeanClass(Lorg/w3c/dom/Element;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/ftpserver/command/CommandFactory;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

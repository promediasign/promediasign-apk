.class public Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;
.super Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;-><init>()V

    return-void
.end method

.method private getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "http://mina.apache.org/ftpserver/spring/v1"

    invoke-static {p1, v0, p2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElementText(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public doParse(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)V
    .locals 6

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file-user-manager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-class v1, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-class v0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;

    :goto_0
    invoke-static {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->genericBeanDefinition(Ljava/lang/Class;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    move-result-object v2

    const-string v3, "encrypt-passwords"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "passwordEncryptor"

    if-nez v4, :cond_3

    const-string v4, "md5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const-string v4, "salted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lorg/apache/ftpserver/usermanager/SaltedPasswordEncryptor;

    invoke-direct {v3}, Lorg/apache/ftpserver/usermanager/SaltedPasswordEncryptor;-><init>()V

    :goto_1
    invoke-virtual {v2, v5, v3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    goto :goto_3

    :cond_2
    new-instance v3, Lorg/apache/ftpserver/usermanager/ClearTextPasswordEncryptor;

    invoke-direct {v3}, Lorg/apache/ftpserver/usermanager/ClearTextPasswordEncryptor;-><init>()V

    goto :goto_1

    :cond_3
    :goto_2
    new-instance v3, Lorg/apache/ftpserver/usermanager/Md5PasswordEncryptor;

    invoke-direct {v3}, Lorg/apache/ftpserver/usermanager/Md5PasswordEncryptor;-><init>()V

    goto :goto_1

    :cond_4
    :goto_3
    if-ne v0, v1, :cond_6

    const-string v0, "file"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    :cond_5
    const-string v0, "url"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {v2, v0, p1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    goto/16 :goto_6

    :cond_6
    const-string v0, "http://mina.apache.org/ftpserver/spring/v1"

    const-string v1, "data-source"

    invoke-static {p1, v0, v1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bean"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    move-result-object v1

    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parseBeanDefinitionElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Lorg/springframework/beans/factory/config/BeanDefinitionHolder;

    move-result-object v0

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getDelegate()Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;

    move-result-object v1

    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/springframework/beans/factory/xml/BeanDefinitionParserDelegate;->parsePropertySubElement(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/config/BeanDefinition;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    const-string v1, "dataSource"

    invoke-virtual {v2, v1, v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    const-string v0, "insert-user"

    invoke-direct {p0, p1, v0}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqlUserInsert"

    invoke-virtual {v2, v1, v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    const-string v0, "update-user"

    invoke-direct {p0, p1, v0}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqlUserUpdate"

    invoke-virtual {v2, v1, v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    const-string v0, "delete-user"

    invoke-direct {p0, p1, v0}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqlUserDelete"

    invoke-virtual {v2, v1, v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    const-string v0, "select-user"

    invoke-direct {p0, p1, v0}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqlUserSelect"

    invoke-virtual {v2, v1, v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    const-string v0, "select-all-users"

    invoke-direct {p0, p1, v0}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqlUserSelectAll"

    invoke-virtual {v2, v1, v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    const-string v0, "is-admin"

    invoke-direct {p0, p1, v0}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqlUserAdmin"

    invoke-virtual {v2, v1, v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    const-string v0, "authenticate"

    invoke-direct {p0, p1, v0}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->getSql(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sqlUserAuthenticate"

    goto/16 :goto_4

    :cond_8
    :goto_6
    invoke-virtual {v2}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object p1

    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getReaderContext()Lorg/springframework/beans/factory/xml/XmlReaderContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/springframework/beans/factory/xml/XmlReaderContext;->generateBeanName(Lorg/springframework/beans/factory/config/BeanDefinition;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/springframework/beans/factory/config/BeanDefinitionHolder;

    invoke-direct {v1, p1, v0}, Lorg/springframework/beans/factory/config/BeanDefinitionHolder;-><init>(Lorg/springframework/beans/factory/config/BeanDefinition;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/springframework/beans/factory/xml/ParserContext;->getRegistry()Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;->registerBeanDefinition(Lorg/springframework/beans/factory/config/BeanDefinitionHolder;Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;)V

    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/springframework/beans/factory/support/AbstractBeanDefinition;->setFactoryBeanName(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object p1

    const-string p2, "createUserManager"

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
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

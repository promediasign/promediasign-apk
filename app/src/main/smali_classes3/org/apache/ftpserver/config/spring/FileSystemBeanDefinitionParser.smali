.class public Lorg/apache/ftpserver/config/spring/FileSystemBeanDefinitionParser;
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
    .locals 1

    const-string p2, "case-insensitive"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "caseInsensitive"

    invoke-virtual {p3, v0, p2}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    :cond_0
    const-string p2, "create-home"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "createHome"

    invoke-virtual {p3, p2, p1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    :cond_1
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
            "Lorg/apache/ftpserver/ftplet/FileSystemFactory;",
            ">;"
        }
    .end annotation

    const-class p1, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;

    return-object p1
.end method

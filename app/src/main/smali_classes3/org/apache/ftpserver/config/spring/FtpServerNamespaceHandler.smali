.class public Lorg/apache/ftpserver/config/spring/FtpServerNamespaceHandler;
.super Lorg/springframework/beans/factory/xml/NamespaceHandlerSupport;
.source "SourceFile"


# static fields
.field public static final FTPSERVER_NS:Ljava/lang/String; = "http://mina.apache.org/ftpserver/spring/v1"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/springframework/beans/factory/xml/NamespaceHandlerSupport;-><init>()V

    new-instance v0, Lorg/apache/ftpserver/config/spring/ServerBeanDefinitionParser;

    invoke-direct {v0}, Lorg/apache/ftpserver/config/spring/ServerBeanDefinitionParser;-><init>()V

    const-string v1, "server"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/config/spring/FtpServerNamespaceHandler;->registerBeanDefinitionParser(Ljava/lang/String;Lorg/springframework/beans/factory/xml/BeanDefinitionParser;)V

    new-instance v0, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;

    invoke-direct {v0}, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;-><init>()V

    const-string v1, "nio-listener"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/config/spring/FtpServerNamespaceHandler;->registerBeanDefinitionParser(Ljava/lang/String;Lorg/springframework/beans/factory/xml/BeanDefinitionParser;)V

    new-instance v0, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;

    invoke-direct {v0}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;-><init>()V

    const-string v1, "file-user-manager"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/config/spring/FtpServerNamespaceHandler;->registerBeanDefinitionParser(Ljava/lang/String;Lorg/springframework/beans/factory/xml/BeanDefinitionParser;)V

    new-instance v0, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;

    invoke-direct {v0}, Lorg/apache/ftpserver/config/spring/UserManagerBeanDefinitionParser;-><init>()V

    const-string v1, "db-user-manager"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/config/spring/FtpServerNamespaceHandler;->registerBeanDefinitionParser(Ljava/lang/String;Lorg/springframework/beans/factory/xml/BeanDefinitionParser;)V

    new-instance v0, Lorg/apache/ftpserver/config/spring/FileSystemBeanDefinitionParser;

    invoke-direct {v0}, Lorg/apache/ftpserver/config/spring/FileSystemBeanDefinitionParser;-><init>()V

    const-string v1, "native-filesystem"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/config/spring/FtpServerNamespaceHandler;->registerBeanDefinitionParser(Ljava/lang/String;Lorg/springframework/beans/factory/xml/BeanDefinitionParser;)V

    new-instance v0, Lorg/apache/ftpserver/config/spring/CommandFactoryBeanDefinitionParser;

    invoke-direct {v0}, Lorg/apache/ftpserver/config/spring/CommandFactoryBeanDefinitionParser;-><init>()V

    const-string v1, "commands"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/config/spring/FtpServerNamespaceHandler;->registerBeanDefinitionParser(Ljava/lang/String;Lorg/springframework/beans/factory/xml/BeanDefinitionParser;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method

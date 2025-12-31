.class public Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;
.super Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/springframework/beans/factory/xml/AbstractSingleBeanDefinitionParser;-><init>()V

    const-class v0, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private parseDataConnection(Lorg/w3c/dom/Element;Lorg/apache/ftpserver/ssl/SslConfiguration;)Lorg/apache/ftpserver/DataConnectionConfiguration;
    .locals 5

    new-instance v0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;-><init>()V

    if-eqz p1, :cond_4

    const-string p2, "implicit-ssl"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseBoolean(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v0, p2}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setImplicitSsl(Z)V

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->parseSsl(Lorg/w3c/dom/Element;)Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v2, p0, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->LOG:Lorg/slf4j/Logger;

    const-string v3, "SSL configuration found for the data connection"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setSslConfiguration(Lorg/apache/ftpserver/ssl/SslConfiguration;)V

    :cond_0
    const-string p2, "idle-timeout"

    invoke-virtual {v0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->getIdleTime()I

    move-result v2

    invoke-static {p1, p2, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setIdleTime(I)V

    const-string p2, "active"

    const-string v2, "http://mina.apache.org/ftpserver/spring/v1"

    invoke-static {p1, v2, p2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v3, "enabled"

    const/4 v4, 0x1

    invoke-static {p2, v3, v4}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseBoolean(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setActiveEnabled(Z)V

    const-string v3, "ip-check"

    invoke-static {p2, v3, v1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseBoolean(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setActiveIpCheck(Z)V

    const-string v3, "local-port"

    invoke-static {p2, v3, v1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setActiveLocalPort(I)V

    const-string v1, "local-address"

    invoke-static {p2, v1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseStringFromInetAddress(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setActiveLocalAddress(Ljava/lang/String;)V

    :cond_1
    const-string p2, "passive"

    invoke-static {p1, v2, p2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p2, "address"

    invoke-static {p1, p2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseStringFromInetAddress(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setPassiveAddress(Ljava/lang/String;)V

    :cond_2
    const-string p2, "external-address"

    invoke-static {p1, p2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseStringFromInetAddress(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {v0, p2}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setPassiveExternalAddress(Ljava/lang/String;)V

    :cond_3
    const-string p2, "ports"

    invoke-static {p1, p2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setPassivePorts(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    iget-object p1, p0, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->LOG:Lorg/slf4j/Logger;

    const-string v1, "SSL configuration found for the listener, falling back for that for the data connection"

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->setSslConfiguration(Lorg/apache/ftpserver/ssl/SslConfiguration;)V

    :cond_5
    :goto_0
    invoke-virtual {v0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->createDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object p1

    return-object p1
.end method

.method private parseSsl(Lorg/w3c/dom/Element;)Lorg/apache/ftpserver/ssl/SslConfiguration;
    .locals 8

    const-string v0, "ssl"

    const-string v1, "http://mina.apache.org/ftpserver/spring/v1"

    invoke-static {p1, v1, v0}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance v0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;-><init>()V

    const-string v2, "keystore"

    invoke-static {p1, v1, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "algorithm"

    const-string v4, "type"

    const-string v5, "password"

    const-string v6, "file"

    if-eqz v2, :cond_3

    invoke-static {v2, v6}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseFile(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setKeystoreFile(Ljava/io/File;)V

    invoke-static {v2, v5}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setKeystorePassword(Ljava/lang/String;)V

    invoke-static {v2, v4}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, v7}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setKeystoreType(Ljava/lang/String;)V

    :cond_0
    const-string v7, "key-alias"

    invoke-static {v2, v7}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v0, v7}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setKeyAlias(Ljava/lang/String;)V

    :cond_1
    const-string v7, "key-password"

    invoke-static {v2, v7}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v0, v7}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setKeyPassword(Ljava/lang/String;)V

    :cond_2
    invoke-static {v2, v3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setKeystoreAlgorithm(Ljava/lang/String;)V

    :cond_3
    const-string v2, "truststore"

    invoke-static {p1, v1, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1, v6}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseFile(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setTruststoreFile(Ljava/io/File;)V

    invoke-static {v1, v5}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setTruststorePassword(Ljava/lang/String;)V

    invoke-static {v1, v4}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setTruststoreType(Ljava/lang/String;)V

    :cond_4
    invoke-static {v1, v3}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setTruststoreAlgorithm(Ljava/lang/String;)V

    :cond_5
    const-string v1, "client-authentication"

    invoke-static {p1, v1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setClientAuthentication(Ljava/lang/String;)V

    :cond_6
    const-string v1, "enabled-ciphersuites"

    invoke-static {p1, v1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_7
    const-string v1, "protocol"

    invoke-static {p1, v1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseString(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->setSslProtocol(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->createSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public doParse(Lorg/w3c/dom/Element;Lorg/springframework/beans/factory/xml/ParserContext;Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;)V
    .locals 7

    const-class v0, Lorg/apache/ftpserver/listener/ListenerFactory;

    invoke-static {v0}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->genericBeanDefinition(Ljava/lang/Class;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    move-result-object v0

    const-string v1, "port"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->parseSsl(Lorg/w3c/dom/Element;)Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "sslConfiguration"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    :cond_1
    const-string v2, "data-connection"

    const-string v3, "http://mina.apache.org/ftpserver/spring/v1"

    invoke-static {p1, v3, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->parseDataConnection(Lorg/w3c/dom/Element;Lorg/apache/ftpserver/ssl/SslConfiguration;)Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v1

    const-string v2, "dataConnectionConfiguration"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    const-string v1, "idle-timeout"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x12c

    invoke-static {p1, v1, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "idleTimeout"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    :cond_2
    const-string v1, "local-address"

    invoke-static {p1, v1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseStringFromInetAddress(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "serverAddress"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    :cond_3
    const-string v1, "implicit-ssl"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/apache/ftpserver/config/spring/SpringUtil;->parseBoolean(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "implicitSsl"

    invoke-virtual {v0, v2, v1}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;

    const-string v1, "blacklist"

    invoke-static {p1, v3, v1}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "ipFilter"

    if-eqz v1, :cond_4

    iget-object v4, p0, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Element \'blacklist\' is deprecated, and may be removed in a future release. Please use \'ip-filter\' instead. "

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;

    sget-object v5, Lorg/apache/ftpserver/ipfilter/IpFilterType;->DENY:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;-><init>(Lorg/apache/ftpserver/ipfilter/IpFilterType;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid IP address or subnet in the \'blacklist\' element"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_0
    const-string v4, "ip-filter"

    invoke-static {p1, v3, v4}, Lorg/apache/ftpserver/config/spring/SpringUtil;->getChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_6

    if-nez v1, :cond_5

    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    new-instance v3, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;

    invoke-static {v1}, Lorg/apache/ftpserver/ipfilter/IpFilterType;->parse(Ljava/lang/String;)Lorg/apache/ftpserver/ipfilter/IpFilterType;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v1, p1}, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;-><init>(Lorg/apache/ftpserver/ipfilter/IpFilterType;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->addPropertyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid IP address or subnet in the \'ip-filter\' element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string p2, "Element \'ipFilter\' may not be used when \'blacklist\' element is specified. "

    invoke-direct {p1, p2}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
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

    invoke-virtual {p0, v1, p1}, Lorg/apache/ftpserver/config/spring/ListenerBeanDefinitionParser;->registerBeanDefinition(Lorg/springframework/beans/factory/config/BeanDefinitionHolder;Lorg/springframework/beans/factory/support/BeanDefinitionRegistry;)V

    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/springframework/beans/factory/support/AbstractBeanDefinition;->setFactoryBeanName(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/springframework/beans/factory/support/BeanDefinitionBuilder;->getRawBeanDefinition()Lorg/springframework/beans/factory/support/AbstractBeanDefinition;

    move-result-object p1

    const-string p2, "createListener"

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

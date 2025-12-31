.class public Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ssl/SslConfiguration;


# instance fields
.field private clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

.field private enabledCipherSuites:[Ljava/lang/String;

.field private keyAlias:Ljava/lang/String;

.field private keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

.field private sslProtocol:Ljava/lang/String;

.field private trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/KeyManagerFactory;Ljavax/net/ssl/TrustManagerFactory;Lorg/apache/ftpserver/ssl/ClientAuth;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TLS"

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->sslProtocol:Ljava/lang/String;

    sget-object v0, Lorg/apache/ftpserver/ssl/ClientAuth;->NEED:Lorg/apache/ftpserver/ssl/ClientAuth;

    iput-object p3, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

    iput-object p5, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->enabledCipherSuites:[Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->keyAlias:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    iput-object p4, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->sslProtocol:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    return-void
.end method


# virtual methods
.method public getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

    return-object v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->enabledCipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->sslProtocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 5

    .line 2
    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->sslProtocol:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "javax.net.ssl.X509ExtendedKeyManager"

    invoke-static {v2, v3}, Lorg/apache/ftpserver/util/ClassUtils;->extendsClass(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;

    aget-object v3, v0, v1

    iget-object v4, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->keyAlias:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;-><init>(Ljavax/net/ssl/KeyManager;Ljava/lang/String;)V

    aput-object v2, v0, v1

    goto :goto_1

    :cond_1
    aget-object v2, v0, v1

    instance-of v3, v2, Ljavax/net/ssl/X509KeyManager;

    if-eqz v3, :cond_2

    new-instance v3, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;

    iget-object v4, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->keyAlias:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;-><init>(Ljavax/net/ssl/KeyManager;Ljava/lang/String;)V

    aput-object v3, v0, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object p1
.end method

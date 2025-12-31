.class public Lorg/apache/mina/filter/ssl/SslContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private clientSessionCacheSize:I

.field private clientSessionTimeout:I

.field private keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

.field private keyManagerFactoryAlgorithm:Ljava/lang/String;

.field private keyManagerFactoryAlgorithmUseDefault:Z

.field private keyManagerFactoryKeyStore:Ljava/security/KeyStore;

.field private keyManagerFactoryKeyStorePassword:[C

.field private keyManagerFactoryProvider:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private secureRandom:Ljava/security/SecureRandom;

.field private serverSessionCacheSize:I

.field private serverSessionTimeout:I

.field private trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

.field private trustManagerFactoryAlgorithm:Ljava/lang/String;

.field private trustManagerFactoryAlgorithmUseDefault:Z

.field private trustManagerFactoryKeyStore:Ljava/security/KeyStore;

.field private trustManagerFactoryParameters:Ljavax/net/ssl/ManagerFactoryParameters;

.field private trustManagerFactoryProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->provider:Ljava/lang/String;

    const-string v1, "TLS"

    iput-object v1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->protocol:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->secureRandom:Ljava/security/SecureRandom;

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryKeyStore:Ljava/security/KeyStore;

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryKeyStorePassword:[C

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryAlgorithm:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryProvider:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryAlgorithmUseDefault:Z

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryKeyStore:Ljava/security/KeyStore;

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryAlgorithm:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryProvider:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryAlgorithmUseDefault:Z

    iput-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryParameters:Ljavax/net/ssl/ManagerFactoryParameters;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionCacheSize:I

    iput v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionTimeout:I

    iput v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionCacheSize:I

    iput v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionTimeout:I

    return-void
.end method


# virtual methods
.method public newInstance()Ljavax/net/ssl/SSLContext;
    .locals 5

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    if-nez v0, :cond_2

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryAlgorithm:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-boolean v3, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryAlgorithmUseDefault:Z

    if-eqz v3, :cond_0

    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryProvider:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {v2}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2, v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    :cond_2
    :goto_0
    if-nez v1, :cond_5

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryAlgorithm:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-boolean v3, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryAlgorithmUseDefault:Z

    if-eqz v3, :cond_3

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_5

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryProvider:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-static {v2, v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    :cond_5
    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryKeyStore:Ljava/security/KeyStore;

    iget-object v4, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryKeyStorePassword:[C

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v2

    :goto_2
    if-eqz v1, :cond_8

    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryParameters:Ljavax/net/ssl/ManagerFactoryParameters;

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljavax/net/ssl/ManagerFactoryParameters;)V

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    :goto_3
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    :cond_8
    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->provider:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->protocol:Ljava/lang/String;

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    goto :goto_4

    :cond_9
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->protocol:Ljava/lang/String;

    invoke-static {v3, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    :goto_4
    iget-object v3, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    iget v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionCacheSize:I

    if-ltz v0, :cond_a

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    iget v2, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionCacheSize:I

    invoke-interface {v0, v2}, Ljavax/net/ssl/SSLSessionContext;->setSessionCacheSize(I)V

    :cond_a
    iget v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionTimeout:I

    if-ltz v0, :cond_b

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    iget v2, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionTimeout:I

    invoke-interface {v0, v2}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V

    :cond_b
    iget v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionCacheSize:I

    if-ltz v0, :cond_c

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    iget v2, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionCacheSize:I

    invoke-interface {v0, v2}, Ljavax/net/ssl/SSLSessionContext;->setSessionCacheSize(I)V

    :cond_c
    iget v0, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionTimeout:I

    if-ltz v0, :cond_d

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    iget v2, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionTimeout:I

    invoke-interface {v0, v2}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V

    :cond_d
    return-object v1
.end method

.method public setClientSessionCacheSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionCacheSize:I

    return-void
.end method

.method public setClientSessionTimeout(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->clientSessionTimeout:I

    return-void
.end method

.method public setKeyManagerFactory(Ljavax/net/ssl/KeyManagerFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    return-void
.end method

.method public setKeyManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setKeyManagerFactoryAlgorithmUseDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryAlgorithmUseDefault:Z

    return-void
.end method

.method public setKeyManagerFactoryKeyStore(Ljava/security/KeyStore;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryKeyStore:Ljava/security/KeyStore;

    return-void
.end method

.method public setKeyManagerFactoryKeyStorePassword(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryKeyStorePassword:[C

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryKeyStorePassword:[C

    :goto_0
    return-void
.end method

.method public setKeyManagerFactoryProvider(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->keyManagerFactoryProvider:Ljava/lang/String;

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->protocol:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocol"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->provider:Ljava/lang/String;

    return-void
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public setServerSessionCacheSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionCacheSize:I

    return-void
.end method

.method public setServerSessionTimeout(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->serverSessionTimeout:I

    return-void
.end method

.method public setTrustManagerFactory(Ljavax/net/ssl/TrustManagerFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    return-void
.end method

.method public setTrustManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setTrustManagerFactoryAlgorithmUseDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryAlgorithmUseDefault:Z

    return-void
.end method

.method public setTrustManagerFactoryKeyStore(Ljava/security/KeyStore;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryKeyStore:Ljava/security/KeyStore;

    return-void
.end method

.method public setTrustManagerFactoryParameters(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryParameters:Ljavax/net/ssl/ManagerFactoryParameters;

    return-void
.end method

.method public setTrustManagerFactoryProvider(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslContextFactory;->trustManagerFactoryProvider:Ljava/lang/String;

    return-void
.end method

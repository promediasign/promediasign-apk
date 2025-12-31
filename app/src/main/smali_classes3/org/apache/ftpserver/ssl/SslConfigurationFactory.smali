.class public Lorg/apache/ftpserver/ssl/SslConfigurationFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

.field private enabledCipherSuites:[Ljava/lang/String;

.field private keyAlias:Ljava/lang/String;

.field private keyPass:Ljava/lang/String;

.field private keystoreAlgorithm:Ljava/lang/String;

.field private keystoreFile:Ljava/io/File;

.field private keystorePass:Ljava/lang/String;

.field private keystoreType:Ljava/lang/String;

.field private sslProtocol:Ljava/lang/String;

.field private trustStoreAlgorithm:Ljava/lang/String;

.field private trustStoreFile:Ljava/io/File;

.field private trustStorePass:Ljava/lang/String;

.field private trustStoreType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/io/File;

    const-string v1, "./res/.keystore"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreFile:Ljava/io/File;

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreType:Ljava/lang/String;

    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreAlgorithm:Ljava/lang/String;

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreType:Ljava/lang/String;

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreAlgorithm:Ljava/lang/String;

    const-string v0, "TLS"

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->sslProtocol:Ljava/lang/String;

    sget-object v0, Lorg/apache/ftpserver/ssl/ClientAuth;->NONE:Lorg/apache/ftpserver/ssl/ClientAuth;

    iput-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

    return-void
.end method

.method private loadStore(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 4

    const-string v0, "Key store could not be loaded from "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Trying to load store from file"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Trying to load store from classpath"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    return-object p1

    :cond_1
    :try_start_1
    new-instance p2, Lorg/apache/ftpserver/FtpServerConfigurationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v1}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    throw p1
.end method


# virtual methods
.method public createSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;
    .locals 11

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Loading key store from \"{}\", using the key store type \"{}\""

    iget-object v2, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreType:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreFile:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreType:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystorePass:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->loadStore(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Loading trust store from \"{}\", using the key store type \"{}\""

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreType:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreFile:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreType:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStorePass:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->loadStore(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keyPass:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystorePass:Ljava/lang/String;

    :cond_1
    iget-object v3, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreAlgorithm:Ljava/lang/String;

    invoke-static {v3}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    new-instance v0, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;

    iget-object v7, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

    iget-object v8, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->sslProtocol:Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->enabledCipherSuites:[Ljava/lang/String;

    iget-object v10, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keyAlias:Ljava/lang/String;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lorg/apache/ftpserver/ssl/impl/DefaultSslConfiguration;-><init>(Ljavax/net/ssl/KeyManagerFactory;Ljavax/net/ssl/TrustManagerFactory;Lorg/apache/ftpserver/ssl/ClientAuth;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    iget-object v1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->LOG:Lorg/slf4j/Logger;

    const-string v2, "DefaultSsl.configure()"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    invoke-direct {v1, v2, v0}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

    return-object v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->enabledCipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keyAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keyPass:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystoreAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystoreFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreFile:Ljava/io/File;

    return-object v0
.end method

.method public getKeystorePassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystorePass:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystoreType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreType:Ljava/lang/String;

    return-object v0
.end method

.method public getSslProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->sslProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getTruststoreAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getTruststoreFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreFile:Ljava/io/File;

    return-object v0
.end method

.method public getTruststorePassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStorePass:Ljava/lang/String;

    return-object v0
.end method

.method public getTruststoreType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreType:Ljava/lang/String;

    return-object v0
.end method

.method public setClientAuthentication(Ljava/lang/String;)V
    .locals 1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "yes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "need"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "want"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/apache/ftpserver/ssl/ClientAuth;->WANT:Lorg/apache/ftpserver/ssl/ClientAuth;

    :goto_0
    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->clientAuth:Lorg/apache/ftpserver/ssl/ClientAuth;

    goto :goto_2

    :cond_1
    sget-object p1, Lorg/apache/ftpserver/ssl/ClientAuth;->NONE:Lorg/apache/ftpserver/ssl/ClientAuth;

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p1, Lorg/apache/ftpserver/ssl/ClientAuth;->NEED:Lorg/apache/ftpserver/ssl/ClientAuth;

    goto :goto_0

    :goto_2
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->enabledCipherSuites:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->enabledCipherSuites:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setKeyAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keyAlias:Ljava/lang/String;

    return-void
.end method

.method public setKeyPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keyPass:Ljava/lang/String;

    return-void
.end method

.method public setKeystoreAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setKeystoreFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreFile:Ljava/io/File;

    return-void
.end method

.method public setKeystorePassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystorePass:Ljava/lang/String;

    return-void
.end method

.method public setKeystoreType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->keystoreType:Ljava/lang/String;

    return-void
.end method

.method public setSslProtocol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->sslProtocol:Ljava/lang/String;

    return-void
.end method

.method public setTruststoreAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setTruststoreFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreFile:Ljava/io/File;

    return-void
.end method

.method public setTruststorePassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStorePass:Ljava/lang/String;

    return-void
.end method

.method public setTruststoreType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/SslConfigurationFactory;->trustStoreType:Ljava/lang/String;

    return-void
.end method

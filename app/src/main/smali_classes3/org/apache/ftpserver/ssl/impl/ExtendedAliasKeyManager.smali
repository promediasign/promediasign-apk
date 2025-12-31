.class public final Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SourceFile"


# instance fields
.field private delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

.field private serverKeyAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/KeyManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    check-cast p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    iput-object p2, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p2, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {p2, v0}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p3

    :cond_1
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p2, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {p2, v0}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p3

    :cond_1
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/ExtendedAliasKeyManager;->delegate:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

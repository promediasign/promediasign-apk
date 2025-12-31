.class public final Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# instance fields
.field private delegate:Ljavax/net/ssl/X509KeyManager;

.field private serverKeyAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/KeyManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Ljavax/net/ssl/X509KeyManager;

    iput-object p1, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    iput-object p2, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p2, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {p2, v0}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->serverKeyAlias:Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p3

    :cond_1
    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ssl/impl/AliasKeyManager;->delegate:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

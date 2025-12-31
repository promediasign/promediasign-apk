.class public Lorg/apache/ftpserver/usermanager/impl/UserMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private certificateChain:[Ljava/security/cert/Certificate;

.field private inetAddress:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;->certificateChain:[Ljava/security/cert/Certificate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;->inetAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public setCertificateChain([Ljava/security/cert/Certificate;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/Certificate;

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;->certificateChain:[Ljava/security/cert/Certificate;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;->certificateChain:[Ljava/security/cert/Certificate;

    :goto_0
    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;->inetAddress:Ljava/net/InetAddress;

    return-void
.end method

.class public Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch/qos/logback/core/net/ssl/SSLConfigurable;


# instance fields
.field private final delegate:Ljavax/net/ssl/SSLServerSocket;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLServerSocket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    return-void
.end method


# virtual methods
.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public setHostnameVerification(Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-static {p1}, LA/c;->j(Ljavax/net/ssl/SSLServerSocket;)Ljavax/net/ssl/SSLParameters;

    move-result-object p1

    invoke-static {p1}, LA/c;->r(Ljavax/net/ssl/SSLParameters;)V

    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-static {v0, p1}, LA/c;->s(Ljavax/net/ssl/SSLServerSocket;Ljavax/net/ssl/SSLParameters;)V

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLConfigurableServerSocket;->delegate:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    return-void
.end method

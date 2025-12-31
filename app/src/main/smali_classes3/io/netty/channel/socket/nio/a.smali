.class public abstract synthetic Lio/netty/channel/socket/nio/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A()Ljava/security/cert/CertPathValidatorException$BasicReason;
    .locals 1

    .line 1
    sget-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->NOT_YET_VALID:Ljava/security/cert/CertPathValidatorException$BasicReason;

    return-object v0
.end method

.method public static bridge synthetic B(Ljava/nio/channels/SocketChannel;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/nio/channels/SocketChannel;->shutdownInput()Ljava/nio/channels/SocketChannel;

    return-void
.end method

.method public static bridge synthetic C(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Ljava/security/cert/CertificateRevokedException;

    return p0
.end method

.method public static bridge synthetic D()Ljava/security/cert/CertPathValidatorException$BasicReason;
    .locals 1

    .line 1
    sget-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    return-object v0
.end method

.method public static bridge synthetic a(Ljavax/net/ssl/SNIMatcher;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SNIMatcher;->getType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljavax/net/ssl/SNIHostName;

    return-object v0
.end method

.method public static bridge synthetic c(Ljava/nio/channels/NetworkChannel;Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/nio/channels/NetworkChannel;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/net/SocketOption;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljavax/net/ssl/SNIHostName;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/lang/Object;)Ljava/security/AlgorithmConstraints;
    .locals 0

    .line 1
    check-cast p0, Ljava/security/AlgorithmConstraints;

    return-object p0
.end method

.method public static bridge synthetic g()Ljava/security/cert/CertPathValidatorException$BasicReason;
    .locals 1

    .line 1
    sget-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->EXPIRED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    return-object v0
.end method

.method public static bridge synthetic h(Ljava/security/cert/CertPathValidatorException;)Ljava/security/cert/CertPathValidatorException$Reason;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljavax/net/ssl/SSLParameters;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getServerNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/lang/Object;)Ljavax/net/ssl/SNIHostName;
    .locals 0

    .line 1
    check-cast p0, Ljavax/net/ssl/SNIHostName;

    return-object p0
.end method

.method public static synthetic k(Ljava/lang/String;)Ljavax/net/ssl/SNIHostName;
    .locals 1

    .line 1
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic l([B)Ljavax/net/ssl/SNIHostName;
    .locals 1

    .line 1
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SNIHostName;-><init>([B)V

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljavax/net/ssl/SNIMatcher;
    .locals 0

    .line 1
    check-cast p0, Ljavax/net/ssl/SNIMatcher;

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/lang/Object;)Ljavax/net/ssl/SNIServerName;
    .locals 0

    .line 1
    check-cast p0, Ljavax/net/ssl/SNIServerName;

    return-object p0
.end method

.method public static bridge synthetic o(Ljavax/net/ssl/SSLEngine;)Ljavax/net/ssl/SSLSession;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Ljava/nio/channels/NetworkChannel;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Ljava/nio/channels/NetworkChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;

    return-void
.end method

.method public static bridge synthetic q(Ljava/nio/channels/SocketChannel;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/nio/channels/SocketChannel;->shutdownOutput()Ljava/nio/channels/SocketChannel;

    return-void
.end method

.method public static bridge synthetic r(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/security/Provider;)V

    return-void
.end method

.method public static bridge synthetic s(Ljavax/net/ssl/SSLParameters;Ljava/security/AlgorithmConstraints;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V

    return-void
.end method

.method public static bridge synthetic t(Ljavax/net/ssl/SSLParameters;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setSNIMatchers(Ljava/util/Collection;)V

    return-void
.end method

.method public static bridge synthetic u(Ljavax/net/ssl/SSLParameters;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic v(Ljavax/net/ssl/SSLParameters;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setUseCipherSuitesOrder(Z)V

    return-void
.end method

.method public static bridge synthetic w(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Ljavax/net/ssl/SNIHostName;

    return p0
.end method

.method public static bridge synthetic x(Ljavax/net/ssl/SNIMatcher;Ljavax/net/ssl/SNIHostName;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SNIMatcher;->matches(Ljavax/net/ssl/SNIServerName;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Ljavax/net/ssl/SSLParameters;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getUseCipherSuitesOrder()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic z(Lio/netty/handler/ssl/ExtendedOpenSslSession;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/ExtendedSSLSession;->getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

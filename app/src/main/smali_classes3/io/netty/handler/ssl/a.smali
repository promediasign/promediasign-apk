.class public abstract synthetic Lio/netty/handler/ssl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/util/concurrent/locks/StampedLock;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/StampedLock;->readLock()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic B(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/internal/mqtt/handler/auth/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public static bridge synthetic C(Ljava/util/concurrent/locks/StampedLock;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/StampedLock;->unlockWrite(J)V

    return-void
.end method

.method public static bridge synthetic D(Ljava/util/concurrent/locks/StampedLock;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic a(Ljavax/net/ssl/SNIServerName;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Ljava/util/concurrent/locks/StampedLock;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/StampedLock;->tryOptimisticRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic c(Landroid/text/TextPaint;)Landroid/os/LocaleList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static bridge synthetic e(Ljavax/net/ssl/SSLParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljavax/net/ssl/SSLParameters;)Ljava/security/AlgorithmConstraints;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/security/cert/CertPathValidator;)Ljava/security/cert/CertPathChecker;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/security/cert/CertPathValidator;->getRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h()Ljava/security/cert/PKIXRevocationChecker$Option;
    .locals 1

    .line 1
    sget-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    return-object v0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;)Ljava/security/cert/PKIXRevocationChecker;
    .locals 0

    .line 1
    check-cast p0, Ljava/security/cert/PKIXRevocationChecker;

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/security/cert/PKIXCertPathChecker;)Ljava/security/cert/PKIXRevocationChecker;
    .locals 0

    .line 1
    check-cast p0, Ljava/security/cert/PKIXRevocationChecker;

    return-object p0
.end method

.method public static bridge synthetic k(Ljavax/net/ssl/SSLParameters;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getSNIMatchers()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 1
    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static synthetic m()Ljava/util/concurrent/locks/StampedLock;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/StampedLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/StampedLock;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic n(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o()V
    .locals 1

    .line 1
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    return-void
.end method

.method public static bridge synthetic p(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/nio/channels/DatagramChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    return-void
.end method

.method public static bridge synthetic q(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/nio/channels/SocketChannel;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    return-void
.end method

.method public static bridge synthetic r(Ljava/security/cert/PKIXRevocationChecker;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/security/cert/PKIXRevocationChecker;->setOcspResponses(Ljava/util/Map;)V

    return-void
.end method

.method public static bridge synthetic s(Ljava/security/cert/PKIXRevocationChecker;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/security/cert/PKIXRevocationChecker;->setOptions(Ljava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic t(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/internal/mqtt/handler/auth/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public static bridge synthetic u(Ljava/util/concurrent/CompletableFuture;Ls0/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public static bridge synthetic v(Ljava/util/concurrent/locks/StampedLock;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/StampedLock;->unlockRead(J)V

    return-void
.end method

.method public static bridge synthetic w(Ljavax/net/ssl/SSLParameters;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic x(Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isDefault()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Ljava/security/cert/PKIXCertPathChecker;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Ljava/security/cert/PKIXRevocationChecker;

    return p0
.end method

.method public static bridge synthetic z(Ljava/util/concurrent/locks/StampedLock;J)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/StampedLock;->validate(J)Z

    move-result p0

    return p0
.end method

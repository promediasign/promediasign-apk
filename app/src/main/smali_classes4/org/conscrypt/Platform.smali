.class final Lorg/conscrypt/Platform;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Conscrypt"

.field private static m_getCurveName:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v0, Ljava/security/spec/ECParameterSpec;

    const-string v1, "getCurveName"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/Platform;->m_getCurveName:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockGuardOnNetwork()V
    .locals 1

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    return-void
.end method

.method public static checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/AbstractConscryptSocket;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    const-string v0, "checkClientTrusted"

    const-class v4, Ljava/net/Socket;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lorg/conscrypt/AbstractConscryptSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p3

    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    const-string v0, "checkClientTrusted"

    const-class v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/ConscryptEngine;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 2
    const-string v0, "checkClientTrusted"

    const-class v4, Ljavax/net/ssl/SSLEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lorg/conscrypt/AbstractConscryptEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p3

    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    const-string v0, "checkClientTrusted"

    const-class v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/AbstractConscryptSocket;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    const-string v0, "checkServerTrusted"

    const-class v4, Ljava/net/Socket;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lorg/conscrypt/AbstractConscryptSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p3

    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    const-string v0, "checkServerTrusted"

    const-class v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/ConscryptEngine;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 2
    const-string v0, "checkServerTrusted"

    const-class v4, Ljavax/net/ssl/SSLEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lorg/conscrypt/AbstractConscryptEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p3

    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    const-string v0, "checkServerTrusted"

    const-class v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/X509TrustManager;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, [Ljava/security/cert/X509Certificate;

    aput-object v6, v5, v3

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    aput-object p4, v5, v0

    invoke-virtual {v4, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p2, p4, v3

    aput-object p3, p4, v2

    aput-object p5, p4, v0

    invoke-virtual {p0, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/security/cert/CertificateException;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/security/cert/CertificateException;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    return v3
.end method

.method public static closeGuardClose(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Ldalvik/system/CloseGuard;

    invoke-virtual {p0}, Ldalvik/system/CloseGuard;->close()V

    return-void
.end method

.method public static closeGuardGet()Ldalvik/system/CloseGuard;
    .locals 1

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    return-object v0
.end method

.method public static closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p0, Ldalvik/system/CloseGuard;

    invoke-virtual {p0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public static closeGuardWarnIfOpen(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Ldalvik/system/CloseGuard;

    invoke-virtual {p0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    return-void
.end method

.method public static createEngineSocket(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/Java8EngineSocket;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/Java8EngineSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/conscrypt/ConscryptEngineSocket;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/conscrypt/ConscryptEngineSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public static createEngineSocket(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/Java8EngineSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/Java8EngineSocket;-><init>(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/conscrypt/ConscryptEngineSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/ConscryptEngineSocket;-><init>(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public static createEngineSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;
    .locals 8

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/Java8EngineSocket;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/Java8EngineSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/conscrypt/ConscryptEngineSocket;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/conscrypt/ConscryptEngineSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public static createEngineSocket(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;
    .locals 2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/Java8EngineSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/Java8EngineSocket;-><init>(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/conscrypt/ConscryptEngineSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/ConscryptEngineSocket;-><init>(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public static createEngineSocket(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;
    .locals 8

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/Java8EngineSocket;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/Java8EngineSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/conscrypt/ConscryptEngineSocket;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/conscrypt/ConscryptEngineSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public static createEngineSocket(Lorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptEngineSocket;
    .locals 2

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/Java8EngineSocket;

    invoke-direct {v0, p0}, Lorg/conscrypt/Java8EngineSocket;-><init>(Lorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/conscrypt/ConscryptEngineSocket;

    invoke-direct {v0, p0}, Lorg/conscrypt/ConscryptEngineSocket;-><init>(Lorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public static createFileDescriptorSocket(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/Java8FileDescriptorSocket;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public static createFileDescriptorSocket(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/Java8FileDescriptorSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public static createFileDescriptorSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;
    .locals 8

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/Java8FileDescriptorSocket;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public static createFileDescriptorSocket(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;
    .locals 2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/Java8FileDescriptorSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {v0, p0, p1, p2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public static createFileDescriptorSocket(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;
    .locals 8

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/Java8FileDescriptorSocket;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/conscrypt/ConscryptFileDescriptorSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public static createFileDescriptorSocket(Lorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/ConscryptFileDescriptorSocket;
    .locals 2

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/Java8FileDescriptorSocket;

    invoke-direct {v0, p0}, Lorg/conscrypt/Java8FileDescriptorSocket;-><init>(Lorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {v0, p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;-><init>(Lorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public static fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/conscrypt/GCMParameters;
    .locals 5

    const-string v0, "GCMParameterSpec lacks expected methods"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    const-string v3, "getTLen"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "getIV"

    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    new-instance v1, Lorg/conscrypt/GCMParameters;

    invoke-direct {v1, v3, p0}, Lorg/conscrypt/GCMParameters;-><init>(I[B)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not fetch GCM parameters"

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-object v1
.end method

.method public static fromGCMParameters(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_0
    return-object v0
.end method

.method private static varargs getClass([Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/conscrypt/Platform;->m_getCurveName:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static getDefaultCertKeyStore()Ljava/security/KeyStore;
    .locals 2

    const-string v0, "AndroidCAStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDefaultHostnameVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;
    .locals 1

    invoke-static {}, Lorg/conscrypt/OkHostnameVerifier;->strictInstance()Lorg/conscrypt/OkHostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultProviderName()Ljava/lang/String;
    .locals 1

    const-string v0, "Conscrypt"

    return-object v0
.end method

.method public static getEndpointIdentificationAlgorithm(Ljavax/net/ssl/SSLParameters;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    .locals 3

    :try_start_0
    const-class v0, Ljava/net/Socket;

    const-string v1, "impl"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, Ljava/net/SocketImpl;

    const-string v2, "fd"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get FileDescriptor from socket"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getFileDescriptorFromSSLSocket(Lorg/conscrypt/AbstractConscryptSocket;)Ljava/io/FileDescriptor;
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static getHostStringFromInetSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    :try_start_0
    const-class v0, Ljava/net/InetSocketAddress;

    const-string v1, "getHostString"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    :cond_0
    return-object v2
.end method

.method public static getOriginalHostNameFromInetAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_1

    :try_start_0
    const-class v0, Ljava/net/InetAddress;

    const-string v1, "holder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v3, "java.net.InetAddress$InetAddressHolder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getOriginalHostName"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-object v0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to get originalHostName"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    :cond_1
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/AbstractConscryptSocket;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/Platform;->getSSLParametersFromImpl(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lorg/conscrypt/Platform;->setParametersSniHostname(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/AbstractConscryptSocket;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static getSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/Platform;->getSSLParametersFromImpl(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Lorg/conscrypt/Platform;->setParametersSniHostname(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private static getSSLParametersFromImpl(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setEndpointIdentificationAlgorithm"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1}, Lorg/conscrypt/SSLParametersImpl;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-string v3, "setUseCipherSuitesOrder"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1}, Lorg/conscrypt/SSLParametersImpl;->getUseCipherSuitesOrder()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getSniHostnameFromParams(Ljavax/net/ssl/SSLParameters;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getServerNames"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/socket/nio/a;->n(Ljava/lang/Object;)Ljavax/net/ssl/SNIServerName;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/a;->a(Ljavax/net/ssl/SNIServerName;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/netty/channel/socket/nio/a;->j(Ljava/lang/Object;)Ljavax/net/ssl/SNIHostName;

    move-result-object p0

    invoke-static {p0}, Lio/netty/channel/socket/nio/a;->e(Ljavax/net/ssl/SNIHostName;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static isCTVerificationRequired(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "conscrypt.ct.enable"

    .line 6
    .line 7
    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const-string v1, "\\."

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v1, "conscrypt.ct.enforce"

    .line 42
    .line 43
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, ".*"

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    :cond_2
    const-string v3, "."

    .line 87
    .line 88
    invoke-static {v1, v3, v2}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    if-eqz p0, :cond_4

    .line 98
    .line 99
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    :cond_4
    :goto_1
    return v0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    const-string v3, "android.os.Process"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "myUid"

    invoke-virtual {v3, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    const-string v5, "android.util.EventLog"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "writeEvent"

    new-array v7, v2, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    const-class v8, [Ljava/lang/Object;

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const v6, 0x534e4554

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "conscrypt"

    aput-object v8, v7, v1

    aput-object v3, v7, v0

    aput-object p0, v7, v2

    new-array p0, v2, [Ljava/lang/Object;

    aput-object v6, p0, v1

    aput-object v7, p0, v0

    invoke-virtual {v5, v4, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static logStackTraceSnippet(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "Conscrypt"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    array-length v1, p0

    if-ge p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p0, p1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static newDefaultBlocklist()Lorg/conscrypt/CertBlocklist;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static newDefaultCertStore()Lorg/conscrypt/ConscryptCertStore;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static newDefaultLogStore()Lorg/conscrypt/ct/CTLogStore;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static newDefaultPolicy(Lorg/conscrypt/ct/CTLogStore;)Lorg/conscrypt/ct/CTPolicy;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "org.apache.harmony.security.utils.AlgNameMapper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "map2AlgName"

    new-array v6, v1, [Ljava/lang/Class;

    aput-object v2, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v0

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v4

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    :try_start_1
    const-string v4, "sun.security.x509.AlgorithmId"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "get"

    new-array v6, v1, [Ljava/lang/Class;

    aput-object v2, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v5, "getName"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-object v0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method public static provideTrustManagerByDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static serverNamePermitted(Lorg/conscrypt/SSLParametersImpl;Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/conscrypt/Platform;->serverNamePermittedInternal(Lorg/conscrypt/SSLParametersImpl;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static serverNamePermittedInternal(Lorg/conscrypt/SSLParametersImpl;Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-virtual {p0}, Lorg/conscrypt/SSLParametersImpl;->getSNIMatchers()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/netty/channel/socket/nio/a;->m(Ljava/lang/Object;)Ljavax/net/ssl/SNIMatcher;

    move-result-object v1

    invoke-static {p1}, Lio/netty/channel/socket/nio/a;->k(Ljava/lang/String;)Ljavax/net/ssl/SNIHostName;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/channel/socket/nio/a;->x(Ljavax/net/ssl/SNIMatcher;Ljavax/net/ssl/SNIHostName;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setCurveName"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setEndpointIdentificationAlgorithm(Ljavax/net/ssl/SSLParameters;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static setParametersSniHostname(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/AbstractConscryptSocket;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lorg/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    aput-object v3, v2, v0

    const-string v3, "setServerNames"

    invoke-virtual {p1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {}, Lio/netty/handler/ssl/a;->o()V

    invoke-virtual {p2}, Lorg/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/netty/channel/socket/nio/a;->k(Ljava/lang/String;)Ljavax/net/ssl/SNIHostName;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static setParametersSniHostname(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lorg/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    aput-object v3, v2, v0

    const-string v3, "setServerNames"

    invoke-virtual {p1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {}, Lio/netty/handler/ssl/a;->o()V

    invoke-virtual {p2}, Lorg/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/netty/channel/socket/nio/a;->k(Ljava/lang/String;)Ljavax/net/ssl/SNIHostName;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/AbstractConscryptSocket;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/Platform;->setSSLParametersOnImpl(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    invoke-static {p0}, Lorg/conscrypt/Platform;->getSniHostnameFromParams(Ljavax/net/ssl/SSLParameters;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Lorg/conscrypt/AbstractConscryptSocket;->setHostname(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static setSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)V
    .locals 1

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/Platform;->setSSLParametersOnImpl(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    invoke-static {p0}, Lorg/conscrypt/Platform;->getSniHostnameFromParams(Ljavax/net/ssl/SSLParameters;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Lorg/conscrypt/ConscryptEngine;->setHostname(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private static setSSLParametersOnImpl(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getEndpointIdentificationAlgorithm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/conscrypt/SSLParametersImpl;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getUseCipherSuitesOrder"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lorg/conscrypt/SSLParametersImpl;->setUseCipherSuitesOrder(Z)V

    return-void
.end method

.method public static setSocketWriteTimeout(Ljava/net/Socket;J)V
    .locals 17

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->valid()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "android.system.StructTimeval"

    const-string v7, "libcore.io.StructTimeval"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/conscrypt/Platform;->getClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "Conscrypt"

    if-nez v6, :cond_0

    :try_start_1
    const-string v0, "StructTimeval == null; not setting socket write timeout"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_0
    const-string v8, "fromMillis"

    new-array v9, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v0, "fromMillis == null; not setting socket write timeout"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v9, v10, v3

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v10, "libcore.io.Libcore"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "os"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v0, "os == null; not setting socket write timeout"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    const-string v0, "instance_os == null; not setting socket write timeout"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v11, "android.system.OsConstants"

    const-string v12, "libcore.io.OsConstants"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/conscrypt/Platform;->getClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    if-nez v11, :cond_4

    const-string v0, "OsConstants == null; not setting socket write timeout"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string v12, "SOL_SOCKET"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    if-nez v12, :cond_5

    const-string v0, "SOL_SOCKET == null; not setting socket write timeout"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string v13, "SO_SNDTIMEO"

    invoke-virtual {v11, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    if-nez v11, :cond_6

    const-string v0, "SO_SNDTIMEO == null; not setting socket write timeout"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "setsockoptTimeval"

    new-array v15, v2, [Ljava/lang/Class;

    const-class v16, Ljava/io/FileDescriptor;

    aput-object v16, v15, v3

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v4

    aput-object v16, v15, v1

    aput-object v6, v15, v0

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-nez v6, :cond_7

    const-string v0, "setsockoptTimeval == null; not setting socket write timeout"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v11, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v3

    aput-object v7, v2, v4

    aput-object v9, v2, v1

    aput-object v8, v2, v0

    invoke-virtual {v6, v10, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not set socket write timeout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/conscrypt/Platform;->logStackTraceSnippet(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caused by: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    :goto_2
    return-void
.end method

.method public static setup()V
    .locals 0

    return-void
.end method

.method public static supportsConscryptCertStore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportsX509ExtendedTrustManager()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Can\'t find GCMParameterSpec class"

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_0

    :try_start_1
    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    const-class v7, [B

    aput-object v7, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object p1, v2, v0

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_2

    :catch_5
    move-exception p0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :goto_2
    invoke-static {v3, p0}, Lorg/conscrypt/Platform;->logStackTraceSnippet(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v4
.end method

.method public static unwrapEngine(Ljavax/net/ssl/SSLEngine;)Ljavax/net/ssl/SSLEngine;
    .locals 0

    return-object p0
.end method

.method public static wrapEngine(Lorg/conscrypt/ConscryptEngine;)Ljavax/net/ssl/SSLEngine;
    .locals 0

    return-object p0
.end method

.method public static wrapRsaKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/Java8ExtendedSSLSession;

    invoke-direct {v0, p0}, Lorg/conscrypt/Java8ExtendedSSLSession;-><init>(Lorg/conscrypt/ExternalSession;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static wrapSocketFactoryIfNeeded(Lorg/conscrypt/OpenSSLSocketFactoryImpl;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/conscrypt/KitKatPlatformOpenSSLSocketAdapterFactory;

    invoke-direct {v0, p0}, Lorg/conscrypt/KitKatPlatformOpenSSLSocketAdapterFactory;-><init>(Lorg/conscrypt/OpenSSLSocketFactoryImpl;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.class final Lio/netty/handler/ssl/Conscrypt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CAN_INSTANCE_PROVIDER:Z

.field private static final IS_CONSCRYPT_SSLENGINE:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/netty/handler/ssl/Conscrypt;->loadIsConscryptEngine()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/Conscrypt;->IS_CONSCRYPT_SSLENGINE:Ljava/lang/reflect/Method;

    invoke-static {}, Lio/netty/handler/ssl/Conscrypt;->canInstanceProvider()Z

    move-result v0

    sput-boolean v0, Lio/netty/handler/ssl/Conscrypt;->CAN_INSTANCE_PROVIDER:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canInstanceProvider()Z
    .locals 3

    :try_start_0
    const-string v0, "org.conscrypt.OpenSSLProvider"

    const-class v1, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAvailable()Z
    .locals 2

    sget-boolean v0, Lio/netty/handler/ssl/Conscrypt;->CAN_INSTANCE_PROVIDER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/handler/ssl/Conscrypt;->IS_CONSCRYPT_SSLENGINE:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isConscryptEngine(Ljavax/net/ssl/SSLEngine;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lio/netty/handler/ssl/Conscrypt;->IS_CONSCRYPT_SSLENGINE:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    return v0
.end method

.method public static isEngineSupported(Ljavax/net/ssl/SSLEngine;)Z
    .locals 1

    invoke-static {}, Lio/netty/handler/ssl/Conscrypt;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/netty/handler/ssl/Conscrypt;->isConscryptEngine(Ljavax/net/ssl/SSLEngine;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static loadIsConscryptEngine()Ljava/lang/reflect/Method;
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "org.conscrypt.Conscrypt"

    const-class v2, Lio/netty/handler/ssl/ConscryptAlpnSslEngine;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isConscrypt"

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Ljavax/net/ssl/SSLEngine;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

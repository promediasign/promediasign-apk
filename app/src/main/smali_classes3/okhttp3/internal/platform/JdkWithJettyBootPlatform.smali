.class Lokhttp3/internal/platform/JdkWithJettyBootPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
    }
.end annotation


# instance fields
.field private final clientProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final getMethod:Ljava/lang/reflect/Method;

.field private final putMethod:Ljava/lang/reflect/Method;

.field private final removeMethod:Ljava/lang/reflect/Method;

.field private final serverProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    iput-object p5, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Platform;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Ljavax/net/ssl/SSLSocket;

    const-string v3, "org.eclipse.jetty.alpn.ALPN"

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "org.eclipse.jetty.alpn.ALPN$Provider"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "org.eclipse.jetty.alpn.ALPN$ClientProvider"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v5, "org.eclipse.jetty.alpn.ALPN$ServerProvider"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v5, "put"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v2, v6, v1

    aput-object v4, v6, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v4, "get"

    new-array v5, v0, [Ljava/lang/Class;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v4, "remove"

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-instance v0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v0, "unable to remove alpn"

    invoke-static {v0, p1}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p3}, Lokhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    :try_start_0
    const-class v2, Lokhttp3/internal/platform/Platform;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    iget-object v4, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v3, v5, v0

    aput-object v4, v5, p2

    new-instance v3, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;

    invoke-direct {v3, p3}, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;-><init>(Ljava/util/List;)V

    invoke-static {v2, v5, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p3

    iget-object v2, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p3, v1, p2

    const/4 p1, 0x0

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "unable to set alpn"

    invoke-static {p2, p1}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;

    iget-boolean v1, v0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z

    if-nez v1, :cond_0

    iget-object v2, v0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    const-string v1, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, p1}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :goto_1
    const-string v0, "unable to get selected protocol"

    invoke-static {v0, p1}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

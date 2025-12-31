.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/internal/tcnative/SSLPrivateKeyMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivateKeyMethod"
.end annotation


# instance fields
.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

.field private final keyMethod:Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    return-void
.end method

.method private retrieveEngine(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    .locals 3

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/ssl/OpenSslEngineMap;->get(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for sslPointer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static verifyResult([B)[B
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    invoke-direct {p0}, Ljava/security/SignatureException;-><init>()V

    throw p0
.end method


# virtual methods
.method public decrypt(J[B)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->retrieveEngine(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    invoke-virtual {p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public sign(JI[B)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$PrivateKeyMethod;->retrieveEngine(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    invoke-virtual {p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    throw p2
.end method

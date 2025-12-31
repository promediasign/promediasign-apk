.class final Lio/netty/handler/ssl/OpenSslKeyMaterialManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final KEY_TYPE_DH_RSA:Ljava/lang/String; = "DH_RSA"

.field static final KEY_TYPE_EC:Ljava/lang/String; = "EC"

.field static final KEY_TYPE_EC_EC:Ljava/lang/String; = "EC_EC"

.field static final KEY_TYPE_EC_RSA:Ljava/lang/String; = "EC_RSA"

.field static final KEY_TYPE_RSA:Ljava/lang/String; = "RSA"


# instance fields
.field private final provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->KEY_TYPES:Ljava/util/Map;

    const-string v1, "RSA"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DHE_RSA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDHE_RSA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ECDHE_ECDSA"

    const-string v2, "EC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ECDH_RSA"

    const-string v2, "EC_RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ECDH_ECDSA"

    const-string v2, "EC_EC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "DH_RSA"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    return-void
.end method

.method private chooseClientAlias(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;[Ljava/lang/String;[Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->keyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    instance-of v1, v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p2, p3, p1}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    invoke-interface {v0, p2, p3, p1}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private chooseServerAlias(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->keyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    instance-of v1, v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p2, v2, p1}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v0, p2, v2, v2}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setKeyMaterial(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->provider:Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    iget-object v2, p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual {v1, v2, p2}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->chooseKeyMaterial(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterial;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->setKeyMaterial(Lio/netty/handler/ssl/OpenSslKeyMaterial;)Z

    move-result p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->release()Z

    :cond_2
    return p1

    :goto_2
    :try_start_1
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_3
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterial;->release()Z

    :cond_3
    throw p1
.end method


# virtual methods
.method public setKeyMaterialClientSide(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;[Ljava/lang/String;[Ljavax/security/auth/x500/X500Principal;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->chooseClientAlias(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;[Ljava/lang/String;[Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->setKeyMaterial(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setKeyMaterialServerSide(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V
    .locals 6

    invoke-virtual {p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->authMethods()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    sget-object v5, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->KEY_TYPES:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v4}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->chooseServerAlias(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1, v4}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;->setKeyMaterial(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

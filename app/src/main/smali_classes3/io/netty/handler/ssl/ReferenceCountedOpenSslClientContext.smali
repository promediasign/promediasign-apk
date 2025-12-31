.class public final Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;
.super Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$ExtendedTrustManagerVerifyCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$TrustManagerVerifyCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;
    }
.end annotation


# static fields
.field private static final SUPPORTED_KEY_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "EC_RSA"

    const-string v2, "EC_EC"

    const-string v3, "RSA"

    const-string v4, "DH_RSA"

    const-string v5, "EC"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->SUPPORTED_KEY_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;[Ljava/lang/String;JJZLjava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/KeyManagerFactory;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig;",
            "[",
            "Ljava/lang/String;",
            "JJZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    sget-object v11, Lio/netty/handler/ssl/ClientAuth;->NONE:Lio/netty/handler/ssl/ClientAuth;

    const/4 v13, 0x0

    const/4 v0, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-wide/from16 v5, p11

    move-wide/from16 v7, p13

    move-object/from16 v10, p3

    move-object/from16 v12, p10

    move/from16 v14, p15

    move v15, v0

    invoke-direct/range {v1 .. v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;-><init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ)V

    move-object/from16 v12, p0

    :try_start_0
    iget-wide v2, v12, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    iget-object v4, v12, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p16

    invoke-static/range {v1 .. v11}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->newSessionContext(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;JLio/netty/handler/ssl/OpenSslEngineMap;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    iput-object v0, v12, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->release()Z

    throw v0
.end method

.method public static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method public static synthetic access$100()Ljava/util/Set;
    .locals 1

    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->SUPPORTED_KEY_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method public static newSessionContext(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;JLio/netty/handler/ssl/OpenSslEngineMap;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslSessionContext;
    .locals 2

    if-nez p7, :cond_0

    if-nez p6, :cond_1

    :cond_0
    if-eqz p7, :cond_2

    if-eqz p6, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Either both keyCertChain and key needs to be null or none of them"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->useKeyManagerFactory()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez p9, :cond_4

    if-eqz p6, :cond_3

    invoke-static {p1, p2, p6, p7, p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->setKeyMaterial(J[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :cond_3
    :goto_1
    move-object p6, v0

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "KeyManagerFactory not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-nez p9, :cond_7

    if-eqz p6, :cond_7

    invoke-static {p8}, Lio/netty/handler/ssl/SslContext;->keyStorePassword(Ljava/lang/String;)[C

    move-result-object p9

    invoke-static {p6, p7, p9, p10}, Lio/netty/handler/ssl/SslContext;->buildKeyStore([Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[CLjava/lang/String;)Ljava/security/KeyStore;

    move-result-object p6

    invoke-virtual {p6}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p7

    invoke-interface {p7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p7

    if-eqz p7, :cond_6

    new-instance p7, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;

    invoke-direct {p7}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;-><init>()V

    goto :goto_2

    :cond_6
    new-instance p7, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;

    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    invoke-direct {p7, v1}, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactory;)V

    :goto_2
    invoke-virtual {p7, p6, p9}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    invoke-static {p7, p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->providerFor(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object p6

    goto :goto_3

    :cond_7
    if-eqz p9, :cond_8

    invoke-static {p9, p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->providerFor(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object p6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_8
    move-object p6, v0

    :goto_3
    if-eqz p6, :cond_9

    :try_start_1
    new-instance p7, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;

    invoke-direct {p7, p6}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;-><init>(Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V

    new-instance p8, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;

    invoke-direct {p8, p3, p7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientCertificateCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslKeyMaterialManager;)V

    invoke-static {p1, p2, p8}, Lio/netty/internal/tcnative/SSLContext;->setCertificateCallback(JLio/netty/internal/tcnative/CertificateCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v0, p6

    goto :goto_8

    :catch_1
    move-exception p0

    move-object v0, p6

    goto :goto_7

    :cond_9
    :goto_4
    const/4 p7, 0x1

    const/16 p8, 0xa

    :try_start_2
    invoke-static {p1, p2, p7, p8}, Lio/netty/internal/tcnative/SSLContext;->setVerify(JII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p4, :cond_a

    :try_start_3
    invoke-static {p4, p5, p10}, Lio/netty/handler/ssl/SslContext;->buildTrustManagerFactory([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p5

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_6

    :cond_a
    if-nez p5, :cond_b

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p5

    invoke-virtual {p5, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    :cond_b
    :goto_5
    invoke-virtual {p5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p4

    invoke-static {p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->setVerifyCallback(JLio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;

    invoke-direct {p1, p0, p6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$OpenSslClientSessionContext;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V

    return-object p1

    :goto_6
    if-eqz p6, :cond_c

    invoke-virtual {p6}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    :cond_c
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string p2, "unable to setup trustmanager"

    invoke-direct {p1, p2, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_7
    :try_start_5
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string p2, "failed to set certificate and key"

    invoke-direct {p1, p2, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_8
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    :cond_d
    throw p0
.end method

.method private static setVerifyCallback(JLio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    invoke-static {p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->useExtendedTrustManager(Ljavax/net/ssl/X509TrustManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$ExtendedTrustManagerVerifyCallback;

    check-cast p3, Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-direct {v0, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$ExtendedTrustManagerVerifyCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509ExtendedTrustManager;)V

    :goto_0
    invoke-static {p0, p1, v0}, Lio/netty/internal/tcnative/SSLContext;->setCertVerifyCallback(JLio/netty/internal/tcnative/CertificateVerifier;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$TrustManagerVerifyCallback;

    invoke-direct {v0, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext$TrustManagerVerifyCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;

    return-object v0
.end method

.method public bridge synthetic sessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslClientContext;->sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;

    move-result-object v0

    return-object v0
.end method

.class public final Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;
.super Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslSniHostnameMatcher;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$ExtendedTrustManagerVerifyCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$TrustManagerVerifyCallback;,
        Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslServerCertificateCallback;
    }
.end annotation


# static fields
.field private static final ID:[B

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final sessionContext:Lio/netty/handler/ssl/OpenSslServerSessionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->ID:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6et
        0x65t
        0x74t
        0x74t
        0x79t
    .end array-data
.end method

.method public constructor <init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJLio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 19
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
            "JJ",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    invoke-static/range {p9 .. p9}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toNegotiator(Lio/netty/handler/ssl/ApplicationProtocolConfig;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    move-result-object v9

    invoke-direct/range {v0 .. v18}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;-><init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;JJLio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;JJLio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;)V
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
            "Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;",
            "JJ",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    move-object/from16 v15, p0

    const/4 v9, 0x1

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    move-object/from16 v10, p3

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move/from16 v13, p16

    move/from16 v14, p17

    move v15, v0

    invoke-direct/range {v1 .. v15}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;-><init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ)V

    :try_start_0
    iget-wide v2, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->ctx:J

    iget-object v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    move-object/from16 p7, p0

    move-wide/from16 p8, v2

    move-object/from16 p10, v0

    move-object/from16 p11, p1

    move-object/from16 p12, p2

    move-object/from16 p13, p3

    move-object/from16 p14, p4

    move-object/from16 p15, p5

    move-object/from16 p16, p6

    move-object/from16 p17, p18

    invoke-static/range {p7 .. p17}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->newSessionContext(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;JLio/netty/handler/ssl/OpenSslEngineMap;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslServerSessionContext;

    move-result-object v0

    iput-object v0, v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->sessionContext:Lio/netty/handler/ssl/OpenSslServerSessionContext;
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

    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method public static newSessionContext(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;JLio/netty/handler/ssl/OpenSslEngineMap;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslServerSessionContext;
    .locals 4

    const-string v0, "unable to setup accepted issuers for trustmanager "

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, p2, v1, v2}, Lio/netty/internal/tcnative/SSLContext;->setVerify(JII)V

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->useKeyManagerFactory()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p9, :cond_0

    const-string p9, "keyCertChain"

    invoke-static {p6, p9}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2, p6, p7, p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->setKeyMaterial(J[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V

    move-object p6, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "KeyManagerFactory not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez p9, :cond_3

    invoke-static {p8}, Lio/netty/handler/ssl/SslContext;->keyStorePassword(Ljava/lang/String;)[C

    move-result-object p9

    invoke-static {p6, p7, p9, p10}, Lio/netty/handler/ssl/SslContext;->buildKeyStore([Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[CLjava/lang/String;)Ljava/security/KeyStore;

    move-result-object p6

    invoke-virtual {p6}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p7

    invoke-interface {p7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p7

    if-eqz p7, :cond_2

    new-instance p7, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;

    invoke-direct {p7}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p7, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;

    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    invoke-direct {p7, v1}, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactory;)V

    :goto_0
    invoke-virtual {p7, p6, p9}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    move-object p9, p7

    :cond_3
    invoke-static {p9, p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->providerFor(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    move-result-object p6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p7, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslServerCertificateCallback;

    new-instance p8, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;

    invoke-direct {p8, p6}, Lio/netty/handler/ssl/OpenSslKeyMaterialManager;-><init>(Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V

    invoke-direct {p7, p3, p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslServerCertificateCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslKeyMaterialManager;)V

    invoke-static {p1, p2, p7}, Lio/netty/internal/tcnative/SSLContext;->setCertificateCallback(JLio/netty/internal/tcnative/CertificateCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz p4, :cond_4

    :try_start_2
    invoke-static {p4, p5, p10}, Lio/netty/handler/ssl/SslContext;->buildTrustManagerFactory([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p5

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, p6

    goto/16 :goto_7

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_5

    :cond_4
    if-nez p5, :cond_5

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p5

    invoke-virtual {p5, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    :cond_5
    :goto_2
    invoke-virtual {p5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p4

    invoke-static {p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->chooseTrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->setVerifyCallback(JLio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V

    invoke-interface {p4}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p5

    if-eqz p5, :cond_7

    array-length p7, p5
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez p7, :cond_7

    const-wide/16 p7, 0x0

    :try_start_3
    sget-object p9, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    invoke-static {p9, p5}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;[Ljava/security/cert/X509Certificate;)J

    move-result-wide p7

    invoke-static {p1, p2, p7, p8}, Lio/netty/internal/tcnative/SSLContext;->setCACertificateBio(JJ)Z

    move-result p5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p5, :cond_6

    :try_start_4
    invoke-static {p7, p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :cond_6
    :try_start_5
    new-instance p0, Ljavax/net/ssl/SSLException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-static {p7, p8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->freeBio(J)V

    throw p0

    :cond_7
    :goto_3
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result p4

    const/16 p5, 0x8

    if-lt p4, p5, :cond_8

    new-instance p4, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslSniHostnameMatcher;

    invoke-direct {p4, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$OpenSslSniHostnameMatcher;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;)V

    invoke-static {p1, p2, p4}, Lio/netty/internal/tcnative/SSLContext;->setSniHostnameMatcher(JLio/netty/internal/tcnative/SniHostNameMatcher;)V
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_8
    :try_start_7
    new-instance p1, Lio/netty/handler/ssl/OpenSslServerSessionContext;

    invoke-direct {p1, p0, p6}, Lio/netty/handler/ssl/OpenSslServerSessionContext;-><init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;)V

    sget-object p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->ID:[B

    invoke-virtual {p1, p0}, Lio/netty/handler/ssl/OpenSslServerSessionContext;->setSessionIdContext([B)Z

    return-object p1

    :goto_4
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string p2, "unable to setup trustmanager"

    invoke-direct {p1, p2, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_5
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_3
    move-exception p0

    move-object v3, p6

    :goto_6
    :try_start_8
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string p2, "failed to set certificate and key"

    invoke-direct {p1, p2, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_7
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;->destroy()V

    :cond_9
    throw p0
.end method

.method private static setVerifyCallback(JLio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    invoke-static {p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->useExtendedTrustManager(Ljavax/net/ssl/X509TrustManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$ExtendedTrustManagerVerifyCallback;

    check-cast p3, Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-direct {v0, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$ExtendedTrustManagerVerifyCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509ExtendedTrustManager;)V

    :goto_0
    invoke-static {p0, p1, v0}, Lio/netty/internal/tcnative/SSLContext;->setCertVerifyCallback(JLio/netty/internal/tcnative/CertificateVerifier;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$TrustManagerVerifyCallback;

    invoke-direct {v0, p2, p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext$TrustManagerVerifyCallback;-><init>(Lio/netty/handler/ssl/OpenSslEngineMap;Ljavax/net/ssl/X509TrustManager;)V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public sessionContext()Lio/netty/handler/ssl/OpenSslServerSessionContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->sessionContext:Lio/netty/handler/ssl/OpenSslServerSessionContext;

    return-object v0
.end method

.method public bridge synthetic sessionContext()Lio/netty/handler/ssl/OpenSslSessionContext;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->sessionContext()Lio/netty/handler/ssl/OpenSslServerSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslServerContext;->sessionContext()Lio/netty/handler/ssl/OpenSslServerSessionContext;

    move-result-object v0

    return-object v0
.end method

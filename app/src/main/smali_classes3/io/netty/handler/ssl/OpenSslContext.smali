.class public abstract Lio/netty/handler/ssl/OpenSslContext;
.super Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig;",
            "JJI[",
            "Ljava/security/cert/Certificate;",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;-><init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/ApplicationProtocolConfig;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/CipherSuiteFilter;",
            "Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;",
            "JJI[",
            "Ljava/security/cert/Certificate;",
            "Lio/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 2
    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;-><init>(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;JJI[Ljava/security/cert/Certificate;Lio/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-static {p0}, Lio/netty/handler/ssl/OpenSsl;->releaseIfNeeded(Lio/netty/util/ReferenceCounted;)V

    return-void
.end method

.method public final newEngine0(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;
    .locals 7

    new-instance v6, Lio/netty/handler/ssl/OpenSslEngine;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/ssl/OpenSslEngine;-><init>(Lio/netty/handler/ssl/OpenSslContext;Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;IZ)V

    return-object v6
.end method

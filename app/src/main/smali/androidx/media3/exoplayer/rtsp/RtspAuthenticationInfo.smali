.class final Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final authenticationMechanism:I

.field public final nonce:Ljava/lang/String;

.field public final opaque:Ljava/lang/String;

.field public final realm:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->authenticationMechanism:I

    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->realm:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->nonce:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->opaque:Ljava/lang/String;

    return-void
.end method

.method private getBasicAuthorizationHeaderValue(Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Basic %s"

    invoke-static {p1, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDigestAuthorizationHeaderValue(Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    const-string v6, ":"

    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    invoke-static {p3}, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil;->toMethodString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;->username:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->realm:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;->password:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    invoke-static {v8}, Landroidx/media3/common/util/Util;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v7, p3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p3

    invoke-static {p3}, Landroidx/media3/common/util/Util;->toHexString([B)Ljava/lang/String;

    move-result-object p3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->nonce:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v7, p3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p3

    invoke-static {p3}, Landroidx/media3/common/util/Util;->toHexString([B)Ljava/lang/String;

    move-result-object p3

    iget-object v6, p0, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->opaque:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\""

    iget-object p1, p1, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;->username:Ljava/lang/String;

    iget-object v7, p0, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->realm:Ljava/lang/String;

    iget-object v8, p0, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->nonce:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object v7, v5, v3

    aput-object v8, v5, v2

    aput-object p2, v5, v1

    aput-object p3, v5, v0

    invoke-static {v6, v5}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string v6, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\", opaque=\"%s\""

    iget-object p1, p1, Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;->username:Ljava/lang/String;

    iget-object v7, p0, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->realm:Ljava/lang/String;

    iget-object v8, p0, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->nonce:Ljava/lang/String;

    iget-object v9, p0, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->opaque:Ljava/lang/String;

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v4

    aput-object v7, v10, v3

    aput-object v8, v10, v2

    aput-object p2, v10, v1

    aput-object p3, v10, v0

    aput-object v9, v10, v5

    invoke-static {v6, v10}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    const/4 p2, 0x0

    invoke-static {p2, p1}, Landroidx/media3/common/ParserException;->createForManifestWithUnsupportedFeature(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getAuthorizationHeaderValue(Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->authenticationMechanism:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->getDigestAuthorizationHeaderValue(Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    const/4 p2, 0x0

    invoke-static {p2, p1}, Landroidx/media3/common/ParserException;->createForManifestWithUnsupportedFeature(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtspAuthenticationInfo;->getBasicAuthorizationHeaderValue(Landroidx/media3/exoplayer/rtsp/RtspMessageUtil$RtspAuthUserInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

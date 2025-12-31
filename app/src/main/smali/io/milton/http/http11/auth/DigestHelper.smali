.class public Lio/milton/http/http11/auth/DigestHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final nonceProvider:Lio/milton/http/http11/auth/NonceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/auth/DigestHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/auth/DigestHelper;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/http11/auth/NonceProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/http11/auth/DigestHelper;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    return-void
.end method

.method private toDigestResponse(Lio/milton/http/Auth;Lio/milton/http/Request$Method;)Lio/milton/http/http11/auth/DigestResponse;
    .locals 11

    new-instance v10, Lio/milton/http/http11/auth/DigestResponse;

    invoke-virtual {p1}, Lio/milton/http/Auth;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/milton/http/Auth;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/milton/http/Auth;->getNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/milton/http/Auth;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/milton/http/Auth;->getResponseDigest()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lio/milton/http/Auth;->getQop()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lio/milton/http/Auth;->getNc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lio/milton/http/Auth;->getCnonce()Ljava/lang/String;

    move-result-object v9

    move-object v0, v10

    move-object v1, p2

    invoke-direct/range {v0 .. v9}, Lio/milton/http/http11/auth/DigestResponse;-><init>(Lio/milton/http/Request$Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method


# virtual methods
.method public calculateResponse(Lio/milton/http/Auth;Ljava/lang/String;Lio/milton/http/Request$Method;)Lio/milton/http/http11/auth/DigestResponse;
    .locals 7

    const-string v0, "UTF-8"

    const-string v1, "nc: "

    const-string v2, "incorrect realm: resource: "

    :try_start_0
    invoke-virtual {p1}, Lio/milton/http/Auth;->getUser()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lio/milton/http/Auth;->getRealm()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lio/milton/http/Auth;->getNonce()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lio/milton/http/Auth;->getUri()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v3, "auth"

    invoke-virtual {p1}, Lio/milton/http/Auth;->getQop()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lio/milton/http/Auth;->getNc()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lio/milton/http/Auth;->getCnonce()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lio/milton/http/Auth;->getNc()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_2
    :goto_0
    sget-object p1, Lio/milton/http/http11/auth/DigestHelper;->log:Lorg/slf4j/Logger;

    const-string p2, "missing params: nc and/or cnonce"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v4

    :cond_3
    move-object v3, v4

    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lio/milton/http/Auth;->getRealm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object p3, Lio/milton/http/http11/auth/DigestHelper;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " given: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/milton/http/Auth;->getRealm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v4

    :cond_4
    invoke-virtual {p1}, Lio/milton/http/Auth;->getNonce()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/codec/binary/Base64;->isArrayByteBase64([B)Z

    move-result p2

    if-nez p2, :cond_5

    sget-object p1, Lio/milton/http/http11/auth/DigestHelper;->log:Lorg/slf4j/Logger;

    const-string p2, "nonce not base64 encoded"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v4

    :cond_5
    sget-object p2, Lio/milton/http/http11/auth/DigestHelper;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/milton/http/Auth;->getNc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    invoke-virtual {p1}, Lio/milton/http/Auth;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lio/milton/http/http11/auth/DigestHelper;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    invoke-interface {v0, p2, v3}, Lio/milton/http/http11/auth/NonceProvider;->getNonceValidity(Ljava/lang/String;Ljava/lang/Long;)Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    invoke-direct {p0, p1, p3}, Lio/milton/http/http11/auth/DigestHelper;->toDigestResponse(Lio/milton/http/Auth;Lio/milton/http/Request$Method;)Lio/milton/http/http11/auth/DigestResponse;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "realm is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    sget-object p1, Lio/milton/http/http11/auth/DigestHelper;->log:Lorg/slf4j/Logger;

    const-string p2, "missing params"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :goto_3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getChallenge(Ljava/lang/String;Lio/milton/http/Auth;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "Digest realm=\""

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\", qop=\"auth\", nonce=\""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lio/milton/http/Auth;->isNonceStale()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", stale=\"true\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-object p1

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

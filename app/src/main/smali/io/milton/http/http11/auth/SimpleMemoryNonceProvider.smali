.class public Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/http11/auth/NonceProvider;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private enableNonceCountChecking:Z

.field private final nonceValiditySeconds:I

.field private final nonces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lio/milton/http/http11/auth/Nonce;",
            ">;"
        }
    .end annotation
.end field

.field private final remover:Lio/milton/http/http11/auth/ExpiredNonceRemover;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(ILio/milton/http/http11/auth/ExpiredNonceRemover;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/milton/http/http11/auth/ExpiredNonceRemover;",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lio/milton/http/http11/auth/Nonce;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Created SimpleMemoryNonceProvider(b): nonceValiditySeconds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_0
    iput-object p3, p0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->nonces:Ljava/util/Map;

    iput p1, p0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->nonceValiditySeconds:I

    iput-object p2, p0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->remover:Lio/milton/http/http11/auth/ExpiredNonceRemover;

    return-void
.end method

.method private isExpired(Ljava/util/Date;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget p1, p0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->nonceValiditySeconds:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public createNonce(Lio/milton/http/Request;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->createNonceObject(Lio/milton/http/Request;)Lio/milton/http/http11/auth/Nonce;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lio/milton/http/http11/auth/Nonce;->getValue()Ljava/util/UUID;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->log:Lorg/slf4j/Logger;

    .line 14
    .line 15
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "Created nonce: "

    .line 22
    .line 23
    const-string v2, " in map of size: "

    .line 24
    .line 25
    invoke-static {v1, p1, v2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->nonces:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-object p1
.end method

.method public createNonceObject(Lio/milton/http/Request;)Lio/milton/http/http11/auth/Nonce;
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Lio/milton/http/http11/auth/Nonce;

    invoke-direct {v1, p1, v0}, Lio/milton/http/http11/auth/Nonce;-><init>(Ljava/util/UUID;Ljava/util/Date;)V

    iget-object p1, p0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->nonces:Ljava/util/Map;

    invoke-virtual {v1}, Lio/milton/http/http11/auth/Nonce;->getValue()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getNonceValidity(Ljava/lang/String;Ljava/lang/Long;)Lio/milton/http/http11/auth/NonceProvider$NonceValidity;
    .locals 6

    sget-object v0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNonceValidity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->nonces:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/milton/http/http11/auth/Nonce;

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "not found in map of size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->nonces:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    sget-object p1, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;->INVALID:Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lio/milton/http/http11/auth/Nonce;->getIssued()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "nonce has expired"

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    sget-object p1, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;->EXPIRED:Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    return-object p1

    :cond_2
    if-nez p2, :cond_3

    const-string p1, "nonce ok"

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    sget-object p1, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;->OK:Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    return-object p1

    :cond_3
    iget-boolean v1, p0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->enableNonceCountChecking:Z

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lio/milton/http/http11/auth/Nonce;->getNonceCount()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nonce-count was not greater then previous, possible replay attack. new: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " old:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/milton/http/http11/auth/Nonce;->getNonceCount()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    sget-object p1, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;->INVALID:Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    return-object p1

    :cond_4
    const-string v1, "nonce and nonce-count ok"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/milton/http/http11/auth/Nonce;->increaseNonceCount(J)Lio/milton/http/http11/auth/Nonce;

    move-result-object p1

    iget-object p2, p0, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->nonces:Ljava/util/Map;

    invoke-virtual {p1}, Lio/milton/http/http11/auth/Nonce;->getValue()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;->OK:Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    return-object p1

    :catch_0
    sget-object p1, Lio/milton/http/http11/auth/SimpleMemoryNonceProvider;->log:Lorg/slf4j/Logger;

    const-string p2, "couldnt parse nonce"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    sget-object p1, Lio/milton/http/http11/auth/NonceProvider$NonceValidity;->INVALID:Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    return-object p1
.end method

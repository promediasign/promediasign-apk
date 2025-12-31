.class public Lio/milton/http/http11/auth/ExpiredNonceRemover;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/http11/auth/ExpiredNonceRemover$DaemonThreadFactory;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
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

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/auth/ExpiredNonceRemover;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/auth/ExpiredNonceRemover;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lio/milton/http/http11/auth/Nonce;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/http11/auth/ExpiredNonceRemover;->nonces:Ljava/util/Map;

    iput p2, p0, Lio/milton/http/http11/auth/ExpiredNonceRemover;->nonceValiditySeconds:I

    new-instance p1, Lio/milton/http/http11/auth/ExpiredNonceRemover$DaemonThreadFactory;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/milton/http/http11/auth/ExpiredNonceRemover$DaemonThreadFactory;-><init>(Lio/milton/http/http11/auth/ExpiredNonceRemover;Lio/milton/http/http11/auth/ExpiredNonceRemover$1;)V

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/milton/http/http11/auth/ExpiredNonceRemover;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

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

    iget p1, p0, Lio/milton/http/http11/auth/ExpiredNonceRemover;->nonceValiditySeconds:I

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
.method public run()V
    .locals 5

    iget-object v0, p0, Lio/milton/http/http11/auth/ExpiredNonceRemover;->nonces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    iget-object v2, p0, Lio/milton/http/http11/auth/ExpiredNonceRemover;->nonces:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/http/http11/auth/Nonce;

    invoke-virtual {v2}, Lio/milton/http/http11/auth/Nonce;->getIssued()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/milton/http/http11/auth/ExpiredNonceRemover;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lio/milton/http/http11/auth/ExpiredNonceRemover;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removing expired nonce: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public start()V
    .locals 9

    sget-object v0, Lio/milton/http/http11/auth/ExpiredNonceRemover;->log:Lorg/slf4j/Logger;

    const-string v1, "scheduling checks for expired nonces every 10 seconds"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v2, p0, Lio/milton/http/http11/auth/ExpiredNonceRemover;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v6, 0xa

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    move-object v3, p0

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

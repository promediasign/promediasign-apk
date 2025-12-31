.class public Lio/milton/http/FilterChain;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field final httpManager:Lio/milton/http/HttpManager;

.field pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/FilterChain;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/FilterChain;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/HttpManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/milton/http/FilterChain;->pos:I

    iput-object p1, p0, Lio/milton/http/FilterChain;->httpManager:Lio/milton/http/HttpManager;

    return-void
.end method


# virtual methods
.method public getHttpManager()Lio/milton/http/HttpManager;
    .locals 1

    iget-object v0, p0, Lio/milton/http/FilterChain;->httpManager:Lio/milton/http/HttpManager;

    return-object v0
.end method

.method public process(Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 7

    iget-object v0, p0, Lio/milton/http/FilterChain;->httpManager:Lio/milton/http/HttpManager;

    invoke-virtual {v0}, Lio/milton/http/HttpManager;->getFilters()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lio/milton/http/FilterChain;->pos:I

    const/4 v2, 0x1

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lio/milton/http/FilterChain;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/milton/http/Filter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, p0, p1, p2}, Lio/milton/http/Filter;->process(Lio/milton/http/FilterChain;Lio/milton/http/Request;Lio/milton/http/Response;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x3e8

    cmp-long p2, v5, v3

    if-lez p2, :cond_0

    sget-object p2, Lio/milton/http/FilterChain;->log:Lorg/slf4j/Logger;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1}, Lio/milton/http/Request;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v0, v3, v2

    const/4 v0, 0x2

    aput-object p1, v3, v0

    const-string p1, "Slow request {}ms in filter {} for path={}"

    invoke-interface {p2, p1, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

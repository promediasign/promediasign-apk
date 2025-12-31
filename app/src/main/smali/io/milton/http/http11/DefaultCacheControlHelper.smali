.class public Lio/milton/http/http11/DefaultCacheControlHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/http11/CacheControlHelper;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final usePrivateCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/DefaultCacheControlHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/DefaultCacheControlHelper;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/milton/http/http11/DefaultCacheControlHelper;->usePrivateCache:Z

    return-void
.end method


# virtual methods
.method public setCacheControl(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Auth;)V
    .locals 4

    invoke-interface {p1, p3}, Lio/milton/resource/GetableResource;->getMaxAgeSeconds(Lio/milton/http/Auth;)Ljava/lang/Long;

    move-result-object p3

    sget-object v0, Lio/milton/http/http11/DefaultCacheControlHelper;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "setCacheControl: {} - {}"

    invoke-interface {v0, v1, p3, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    invoke-interface {p2, p3}, Lio/milton/http/Response;->setCacheControlMaxAgeHeader(Ljava/lang/Long;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lio/milton/http/Response;->setCacheControlNoCacheHeader()V

    :goto_0
    return-void
.end method

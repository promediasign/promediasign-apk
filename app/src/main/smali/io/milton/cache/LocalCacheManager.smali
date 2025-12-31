.class public Lio/milton/cache/LocalCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/cache/CacheManager;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private maximumWeightedCapacity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/cache/LocalCacheManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/cache/LocalCacheManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lio/milton/cache/LocalCacheManager;->maximumWeightedCapacity:I

    return-void
.end method


# virtual methods
.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2

    new-instance p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;

    invoke-direct {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;-><init>()V

    iget v0, p0, Lio/milton/cache/LocalCacheManager;->maximumWeightedCapacity:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->maximumWeightedCapacity(J)Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->build()Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.class Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "State"
.end annotation


# instance fields
.field private final findEncoderCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

.field private final type2encoder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->this$0:Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->findEncoderCache:Ljava/util/Map;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->type2encoder:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->access$500(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->type2encoder:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;

    invoke-interface {v0}, Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;->getEncoder()Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;-><init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;)V

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->findEncoderCache:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->type2encoder:Ljava/util/Map;

    return-object p0
.end method

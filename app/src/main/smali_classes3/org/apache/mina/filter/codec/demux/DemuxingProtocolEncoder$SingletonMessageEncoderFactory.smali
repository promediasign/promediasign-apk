.class Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$SingletonMessageEncoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonMessageEncoderFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final encoder:Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$SingletonMessageEncoderFactory;->encoder:Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "encoder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/filter/codec/demux/MessageEncoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$SingletonMessageEncoderFactory;-><init>(Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V

    return-void
.end method


# virtual methods
.method public getEncoder()Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$SingletonMessageEncoderFactory;->encoder:Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    return-object v0
.end method

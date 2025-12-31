.class Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonMessageDecoderFactory"
.end annotation


# instance fields
.field private final decoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;


# direct methods
.method private constructor <init>(Lorg/apache/mina/filter/codec/demux/MessageDecoder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;->decoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "decoder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/filter/codec/demux/MessageDecoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;-><init>(Lorg/apache/mina/filter/codec/demux/MessageDecoder;)V

    return-void
.end method


# virtual methods
.method public getDecoder()Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;->decoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    return-object v0
.end method

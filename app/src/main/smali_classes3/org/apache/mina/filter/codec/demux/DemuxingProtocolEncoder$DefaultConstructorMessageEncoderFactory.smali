.class Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$DefaultConstructorMessageEncoderFactory;
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
    name = "DefaultConstructorMessageEncoderFactory"
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
.field private final encoderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-class v0, Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$DefaultConstructorMessageEncoderFactory;->encoderClass:Ljava/lang/Class;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "encoderClass is not assignable to MessageEncoder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "encoderClass"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$DefaultConstructorMessageEncoderFactory;-><init>(Ljava/lang/Class;)V

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

    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$DefaultConstructorMessageEncoderFactory;->encoderClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    return-object v0
.end method

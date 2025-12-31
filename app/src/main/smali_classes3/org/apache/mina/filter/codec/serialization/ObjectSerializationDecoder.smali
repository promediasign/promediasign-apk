.class public Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;
.super Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;
.source "SourceFile"


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private maxObjectSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;-><init>()V

    const/high16 v0, 0x100000

    iput v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->maxObjectSize:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->classLoader:Ljava/lang/ClassLoader;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "classLoader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z
    .locals 1

    const/4 p1, 0x4

    iget v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->maxObjectSize:I

    invoke-virtual {p2, p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->prefixedDataAvailable(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->write(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getMaxObjectSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->maxObjectSize:I

    return v0
.end method

.method public setMaxObjectSize(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationDecoder;->maxObjectSize:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "maxObjectSize: "

    .line 9
    .line 10
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

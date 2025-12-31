.class public Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolCodecFactory;


# instance fields
.field private final decoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

.field private final encoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;

    invoke-direct {v0, p1}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;-><init>(Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->encoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;

    new-instance v0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

    invoke-direct {v0, p1}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;-><init>(Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->decoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

    return-void
.end method


# virtual methods
.method public getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .locals 0

    iget-object p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->decoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

    return-object p1
.end method

.method public getDecoderMaxDataLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->decoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->getMaxDataLength()I

    move-result v0

    return v0
.end method

.method public getDecoderPrefixLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->decoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->getPrefixLength()I

    move-result v0

    return v0
.end method

.method public getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 0

    iget-object p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->encoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;

    return-object p1
.end method

.method public getEncoderMaxDataLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->encoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->getMaxDataLength()I

    move-result v0

    return v0
.end method

.method public getEncoderPrefixLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->encoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->getPrefixLength()I

    move-result v0

    return v0
.end method

.method public setDecoderMaxDataLength(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->decoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->setMaxDataLength(I)V

    return-void
.end method

.method public setDecoderPrefixLength(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->decoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringDecoder;->setPrefixLength(I)V

    return-void
.end method

.method public setEncoderMaxDataLength(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->encoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->setMaxDataLength(I)V

    return-void
.end method

.method public setEncoderPrefixLength(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringCodecFactory;->encoder:Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->setPrefixLength(I)V

    return-void
.end method

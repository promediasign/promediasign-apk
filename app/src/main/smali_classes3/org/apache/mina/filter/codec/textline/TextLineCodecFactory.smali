.class public Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolCodecFactory;


# instance fields
.field private final decoder:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

.field private final encoder:Lorg/apache/mina/filter/codec/textline/TextLineEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    sget-object v1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->UNIX:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->encoder:Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    new-instance v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    sget-object v1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->decoder:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    invoke-direct {v0, p1, p2}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->encoder:Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    new-instance p2, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    invoke-direct {p2, p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->decoder:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    invoke-direct {v0, p1, p2}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->encoder:Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    new-instance p2, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    invoke-direct {p2, p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    iput-object p2, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->decoder:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    return-void
.end method


# virtual methods
.method public getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;
    .locals 0

    iget-object p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->decoder:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    return-object p1
.end method

.method public getDecoderMaxLineLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->decoder:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->getMaxLineLength()I

    move-result v0

    return v0
.end method

.method public getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 0

    iget-object p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->encoder:Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    return-object p1
.end method

.method public getEncoderMaxLineLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->encoder:Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    invoke-virtual {v0}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->getMaxLineLength()I

    move-result v0

    return v0
.end method

.method public setDecoderMaxLineLength(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->decoder:Lorg/apache/mina/filter/codec/textline/TextLineDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->setMaxLineLength(I)V

    return-void
.end method

.method public setEncoderMaxLineLength(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineCodecFactory;->encoder:Lorg/apache/mina/filter/codec/textline/TextLineEncoder;

    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->setMaxLineLength(I)V

    return-void
.end method

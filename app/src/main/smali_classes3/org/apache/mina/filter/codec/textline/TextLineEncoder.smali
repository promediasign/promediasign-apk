.class public Lorg/apache/mina/filter/codec/textline/TextLineEncoder;
.super Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;
.source "SourceFile"


# instance fields
.field private final ENCODER:Lorg/apache/mina/core/session/AttributeKey;

.field private final charset:Ljava/nio/charset/Charset;

.field private final delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field private maxLineLength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->UNIX:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {v0, p1}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;-><init>(Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 3
    sget-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->UNIX:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {v0, p2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;-><init>()V

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "encoder"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->ENCODER:Lorg/apache/mina/core/session/AttributeKey;

    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->maxLineLength:I

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    sget-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-virtual {v0, p2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->charset:Ljava/nio/charset/Charset;

    iput-object p2, p0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AUTO delimiter is not allowed for encoder."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "delimiter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V
    .locals 1

    .line 6
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->ENCODER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->ENCODER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez p2, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p1

    iget v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->maxLineLength:I

    if-gt p1, v1, :cond_2

    iget-object p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-interface {p3, p2}, Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;->write(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Line length: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaxLineLength()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->maxLineLength:I

    return v0
.end method

.method public setMaxLineLength(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineEncoder;->maxLineLength:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "maxLineLength: "

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

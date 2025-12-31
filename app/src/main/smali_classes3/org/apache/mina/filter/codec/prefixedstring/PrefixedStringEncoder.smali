.class public Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;
.super Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MAX_DATA_LENGTH:I = 0x800

.field public static final DEFAULT_PREFIX_LENGTH:I = 0x4


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private maxDataLength:I

.field private prefixLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 2
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;-><init>(Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;I)V
    .locals 1

    .line 3
    const/16 v0, 0x800

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;-><init>(Ljava/nio/charset/Charset;II)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->charset:Ljava/nio/charset/Charset;

    iput p2, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->prefixLength:I

    iput p3, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->maxDataLength:I

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V
    .locals 2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->prefixLength:I

    iget-object v1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->putPrefixedString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p2

    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->maxDataLength:I

    if-gt p2, v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-interface {p3, p1}, Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;->write(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Data length: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getMaxDataLength()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->maxDataLength:I

    return v0
.end method

.method public getPrefixLength()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->prefixLength:I

    return v0
.end method

.method public setMaxDataLength(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->maxDataLength:I

    return-void
.end method

.method public setPrefixLength(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "prefixLength: "

    .line 14
    .line 15
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/mina/filter/codec/prefixedstring/PrefixedStringEncoder;->prefixLength:I

    .line 24
    .line 25
    return-void
.end method

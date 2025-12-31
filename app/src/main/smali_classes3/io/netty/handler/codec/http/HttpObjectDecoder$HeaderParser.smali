.class Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpObjectDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderParser"
.end annotation


# instance fields
.field private final maxLength:I

.field private final seq:Lio/netty/util/internal/AppendableCharSequence;

.field private size:I


# direct methods
.method public constructor <init>(Lio/netty/util/internal/AppendableCharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    iput p2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->maxLength:I

    return-void
.end method


# virtual methods
.method public final increaseCount()V
    .locals 2

    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->maxLength:I

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->newException(I)Lio/netty/handler/codec/TooLongFrameException;

    move-result-object v0

    throw v0
.end method

.method public newException(I)Lio/netty/handler/codec/TooLongFrameException;
    .locals 3

    .line 1
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    .line 2
    .line 3
    const-string v1, "HTTP header is larger than "

    .line 4
    .line 5
    const-string v2, " bytes."

    .line 6
    .line 7
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;
    .locals 3

    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v1}, Lio/netty/util/internal/AppendableCharSequence;->reset()V

    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->forEachByte(Lio/netty/util/ByteProcessor;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    iget-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    return-object p1
.end method

.method public process(B)Z
    .locals 3

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {p1}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result p1

    if-lt p1, v1, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lio/netty/util/internal/AppendableCharSequence;->charAtUnsafe(I)C

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/AppendableCharSequence;->setLength(I)V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->increaseCount()V

    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(C)Lio/netty/util/internal/AppendableCharSequence;

    return v1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    return-void
.end method

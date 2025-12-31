.class final Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;
.super Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpObjectDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LineParser"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/util/internal/AppendableCharSequence;I)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;-><init>(Lio/netty/util/internal/AppendableCharSequence;I)V

    return-void
.end method


# virtual methods
.method public newException(I)Lio/netty/handler/codec/TooLongFrameException;
    .locals 3

    .line 1
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    .line 2
    .line 3
    const-string v1, "An HTTP line is larger than "

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
    .locals 0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->reset()V

    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public process(B)Z
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$000(Lio/netty/handler/codec/http/HttpObjectDecoder;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne v0, v1, :cond_2

    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->this$0:Lio/netty/handler/codec/http/HttpObjectDecoder;

    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_INITIAL:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->access$002(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/handler/codec/http/HttpObjectDecoder$State;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->increaseCount()V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->process(B)Z

    move-result p1

    return p1
.end method

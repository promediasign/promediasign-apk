.class public final Lio/opencensus/trace/internal/BaseMessageEventUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static asMessageEvent(Lio/opencensus/trace/BaseMessageEvent;)Lio/opencensus/trace/MessageEvent;
    .locals 3

    const-string v0, "event"

    invoke-static {p0, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lio/opencensus/trace/MessageEvent;

    if-eqz v0, :cond_0

    check-cast p0, Lio/opencensus/trace/MessageEvent;

    return-object p0

    :cond_0
    check-cast p0, Lio/opencensus/trace/NetworkEvent;

    invoke-virtual {p0}, Lio/opencensus/trace/NetworkEvent;->getType()Lio/opencensus/trace/NetworkEvent$Type;

    move-result-object v0

    sget-object v1, Lio/opencensus/trace/NetworkEvent$Type;->RECV:Lio/opencensus/trace/NetworkEvent$Type;

    if-ne v0, v1, :cond_1

    sget-object v0, Lio/opencensus/trace/MessageEvent$Type;->RECEIVED:Lio/opencensus/trace/MessageEvent$Type;

    goto :goto_0

    :cond_1
    sget-object v0, Lio/opencensus/trace/MessageEvent$Type;->SENT:Lio/opencensus/trace/MessageEvent$Type;

    :goto_0
    invoke-virtual {p0}, Lio/opencensus/trace/NetworkEvent;->getMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/opencensus/trace/MessageEvent;->builder(Lio/opencensus/trace/MessageEvent$Type;J)Lio/opencensus/trace/MessageEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lio/opencensus/trace/NetworkEvent;->getUncompressedMessageSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/opencensus/trace/MessageEvent$Builder;->setUncompressedMessageSize(J)Lio/opencensus/trace/MessageEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lio/opencensus/trace/NetworkEvent;->getCompressedMessageSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/opencensus/trace/MessageEvent$Builder;->setCompressedMessageSize(J)Lio/opencensus/trace/MessageEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/opencensus/trace/MessageEvent$Builder;->build()Lio/opencensus/trace/MessageEvent;

    move-result-object p0

    return-object p0
.end method

.method public static asNetworkEvent(Lio/opencensus/trace/BaseMessageEvent;)Lio/opencensus/trace/NetworkEvent;
    .locals 3

    const-string v0, "event"

    invoke-static {p0, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lio/opencensus/trace/NetworkEvent;

    if-eqz v0, :cond_0

    check-cast p0, Lio/opencensus/trace/NetworkEvent;

    return-object p0

    :cond_0
    check-cast p0, Lio/opencensus/trace/MessageEvent;

    invoke-virtual {p0}, Lio/opencensus/trace/MessageEvent;->getType()Lio/opencensus/trace/MessageEvent$Type;

    move-result-object v0

    sget-object v1, Lio/opencensus/trace/MessageEvent$Type;->RECEIVED:Lio/opencensus/trace/MessageEvent$Type;

    if-ne v0, v1, :cond_1

    sget-object v0, Lio/opencensus/trace/NetworkEvent$Type;->RECV:Lio/opencensus/trace/NetworkEvent$Type;

    goto :goto_0

    :cond_1
    sget-object v0, Lio/opencensus/trace/NetworkEvent$Type;->SENT:Lio/opencensus/trace/NetworkEvent$Type;

    :goto_0
    invoke-virtual {p0}, Lio/opencensus/trace/MessageEvent;->getMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/opencensus/trace/NetworkEvent;->builder(Lio/opencensus/trace/NetworkEvent$Type;J)Lio/opencensus/trace/NetworkEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lio/opencensus/trace/MessageEvent;->getUncompressedMessageSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/opencensus/trace/NetworkEvent$Builder;->setUncompressedMessageSize(J)Lio/opencensus/trace/NetworkEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lio/opencensus/trace/MessageEvent;->getCompressedMessageSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/opencensus/trace/NetworkEvent$Builder;->setCompressedMessageSize(J)Lio/opencensus/trace/NetworkEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/opencensus/trace/NetworkEvent$Builder;->build()Lio/opencensus/trace/NetworkEvent;

    move-result-object p0

    return-object p0
.end method

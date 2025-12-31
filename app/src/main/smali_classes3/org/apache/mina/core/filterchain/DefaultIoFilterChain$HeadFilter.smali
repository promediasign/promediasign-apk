.class Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeadFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$HeadFilter;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;)V

    return-void
.end method


# virtual methods
.method public filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    check-cast p2, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p2}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/service/IoProcessor;->remove(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    check-cast p2, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz p1, :cond_1

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->mark()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseScheduledWriteBytes(I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseScheduledWriteMessages()V

    :goto_1
    invoke-virtual {p2}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    invoke-virtual {p2}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lorg/apache/mina/core/session/AbstractIoSession;->getProcessor()Lorg/apache/mina/core/service/IoProcessor;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/service/IoProcessor;->flush(Lorg/apache/mina/core/session/IoSession;)V

    :cond_2
    return-void
.end method

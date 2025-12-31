.class public Lorg/apache/mina/core/filterchain/IoFilterEvent;
.super Lorg/apache/mina/core/session/IoEvent;
.source "SourceFile"


# static fields
.field static DEBUG:Z

.field static LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "nextFilter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public fire()V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v2

    sget-boolean v3, Lorg/apache/mina/core/filterchain/IoFilterEvent;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lorg/apache/mina/core/filterchain/IoFilterEvent;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Firing a {} event for session {}"

    invoke-interface {v3, v5, v2, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v3, Lorg/apache/mina/core/filterchain/IoFilterEvent$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown event type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {v1, v0, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v1, v0, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_5
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v1, v0, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v1, v0, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    :goto_0
    sget-boolean v1, Lorg/apache/mina/core/filterchain/IoFilterEvent;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/mina/core/filterchain/IoFilterEvent;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "Event {} has been fired for session {}"

    invoke-interface {v1, v3, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    return-object v0
.end method

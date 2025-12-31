.class public Lorg/apache/mina/core/session/IoEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final parameter:Ljava/lang/Object;

.field private final session:Lorg/apache/mina/core/session/IoSession;

.field private final type:Lorg/apache/mina/core/session/IoEventType;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/apache/mina/core/session/IoEvent;->type:Lorg/apache/mina/core/session/IoEventType;

    iput-object p2, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    iput-object p3, p0, Lorg/apache/mina/core/session/IoEvent;->parameter:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "session"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public fire()V
    .locals 3

    sget-object v0, Lorg/apache/mina/core/session/IoEvent$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown event type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionClosed()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionCreated()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionOpened()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionIdle(Lorg/apache/mina/core/session/IdleStatus;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireFilterClose()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireFilterWrite(Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/write/WriteRequest;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    :goto_0
    return-void

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

.method public getParameter()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method public getType()Lorg/apache/mina/core/session/IoEventType;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/session/IoEvent;->type:Lorg/apache/mina/core/session/IoEventType;

    return-object v0
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->fire()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "] "

    const-string v2, "["

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/session/IoEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.class public Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;
    }
.end annotation


# instance fields
.field private messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private profileMessageReceived:Z

.field private profileMessageSent:Z

.field private profileSessionClosed:Z

.field private profileSessionCreated:Z

.field private profileSessionIdle:Z

.field private profileSessionOpened:Z

.field private sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private volatile timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/mina/core/session/IoEventType;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;-><init>(Ljava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 2
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/mina/core/session/IoEventType;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;-><init>(Ljava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->setProfilers([Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method private varargs setProfilers([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    sget-object v3, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v2, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v2, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    iput-boolean v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    goto :goto_1

    :pswitch_1
    new-instance v2, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v2, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    iput-boolean v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    goto :goto_1

    :pswitch_2
    new-instance v2, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v2, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    iput-boolean v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    goto :goto_1

    :pswitch_3
    new-instance v2, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v2, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    iput-boolean v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    goto :goto_1

    :pswitch_4
    new-instance v2, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v2, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    iput-boolean v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    goto :goto_1

    :pswitch_5
    new-instance v2, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v2, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    iput-boolean v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private timeNow()J
    .locals 4

    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    iget-object v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    div-long/2addr v0, v2

    return-wide v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public getAverageTime(Lorg/apache/mina/core/session/IoEventType;)D
    .locals 2

    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    return-wide v0

    :pswitch_1
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_2
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_3
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_4
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_5
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :cond_0
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You are not monitoring this event.  Please add this event first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEventsToProfile()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/mina/core/session/IoEventType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v1, :cond_2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v1, :cond_3

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v1, :cond_4

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v1, :cond_5

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public getMaximumTime(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2

    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_2
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_3
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_4
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_5
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :cond_0
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You are not monitoring this event.  Please add this event first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMinimumTime(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2

    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_2
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_3
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_4
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_5
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :cond_0
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You are not monitoring this event.  Please add this event first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTotalCalls(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2

    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_2
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_3
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_4
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_5
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :cond_0
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You are not monitoring this event.  Please add this event first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTotalTime(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2

    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_2
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_3
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_4
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :pswitch_5
    iget-boolean p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    :cond_0
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You are not monitoring this event.  Please add this event first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide p1

    iget-object p3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide p1

    iget-object p3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :goto_0
    return-void
.end method

.method public profile(Lorg/apache/mina/core/session/IoEventType;)V
    .locals 1

    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {p1, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :cond_0
    return-void

    :pswitch_1
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez p1, :cond_1

    new-instance p1, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {p1, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :cond_1
    return-void

    :pswitch_2
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez p1, :cond_2

    new-instance p1, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {p1, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :cond_2
    return-void

    :pswitch_3
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez p1, :cond_3

    new-instance p1, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {p1, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :cond_3
    return-void

    :pswitch_4
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez p1, :cond_4

    new-instance p1, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {p1, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :cond_4
    return-void

    :pswitch_5
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    iget-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez p1, :cond_5

    new-instance p1, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {p1, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide p1

    iget-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide p1

    iget-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide p1

    iget-object p3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    :goto_0
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide p1

    iget-object v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public varargs setEventsToProfile([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->setProfilers([Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public setTimeUnit(Ljava/util/concurrent/TimeUnit;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public stopProfile(Lorg/apache/mina/core/session/IoEventType;)V
    .locals 1

    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    return-void

    :pswitch_1
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    return-void

    :pswitch_2
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    return-void

    :pswitch_3
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    return-void

    :pswitch_4
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    return-void

    :pswitch_5
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

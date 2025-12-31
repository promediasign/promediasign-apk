.class public Lcom/illposed/osc/OSCPacketDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/illposed/osc/OSCPacketListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/illposed/osc/OSCPacketDispatcher$BundleDispatcher;,
        Lcom/illposed/osc/OSCPacketDispatcher$NullOSCSerializerBuilder;,
        Lcom/illposed/osc/OSCPacketDispatcher$NullOSCSerializer;,
        Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;,
        Lcom/illposed/osc/OSCPacketDispatcher$DaemonThreadFactory;
    }
.end annotation


# instance fields
.field private alwaysDispatchingImmediately:Z

.field private final argumentTypesOutput:Lcom/illposed/osc/BytesReceiver;

.field private final badDataListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final dispatchScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private metaInfoRequired:Z

.field private final selectiveMessageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final serializer:Lcom/illposed/osc/OSCSerializer;

.field private final typeTagsCharset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/illposed/osc/OSCPacketDispatcher;-><init>(Lcom/illposed/osc/OSCSerializerAndParserBuilder;)V

    return-void
.end method

.method public constructor <init>(Lcom/illposed/osc/OSCSerializerAndParserBuilder;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/illposed/osc/OSCPacketDispatcher;->createDefaultDispatchScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/illposed/osc/OSCPacketDispatcher;-><init>(Lcom/illposed/osc/OSCSerializerAndParserBuilder;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/illposed/osc/OSCSerializerAndParserBuilder;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance v1, Lcom/illposed/osc/OSCPacketDispatcher$NullOSCSerializerBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/illposed/osc/OSCPacketDispatcher$NullOSCSerializerBuilder;-><init>(Lcom/illposed/osc/OSCPacketDispatcher$1;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    :goto_0
    new-instance v2, Lcom/illposed/osc/BufferBytesReceiver;

    invoke-direct {v2, p1}, Lcom/illposed/osc/BufferBytesReceiver;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v2, p0, Lcom/illposed/osc/OSCPacketDispatcher;->argumentTypesOutput:Lcom/illposed/osc/BytesReceiver;

    invoke-virtual {v1, v2}, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->buildSerializer(Lcom/illposed/osc/BytesReceiver;)Lcom/illposed/osc/OSCSerializer;

    move-result-object p1

    iput-object p1, p0, Lcom/illposed/osc/OSCPacketDispatcher;->serializer:Lcom/illposed/osc/OSCSerializer;

    invoke-virtual {v1}, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->getProperties()Ljava/util/Map;

    move-result-object p1

    const-string v1, "charset"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    if-nez p1, :cond_1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/illposed/osc/OSCPacketDispatcher;->typeTagsCharset:Ljava/nio/charset/Charset;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/illposed/osc/OSCPacketDispatcher;->selectiveMessageListeners:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/illposed/osc/OSCPacketDispatcher;->badDataListeners:Ljava/util/List;

    iput-boolean v0, p0, Lcom/illposed/osc/OSCPacketDispatcher;->metaInfoRequired:Z

    iput-boolean v0, p0, Lcom/illposed/osc/OSCPacketDispatcher;->alwaysDispatchingImmediately:Z

    iput-object p2, p0, Lcom/illposed/osc/OSCPacketDispatcher;->dispatchScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static synthetic access$100(Lcom/illposed/osc/OSCPacketDispatcher;Ljava/lang/Object;Lcom/illposed/osc/OSCBundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/illposed/osc/OSCPacketDispatcher;->dispatchBundleNow(Ljava/lang/Object;Lcom/illposed/osc/OSCBundle;)V

    return-void
.end method

.method private calculateDelayFromNow(Lcom/illposed/osc/argument/OSCTimeTag64;)J
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/illposed/osc/argument/OSCTimeTag64;->toDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static createDefaultDispatchScheduler()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    new-instance v0, Lcom/illposed/osc/OSCPacketDispatcher$DaemonThreadFactory;

    invoke-direct {v0}, Lcom/illposed/osc/OSCPacketDispatcher$DaemonThreadFactory;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private dispatchBundle(Ljava/lang/Object;Lcom/illposed/osc/OSCBundle;)V
    .locals 4

    invoke-virtual {p2}, Lcom/illposed/osc/OSCBundle;->getTimestamp()Lcom/illposed/osc/argument/OSCTimeTag64;

    move-result-object v0

    invoke-virtual {p0}, Lcom/illposed/osc/OSCPacketDispatcher;->isAlwaysDispatchingImmediately()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/illposed/osc/argument/OSCTimeTag64;->isImmediate()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/illposed/osc/OSCPacketDispatcher;->calculateDelayFromNow(Lcom/illposed/osc/argument/OSCTimeTag64;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/illposed/osc/OSCPacketDispatcher;->dispatchScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/illposed/osc/OSCPacketDispatcher$BundleDispatcher;

    invoke-direct {v3, p0, p1, p2}, Lcom/illposed/osc/OSCPacketDispatcher$BundleDispatcher;-><init>(Lcom/illposed/osc/OSCPacketDispatcher;Ljava/lang/Object;Lcom/illposed/osc/OSCBundle;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/illposed/osc/OSCPacketDispatcher;->dispatchBundleNow(Ljava/lang/Object;Lcom/illposed/osc/OSCBundle;)V

    :goto_1
    return-void
.end method

.method private dispatchBundleNow(Ljava/lang/Object;Lcom/illposed/osc/OSCBundle;)V
    .locals 2

    invoke-virtual {p2}, Lcom/illposed/osc/OSCBundle;->getTimestamp()Lcom/illposed/osc/argument/OSCTimeTag64;

    move-result-object v0

    invoke-virtual {p2}, Lcom/illposed/osc/OSCBundle;->getPackets()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/illposed/osc/OSCPacket;

    invoke-direct {p0, p1, v1, v0}, Lcom/illposed/osc/OSCPacketDispatcher;->dispatchPacket(Ljava/lang/Object;Lcom/illposed/osc/OSCPacket;Lcom/illposed/osc/argument/OSCTimeTag64;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchMessageNow(Lcom/illposed/osc/OSCMessageEvent;)V
    .locals 3

    invoke-virtual {p1}, Lcom/illposed/osc/OSCMessageEvent;->getMessage()Lcom/illposed/osc/OSCMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/illposed/osc/OSCPacketDispatcher;->ensureMetaInfo(Lcom/illposed/osc/OSCMessage;)V

    iget-object v0, p0, Lcom/illposed/osc/OSCPacketDispatcher;->selectiveMessageListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;

    invoke-virtual {v1}, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;->getSelector()Lcom/illposed/osc/MessageSelector;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/illposed/osc/MessageSelector;->matches(Lcom/illposed/osc/OSCMessageEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;->getListener()Lcom/illposed/osc/OSCMessageListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/illposed/osc/OSCMessageListener;->acceptMessage(Lcom/illposed/osc/OSCMessageEvent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dispatchPacket(Ljava/lang/Object;Lcom/illposed/osc/OSCPacket;Lcom/illposed/osc/argument/OSCTimeTag64;)V
    .locals 1

    instance-of v0, p2, Lcom/illposed/osc/OSCBundle;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/illposed/osc/OSCBundle;

    invoke-direct {p0, p1, p2}, Lcom/illposed/osc/OSCPacketDispatcher;->dispatchBundle(Ljava/lang/Object;Lcom/illposed/osc/OSCBundle;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/illposed/osc/OSCMessageEvent;

    check-cast p2, Lcom/illposed/osc/OSCMessage;

    invoke-direct {v0, p1, p3, p2}, Lcom/illposed/osc/OSCMessageEvent;-><init>(Ljava/lang/Object;Lcom/illposed/osc/argument/OSCTimeTag64;Lcom/illposed/osc/OSCMessage;)V

    invoke-direct {p0, v0}, Lcom/illposed/osc/OSCPacketDispatcher;->dispatchMessageNow(Lcom/illposed/osc/OSCMessageEvent;)V

    :goto_0
    return-void
.end method

.method private ensureMetaInfo(Lcom/illposed/osc/OSCMessage;)V
    .locals 2

    invoke-virtual {p0}, Lcom/illposed/osc/OSCPacketDispatcher;->isMetaInfoRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/illposed/osc/OSCMessage;->isInfoSet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/illposed/osc/OSCMessage;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/illposed/osc/OSCPacketDispatcher;->generateTypeTagsString(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/illposed/osc/OSCMessageInfo;

    invoke-direct {v1, v0}, Lcom/illposed/osc/OSCMessageInfo;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Lcom/illposed/osc/OSCMessage;->setInfo(Lcom/illposed/osc/OSCMessageInfo;)V

    :cond_0
    return-void
.end method

.method private generateTypeTagsString(Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/illposed/osc/OSCPacketDispatcher;->serializer:Lcom/illposed/osc/OSCSerializer;

    invoke-virtual {v0, p1}, Lcom/illposed/osc/OSCSerializer;->writeOnlyTypeTags(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/illposed/osc/OSCSerializeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/illposed/osc/OSCPacketDispatcher;->argumentTypesOutput:Lcom/illposed/osc/BytesReceiver;

    invoke-interface {v0}, Lcom/illposed/osc/BytesReceiver;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/illposed/osc/OSCPacketDispatcher;->typeTagsCharset:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed generating Arguments Type Tag string while dispatching"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/illposed/osc/MessageSelector;Lcom/illposed/osc/OSCMessageListener;)V
    .locals 2

    iget-object v0, p0, Lcom/illposed/osc/OSCPacketDispatcher;->selectiveMessageListeners:Ljava/util/List;

    new-instance v1, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;

    invoke-direct {v1, p1, p2}, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;-><init>(Lcom/illposed/osc/MessageSelector;Lcom/illposed/osc/OSCMessageListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/illposed/osc/MessageSelector;->isInfoRequired()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/illposed/osc/OSCPacketDispatcher;->metaInfoRequired:Z

    :cond_0
    return-void
.end method

.method public handleBadData(Lcom/illposed/osc/OSCBadDataEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/illposed/osc/OSCPacketDispatcher;->badDataListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public handlePacket(Lcom/illposed/osc/OSCPacketEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/illposed/osc/OSCPacketEvent;->getPacket()Lcom/illposed/osc/OSCPacket;

    move-result-object p1

    sget-object v1, Lcom/illposed/osc/argument/OSCTimeTag64;->IMMEDIATE:Lcom/illposed/osc/argument/OSCTimeTag64;

    invoke-direct {p0, v0, p1, v1}, Lcom/illposed/osc/OSCPacketDispatcher;->dispatchPacket(Ljava/lang/Object;Lcom/illposed/osc/OSCPacket;Lcom/illposed/osc/argument/OSCTimeTag64;)V

    return-void
.end method

.method public isAlwaysDispatchingImmediately()Z
    .locals 1

    iget-boolean v0, p0, Lcom/illposed/osc/OSCPacketDispatcher;->alwaysDispatchingImmediately:Z

    return v0
.end method

.method public isMetaInfoRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/illposed/osc/OSCPacketDispatcher;->metaInfoRequired:Z

    return v0
.end method

.method public setAlwaysDispatchingImmediately(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/illposed/osc/OSCPacketDispatcher;->alwaysDispatchingImmediately:Z

    return-void
.end method

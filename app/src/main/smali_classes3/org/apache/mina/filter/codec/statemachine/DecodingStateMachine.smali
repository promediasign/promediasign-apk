.class public abstract Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private final childOutput:Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

.field private final childProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

.field private initialized:Z

.field private final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    new-instance v0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine$1;-><init>(Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childOutput:Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    return-object p0
.end method

.method private cleanup()V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->initialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->initialized:Z

    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->log:Lorg/slf4j/Logger;

    const-string v2, "Failed to destroy a decoding state machine."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private getCurrentState()Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->init()Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->initialized:Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 5

    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->getCurrentState()Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    :goto_0
    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childOutput:Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    invoke-interface {v0, p1, v3}, Lorg/apache/mina/filter/codec/statemachine/DecodingState;->decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_2

    :try_start_1
    iget-object p1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    if-nez v3, :cond_1

    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, v2, :cond_4

    if-ne v0, v3, :cond_4

    move-object v0, v3

    :goto_1
    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    :cond_3
    return-object p0

    :cond_4
    move-object v0, v3

    move v2, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_2
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    :cond_5
    throw p1
.end method

.method public abstract destroy()V
.end method

.method public abstract finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;",
            ")",
            "Lorg/apache/mina/filter/codec/statemachine/DecodingState;"
        }
    .end annotation
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->getCurrentState()Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childOutput:Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    invoke-interface {v0, v1}, Lorg/apache/mina/filter/codec/statemachine/DecodingState;->finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_1

    :goto_1
    iput-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    if-nez v1, :cond_2

    :goto_2
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    goto :goto_3

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->log:Lorg/slf4j/Logger;

    const-string v3, "Ignoring the exception caused by a closed session."

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_3
    return-object p1

    :catchall_1
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_4
    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    iget-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-virtual {p0, v2, p1}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    :cond_3
    throw v1
.end method

.method public abstract init()Lorg/apache/mina/filter/codec/statemachine/DecodingState;
.end method

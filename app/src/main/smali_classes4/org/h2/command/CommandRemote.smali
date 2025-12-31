.class public Lorg/h2/command/CommandRemote;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/command/CommandInterface;


# instance fields
.field private cmdType:I

.field private final created:I

.field private final fetchSize:I

.field private id:I

.field private isQuery:Z

.field private final parameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/ParameterInterface;",
            ">;"
        }
    .end annotation
.end field

.field private readonly:Z

.field private session:Lorg/h2/engine/SessionRemote;

.field private final sql:Ljava/lang/String;

.field private final trace:Lorg/h2/message/Trace;

.field private final transferList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/Transfer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/SessionRemote;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/SessionRemote;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/Transfer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/h2/command/CommandRemote;->cmdType:I

    iput-object p2, p0, Lorg/h2/command/CommandRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/h2/engine/SessionRemote;->getTrace()Lorg/h2/message/Trace;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/command/CommandRemote;->trace:Lorg/h2/message/Trace;

    iput-object p3, p0, Lorg/h2/command/CommandRemote;->sql:Ljava/lang/String;

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/command/CommandRemote;->parameters:Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/h2/command/CommandRemote;->prepare(Lorg/h2/engine/SessionRemote;Z)V

    iput-object p1, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    iput p4, p0, Lorg/h2/command/CommandRemote;->fetchSize:I

    invoke-virtual {p1}, Lorg/h2/engine/SessionRemote;->getLastReconnect()I

    move-result p1

    iput p1, p0, Lorg/h2/command/CommandRemote;->created:I

    return-void
.end method

.method private checkParameters()V
    .locals 2

    iget v0, p0, Lorg/h2/command/CommandRemote;->cmdType:I

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/command/CommandRemote;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/ParameterInterface;

    invoke-interface {v1}, Lorg/h2/expression/ParameterInterface;->checkSet()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private prepare(Lorg/h2/engine/SessionRemote;Z)V
    .locals 9

    invoke-virtual {p1}, Lorg/h2/engine/SessionRemote;->getNextId()I

    move-result v0

    iput v0, p0, Lorg/h2/command/CommandRemote;->id:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/h2/command/CommandRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lorg/h2/command/CommandRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/value/Transfer;

    invoke-virtual {p1}, Lorg/h2/engine/SessionRemote;->getClientVersion()I

    move-result v5

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz p2, :cond_3

    if-eqz v5, :cond_1

    const-string v6, "SESSION_PREPARE_READ_PARAMS2"

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_8

    :cond_1
    const-string v6, "SESSION_PREPARE_READ_PARAMS"

    :goto_2
    iget v7, p0, Lorg/h2/command/CommandRemote;->id:I

    invoke-virtual {p1, v6, v7}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    if-eqz v5, :cond_2

    const/16 v6, 0x12

    goto :goto_3

    :cond_2
    const/16 v6, 0xb

    :goto_3
    invoke-virtual {v4, v6}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v6

    iget v7, p0, Lorg/h2/command/CommandRemote;->id:I

    invoke-virtual {v6, v7}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v6

    iget-object v7, p0, Lorg/h2/command/CommandRemote;->sql:Ljava/lang/String;

    :goto_4
    invoke-virtual {v6, v7}, Lorg/h2/value/Transfer;->writeString(Ljava/lang/String;)Lorg/h2/value/Transfer;

    goto :goto_5

    :cond_3
    const-string v6, "SESSION_PREPARE"

    iget v7, p0, Lorg/h2/command/CommandRemote;->id:I

    invoke-virtual {p1, v6, v7}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    invoke-virtual {v4, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v6

    iget v7, p0, Lorg/h2/command/CommandRemote;->id:I

    invoke-virtual {v6, v7}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v6

    iget-object v7, p0, Lorg/h2/command/CommandRemote;->sql:Ljava/lang/String;

    goto :goto_4

    :goto_5
    invoke-virtual {p1, v4}, Lorg/h2/engine/SessionRemote;->done(Lorg/h2/value/Transfer;)V

    invoke-virtual {v4}, Lorg/h2/value/Transfer;->readBoolean()Z

    move-result v6

    iput-boolean v6, p0, Lorg/h2/command/CommandRemote;->isQuery:Z

    invoke-virtual {v4}, Lorg/h2/value/Transfer;->readBoolean()Z

    move-result v6

    iput-boolean v6, p0, Lorg/h2/command/CommandRemote;->readonly:Z

    if-eqz v5, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {v4}, Lorg/h2/value/Transfer;->readInt()I

    move-result v5

    goto :goto_6

    :cond_4
    const/4 v5, 0x0

    :goto_6
    iput v5, p0, Lorg/h2/command/CommandRemote;->cmdType:I

    invoke-virtual {v4}, Lorg/h2/value/Transfer;->readInt()I

    move-result v5

    if-eqz p2, :cond_5

    iget-object v6, p0, Lorg/h2/command/CommandRemote;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_5

    new-instance v7, Lorg/h2/expression/ParameterRemote;

    invoke-direct {v7, v6}, Lorg/h2/expression/ParameterRemote;-><init>(I)V

    invoke-virtual {v7, v4}, Lorg/h2/expression/ParameterRemote;->readMetaData(Lorg/h2/value/Transfer;)V

    iget-object v8, p0, Lorg/h2/command/CommandRemote;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :goto_8
    add-int/lit8 v5, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v4, v1, v2}, Lorg/h2/engine/SessionRemote;->removeServer(Ljava/io/IOException;II)V

    move v1, v5

    :cond_5
    add-int/2addr v1, v3

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private prepareIfRequired()V
    .locals 3

    iget-object v0, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v0}, Lorg/h2/engine/SessionRemote;->getLastReconnect()I

    move-result v0

    iget v1, p0, Lorg/h2/command/CommandRemote;->created:I

    if-eq v0, v1, :cond_0

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/h2/command/CommandRemote;->id:I

    :cond_0
    iget-object v0, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v0}, Lorg/h2/engine/SessionRemote;->checkClosed()V

    iget v0, p0, Lorg/h2/command/CommandRemote;->id:I

    iget-object v1, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v1}, Lorg/h2/engine/SessionRemote;->getCurrentId()I

    move-result v1

    sget v2, Lorg/h2/engine/SysProperties;->SERVER_CACHED_OBJECTS:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/h2/command/CommandRemote;->prepare(Lorg/h2/engine/SessionRemote;Z)V

    :cond_1
    return-void
.end method

.method private sendParameters(Lorg/h2/value/Transfer;)V
    .locals 4

    iget-object v0, p0, Lorg/h2/command/CommandRemote;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    iget-object v0, p0, Lorg/h2/command/CommandRemote;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/ParameterInterface;

    invoke-interface {v1}, Lorg/h2/expression/ParameterInterface;->getParamValue()Lorg/h2/value/Value;

    move-result-object v1

    if-nez v1, :cond_0

    iget v2, p0, Lorg/h2/command/CommandRemote;->cmdType:I

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_0

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    :cond_0
    invoke-virtual {p1, v1}, Lorg/h2/value/Transfer;->writeValue(Lorg/h2/value/Value;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    iget v1, p0, Lorg/h2/command/CommandRemote;->id:I

    invoke-virtual {v0, v1}, Lorg/h2/engine/SessionRemote;->cancelStatement(I)V

    return-void
.end method

.method public close()V
    .locals 5

    iget-object v0, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/h2/engine/SessionRemote;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    const-string v2, "COMMAND_CLOSE"

    iget v3, p0, Lorg/h2/command/CommandRemote;->id:I

    invoke-virtual {v1, v2, v3}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/h2/command/CommandRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/value/Transfer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x4

    :try_start_1
    invoke-virtual {v2, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v2

    iget v3, p0, Lorg/h2/command/CommandRemote;->id:I

    invoke-virtual {v2, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lorg/h2/command/CommandRemote;->trace:Lorg/h2/message/Trace;

    const-string v4, "close"

    invoke-virtual {v3, v2, v4}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    :try_start_3
    iget-object v0, p0, Lorg/h2/command/CommandRemote;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/ParameterInterface;

    invoke-interface {v1}, Lorg/h2/expression/ParameterInterface;->getParamValue()Lorg/h2/value/Value;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/h2/value/Value;->remove()V
    :try_end_3
    .catch Lorg/h2/message/DbException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lorg/h2/command/CommandRemote;->trace:Lorg/h2/message/Trace;

    const-string v2, "close"

    invoke-virtual {v1, v0, v2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lorg/h2/command/CommandRemote;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_4
    :goto_3
    return-void
.end method

.method public executeQuery(IZ)Lorg/h2/result/ResultInterface;
    .locals 13

    invoke-direct {p0}, Lorg/h2/command/CommandRemote;->checkParameters()V

    iget-object v0, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v1}, Lorg/h2/engine/SessionRemote;->getNextId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v2, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    iget-object v3, p0, Lorg/h2/command/CommandRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    invoke-direct {p0}, Lorg/h2/command/CommandRemote;->prepareIfRequired()V

    iget-object v3, p0, Lorg/h2/command/CommandRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/h2/value/Transfer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    const-string v5, "COMMAND_EXECUTE_QUERY"

    iget v6, p0, Lorg/h2/command/CommandRemote;->id:I

    invoke-virtual {v3, v5, v6}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v3

    iget v5, p0, Lorg/h2/command/CommandRemote;->id:I

    invoke-virtual {v3, v5}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    iget-object v3, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v3}, Lorg/h2/engine/SessionRemote;->isClustered()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iget v3, p0, Lorg/h2/command/CommandRemote;->fetchSize:I

    move v7, v3

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception v3

    goto :goto_4

    :cond_1
    :goto_1
    const v3, 0x7fffffff

    const v7, 0x7fffffff

    :goto_2
    invoke-virtual {v4, v7}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-direct {p0, v4}, Lorg/h2/command/CommandRemote;->sendParameters(Lorg/h2/value/Transfer;)V

    iget-object v3, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v3, v4}, Lorg/h2/engine/SessionRemote;->done(Lorg/h2/value/Transfer;)V

    invoke-virtual {v4}, Lorg/h2/value/Transfer;->readInt()I

    move-result v6

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/h2/result/ResultRemote;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v8

    goto :goto_3

    :cond_2
    move-object v11, v2

    :goto_3
    :try_start_2
    new-instance v12, Lorg/h2/result/ResultRemote;

    iget-object v3, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    move-object v2, v12

    move v5, v1

    invoke-direct/range {v2 .. v7}, Lorg/h2/result/ResultRemote;-><init>(Lorg/h2/engine/SessionRemote;Lorg/h2/value/Transfer;III)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v2, p0, Lorg/h2/command/CommandRemote;->readonly:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    move-object v2, v12

    goto :goto_6

    :cond_3
    move-object v2, v12

    goto :goto_5

    :catch_1
    move-exception v3

    move-object v2, v12

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v2, v11

    :goto_4
    :try_start_4
    iget-object v4, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    add-int/lit8 v5, v9, -0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4, v3, v9, v10}, Lorg/h2/engine/SessionRemote;->removeServer(Ljava/io/IOException;II)V

    move v9, v5

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_6
    iget-object p1, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {p1}, Lorg/h2/engine/SessionRemote;->autoCommitIfCluster()V

    iget-object p1, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {p1}, Lorg/h2/engine/SessionRemote;->readSessionState()V

    monitor-exit v0

    return-object v2

    :goto_7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public executeUpdate()I
    .locals 9

    invoke-direct {p0}, Lorg/h2/command/CommandRemote;->checkParameters()V

    iget-object v0, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lorg/h2/command/CommandRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    invoke-direct {p0}, Lorg/h2/command/CommandRemote;->prepareIfRequired()V

    iget-object v5, p0, Lorg/h2/command/CommandRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/value/Transfer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    const-string v7, "COMMAND_EXECUTE_UPDATE"

    iget v8, p0, Lorg/h2/command/CommandRemote;->id:I

    invoke-virtual {v6, v7, v8}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v6

    iget v7, p0, Lorg/h2/command/CommandRemote;->id:I

    invoke-virtual {v6, v7}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    invoke-direct {p0, v5}, Lorg/h2/command/CommandRemote;->sendParameters(Lorg/h2/value/Transfer;)V

    iget-object v6, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v6, v5}, Lorg/h2/engine/SessionRemote;->done(Lorg/h2/value/Transfer;)V

    invoke-virtual {v5}, Lorg/h2/value/Transfer;->readInt()I

    move-result v3

    invoke-virtual {v5}, Lorg/h2/value/Transfer;->readBoolean()Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_2
    iget-object v6, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    add-int/lit8 v7, v1, -0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v5, v1, v4}, Lorg/h2/engine/SessionRemote;->removeServer(Ljava/io/IOException;II)V

    move v1, v7

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v1, v2}, Lorg/h2/engine/SessionRemote;->setAutoCommitFromServer(Z)V

    iget-object v1, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v1}, Lorg/h2/engine/SessionRemote;->autoCommitIfCluster()V

    iget-object v1, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v1}, Lorg/h2/engine/SessionRemote;->readSessionState()V

    monitor-exit v0

    return v3

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCommandType()I
    .locals 1

    iget v0, p0, Lorg/h2/command/CommandRemote;->cmdType:I

    return v0
.end method

.method public getMetaData()Lorg/h2/result/ResultInterface;
    .locals 12

    iget-object v0, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/h2/command/CommandRemote;->isQuery:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v1}, Lorg/h2/engine/SessionRemote;->getNextId()I

    move-result v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    iget-object v3, p0, Lorg/h2/command/CommandRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-direct {p0}, Lorg/h2/command/CommandRemote;->prepareIfRequired()V

    iget-object v3, p0, Lorg/h2/command/CommandRemote;->transferList:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/h2/value/Transfer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    const-string v4, "COMMAND_GET_META_DATA"

    iget v6, p0, Lorg/h2/command/CommandRemote;->id:I

    invoke-virtual {v3, v4, v6}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v3

    iget v4, p0, Lorg/h2/command/CommandRemote;->id:I

    invoke-virtual {v3, v4}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    iget-object v3, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v3, v5}, Lorg/h2/engine/SessionRemote;->done(Lorg/h2/value/Transfer;)V

    invoke-virtual {v5}, Lorg/h2/value/Transfer;->readInt()I

    move-result v7

    new-instance v11, Lorg/h2/result/ResultRemote;

    iget-object v4, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    const v8, 0x7fffffff

    move-object v3, v11

    move v6, v1

    invoke-direct/range {v3 .. v8}, Lorg/h2/result/ResultRemote;-><init>(Lorg/h2/engine/SessionRemote;Lorg/h2/value/Transfer;III)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v11

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    iget-object v4, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4, v3, v9, v10}, Lorg/h2/engine/SessionRemote;->removeServer(Ljava/io/IOException;II)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/h2/command/CommandRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v1}, Lorg/h2/engine/SessionRemote;->autoCommitIfCluster()V

    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getParameters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/ParameterInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/command/CommandRemote;->parameters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isQuery()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/command/CommandRemote;->isQuery:Z

    return v0
.end method

.method public stop()V
    .locals 1

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/command/CommandRemote;->sql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/command/CommandRemote;->getParameters()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/Trace;->formatParams(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

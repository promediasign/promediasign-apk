.class public Lorg/h2/result/ResultRemote;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/result/ResultInterface;


# instance fields
.field private final columns:[Lorg/h2/result/ResultColumn;

.field private currentRow:[Lorg/h2/value/Value;

.field private fetchSize:I

.field private id:I

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private final rowCount:I

.field private rowId:I

.field private rowOffset:I

.field private session:Lorg/h2/engine/SessionRemote;

.field private final trace:Lorg/h2/message/Trace;

.field private transfer:Lorg/h2/value/Transfer;


# direct methods
.method public constructor <init>(Lorg/h2/engine/SessionRemote;Lorg/h2/value/Transfer;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {p1}, Lorg/h2/engine/SessionRemote;->getTrace()Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/result/ResultRemote;->trace:Lorg/h2/message/Trace;

    iput-object p2, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    iput p3, p0, Lorg/h2/result/ResultRemote;->id:I

    new-array p1, p4, [Lorg/h2/result/ResultColumn;

    iput-object p1, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    invoke-virtual {p2}, Lorg/h2/value/Transfer;->readInt()I

    move-result p1

    iput p1, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p4, :cond_0

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    new-instance v1, Lorg/h2/result/ResultColumn;

    invoke-direct {v1, p2}, Lorg/h2/result/ResultColumn;-><init>(Lorg/h2/value/Transfer;)V

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    iput p2, p0, Lorg/h2/result/ResultRemote;->rowId:I

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    iput p5, p0, Lorg/h2/result/ResultRemote;->fetchSize:I

    invoke-direct {p0, p1}, Lorg/h2/result/ResultRemote;->fetchRows(Z)V

    return-void
.end method

.method private fetchRows(Z)V
    .locals 7

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v1}, Lorg/h2/engine/SessionRemote;->checkClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v1, p0, Lorg/h2/result/ResultRemote;->rowOffset:I

    iget-object v2, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/h2/result/ResultRemote;->rowOffset:I

    iget-object v1, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget v1, p0, Lorg/h2/result/ResultRemote;->fetchSize:I

    iget v2, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    iget v3, p0, Lorg/h2/result/ResultRemote;->rowOffset:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    const-string v2, "RESULT_FETCH_ROWS"

    iget v3, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {p1, v2, v3}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object p1

    iget v2, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {p1, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    iget-object p1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    iget-object v2, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {p1, v2}, Lorg/h2/engine/SessionRemote;->done(Lorg/h2/value/Transfer;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v3}, Lorg/h2/value/Transfer;->readBoolean()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    array-length v3, v3

    new-array v4, v3, [Lorg/h2/value/Value;

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_2

    iget-object v6, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    invoke-virtual {v6}, Lorg/h2/value/Transfer;->readValue()Lorg/h2/value/Value;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    iget p1, p0, Lorg/h2/result/ResultRemote;->rowOffset:I

    iget-object v1, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    if-lt p1, v1, :cond_4

    invoke-direct {p0}, Lorg/h2/result/ResultRemote;->sendClose()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    monitor-exit v0

    return-void

    :goto_4
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private remapIfOld()V
    .locals 4

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v1, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {v0}, Lorg/h2/engine/SessionRemote;->getCurrentId()I

    move-result v0

    sget v2, Lorg/h2/engine/SysProperties;->SERVER_CACHED_OBJECTS:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_1

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v0}, Lorg/h2/engine/SessionRemote;->getNextId()I

    move-result v0

    iget-object v1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    const-string v2, "CHANGE_ID"

    iget v3, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {v1, v2, v3}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v1

    iget v2, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {v1, v2}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    iput v0, p0, Lorg/h2/result/ResultRemote;->id:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private sendClose()V
    .locals 5

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    const-string v3, "RESULT_CLOSE"

    iget v4, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {v2, v3, v4}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v2

    iget v3, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {v2, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v1, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    iput-object v1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lorg/h2/result/ResultRemote;->trace:Lorg/h2/message/Trace;

    const-string v3, "close"

    invoke-virtual {v2, v0, v3}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iput-object v1, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    iput-object v1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/h2/result/ResultRemote;->sendClose()V

    return-void
.end method

.method public containsDistinct([Lorg/h2/value/Value;)Z
    .locals 0

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public createShallowCopy(Lorg/h2/engine/Session;)Lorg/h2/result/ResultInterface;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public currentRow()[Lorg/h2/value/Value;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->currentRow:[Lorg/h2/value/Value;

    return-object v0
.end method

.method public getAlias(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/h2/result/ResultColumn;->alias:Ljava/lang/String;

    return-object p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/h2/result/ResultColumn;->columnName:Ljava/lang/String;

    return-object p1
.end method

.method public getColumnPrecision(I)J
    .locals 2

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget-wide v0, p1, Lorg/h2/result/ResultColumn;->precision:J

    return-wide v0
.end method

.method public getColumnScale(I)I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget p1, p1, Lorg/h2/result/ResultColumn;->scale:I

    return p1
.end method

.method public getColumnType(I)I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget p1, p1, Lorg/h2/result/ResultColumn;->columnType:I

    return p1
.end method

.method public getDisplaySize(I)I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget p1, p1, Lorg/h2/result/ResultColumn;->displaySize:I

    return p1
.end method

.method public getFetchSize()I
    .locals 1

    iget v0, p0, Lorg/h2/result/ResultRemote;->fetchSize:I

    return v0
.end method

.method public getNullable(I)I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget p1, p1, Lorg/h2/result/ResultColumn;->nullable:I

    return p1
.end method

.method public getRowCount()I
    .locals 1

    iget v0, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    return v0
.end method

.method public getRowId()I
    .locals 1

    iget v0, p0, Lorg/h2/result/ResultRemote;->rowId:I

    return v0
.end method

.method public getSchemaName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/h2/result/ResultColumn;->schemaName:Ljava/lang/String;

    return-object p1
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/h2/result/ResultColumn;->tableName:Ljava/lang/String;

    return-object p1
.end method

.method public getVisibleColumnCount()I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    array-length v0, v0

    return v0
.end method

.method public hasNext()Z
    .locals 3

    iget v0, p0, Lorg/h2/result/ResultRemote;->rowId:I

    iget v1, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isAfterLast()Z
    .locals 2

    iget v0, p0, Lorg/h2/result/ResultRemote;->rowId:I

    iget v1, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutoIncrement(I)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    aget-object p1, v0, p1

    iget-boolean p1, p1, Lorg/h2/result/ResultColumn;->autoIncrement:Z

    return p1
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLazy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needToClose()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next()Z
    .locals 4

    iget v0, p0, Lorg/h2/result/ResultRemote;->rowId:I

    iget v1, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    if-ge v0, v1, :cond_2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/result/ResultRemote;->rowId:I

    invoke-direct {p0}, Lorg/h2/result/ResultRemote;->remapIfOld()V

    iget v0, p0, Lorg/h2/result/ResultRemote;->rowId:I

    iget v2, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Lorg/h2/result/ResultRemote;->rowOffset:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-direct {p0, v1}, Lorg/h2/result/ResultRemote;->fetchRows(Z)V

    :cond_0
    iget-object v0, p0, Lorg/h2/result/ResultRemote;->result:Ljava/util/ArrayList;

    iget v2, p0, Lorg/h2/result/ResultRemote;->rowId:I

    iget v3, p0, Lorg/h2/result/ResultRemote;->rowOffset:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/value/Value;

    iput-object v0, p0, Lorg/h2/result/ResultRemote;->currentRow:[Lorg/h2/value/Value;

    return v1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/result/ResultRemote;->currentRow:[Lorg/h2/value/Value;

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 5

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/result/ResultRemote;->rowId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/result/ResultRemote;->currentRow:[Lorg/h2/value/Value;

    iget-object v1, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    if-nez v1, :cond_0

    return-void

    :cond_0
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    invoke-virtual {v2}, Lorg/h2/engine/SessionRemote;->checkClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/h2/result/ResultRemote;->session:Lorg/h2/engine/SessionRemote;

    const-string v3, "RESULT_RESET"

    iget v4, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {v2, v3, v4}, Lorg/h2/engine/SessionRemote;->traceOperation(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/h2/result/ResultRemote;->transfer:Lorg/h2/value/Transfer;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v2

    iget v3, p0, Lorg/h2/result/ResultRemote;->id:I

    invoke-virtual {v2, v3}, Lorg/h2/value/Transfer;->writeInt(I)Lorg/h2/value/Transfer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Transfer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2, v0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setFetchSize(I)V
    .locals 0

    iput p1, p0, Lorg/h2/result/ResultRemote;->fetchSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "columns: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/result/ResultRemote;->columns:[Lorg/h2/result/ResultColumn;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rows: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/result/ResultRemote;->rowCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/result/ResultRemote;->rowId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

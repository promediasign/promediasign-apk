.class public abstract Lorg/h2/result/LazyResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/result/ResultInterface;


# instance fields
.field private afterLast:Z

.field private closed:Z

.field private currentRow:[Lorg/h2/value/Value;

.field private expressions:[Lorg/h2/expression/Expression;

.field private limit:I

.field private nextRow:[Lorg/h2/value/Value;

.field private rowId:I


# direct methods
.method public constructor <init>([Lorg/h2/expression/Expression;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/result/LazyResult;->rowId:I

    iput-object p1, p0, Lorg/h2/result/LazyResult;->expressions:[Lorg/h2/expression/Expression;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/result/LazyResult;->closed:Z

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

    iget-object v0, p0, Lorg/h2/result/LazyResult;->currentRow:[Lorg/h2/value/Value;

    return-object v0
.end method

.method public abstract fetchNextRow()[Lorg/h2/value/Value;
.end method

.method public getAlias(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LazyResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LazyResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getColumnName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnPrecision(I)J
    .locals 2

    iget-object v0, p0, Lorg/h2/result/LazyResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getColumnScale(I)I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LazyResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getScale()I

    move-result p1

    return p1
.end method

.method public getColumnType(I)I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LazyResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getType()I

    move-result p1

    return p1
.end method

.method public getDisplaySize(I)I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LazyResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result p1

    return p1
.end method

.method public getFetchSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getNullable(I)I
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LazyResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getNullable()I

    move-result p1

    return p1
.end method

.method public getRowCount()I
    .locals 1

    const-string v0, "Row count is unknown for lazy result."

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getRowId()I
    .locals 1

    iget v0, p0, Lorg/h2/result/LazyResult;->rowId:I

    return v0
.end method

.method public getSchemaName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LazyResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSchemaName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LazyResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasNext()Z
    .locals 4

    iget-boolean v0, p0, Lorg/h2/result/LazyResult;->closed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/h2/result/LazyResult;->afterLast:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/result/LazyResult;->nextRow:[Lorg/h2/value/Value;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/h2/result/LazyResult;->limit:I

    if-lez v0, :cond_1

    iget v3, p0, Lorg/h2/result/LazyResult;->rowId:I

    add-int/2addr v3, v2

    if-ge v3, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/h2/result/LazyResult;->fetchNextRow()[Lorg/h2/value/Value;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/result/LazyResult;->nextRow:[Lorg/h2/value/Value;

    :cond_2
    iget-object v0, p0, Lorg/h2/result/LazyResult;->nextRow:[Lorg/h2/value/Value;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public isAfterLast()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/result/LazyResult;->afterLast:Z

    return v0
.end method

.method public isAutoIncrement(I)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/result/LazyResult;->expressions:[Lorg/h2/expression/Expression;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/h2/expression/Expression;->isAutoIncrement()Z

    move-result p1

    return p1
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/result/LazyResult;->closed:Z

    return v0
.end method

.method public isLazy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needToClose()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next()Z
    .locals 3

    invoke-virtual {p0}, Lorg/h2/result/LazyResult;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/result/LazyResult;->rowId:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/h2/result/LazyResult;->rowId:I

    iget-object v0, p0, Lorg/h2/result/LazyResult;->nextRow:[Lorg/h2/value/Value;

    iput-object v0, p0, Lorg/h2/result/LazyResult;->currentRow:[Lorg/h2/value/Value;

    iput-object v1, p0, Lorg/h2/result/LazyResult;->nextRow:[Lorg/h2/value/Value;

    return v2

    :cond_0
    iget-boolean v0, p0, Lorg/h2/result/LazyResult;->afterLast:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/h2/result/LazyResult;->rowId:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/h2/result/LazyResult;->rowId:I

    iput-object v1, p0, Lorg/h2/result/LazyResult;->currentRow:[Lorg/h2/value/Value;

    iput-boolean v2, p0, Lorg/h2/result/LazyResult;->afterLast:Z

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/result/LazyResult;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/result/LazyResult;->rowId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/result/LazyResult;->afterLast:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/result/LazyResult;->currentRow:[Lorg/h2/value/Value;

    iput-object v0, p0, Lorg/h2/result/LazyResult;->nextRow:[Lorg/h2/value/Value;

    return-void

    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setFetchSize(I)V
    .locals 0

    return-void
.end method

.method public setLimit(I)V
    .locals 0

    iput p1, p0, Lorg/h2/result/LazyResult;->limit:I

    return-void
.end method

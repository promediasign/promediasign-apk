.class public abstract Lorg/h2/command/Prepared;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private command:Lorg/h2/command/Command;

.field protected create:Z

.field private currentRowNumber:I

.field private modificationMetaId:J

.field private objectId:I

.field protected parameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field protected prepareAlways:Z

.field private rowScanCount:I

.field protected session:Lorg/h2/engine/Session;

.field protected sqlStatement:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/command/Prepared;->create:Z

    iput-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getModificationMetaId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/command/Prepared;->modificationMetaId:J

    return-void
.end method

.method public static getSQL([Lorg/h2/expression/Expression;)Ljava/lang/String;
    .locals 5

    .line 2
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, ", "

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSQL([Lorg/h2/value/Value;)Ljava/lang/String;
    .locals 5

    .line 3
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, ", "

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setProgress()V
    .locals 5

    iget v0, p0, Lorg/h2/command/Prepared;->currentRowNumber:I

    and-int/lit8 v0, v0, 0x7f

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Prepared;->sqlStatement:Ljava/lang/String;

    iget v2, p0, Lorg/h2/command/Prepared;->currentRowNumber:I

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkCanceled()V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->checkCanceled()V

    iget-object v0, p0, Lorg/h2/command/Prepared;->command:Lorg/h2/command/Command;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getCurrentCommand()Lorg/h2/command/Command;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/command/Command;->checkCanceled()V

    :cond_1
    return-void
.end method

.method public checkParameters()V
    .locals 3

    iget-object v0, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Parameter;

    invoke-virtual {v2}, Lorg/h2/expression/Parameter;->checkSet()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentObjectId()I
    .locals 1

    iget v0, p0, Lorg/h2/command/Prepared;->objectId:I

    return v0
.end method

.method public getCurrentRowNumber()I
    .locals 1

    iget v0, p0, Lorg/h2/command/Prepared;->currentRowNumber:I

    return v0
.end method

.method public getModificationMetaId()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/command/Prepared;->modificationMetaId:J

    return-wide v0
.end method

.method public getObjectId()I
    .locals 2

    iget v0, p0, Lorg/h2/command/Prepared;->objectId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->allocateObjectId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/h2/command/Prepared;->objectId:I

    :goto_0
    return v0
.end method

.method public getParameters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/command/Prepared;->sqlStatement:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public isCacheable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isQuery()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isTransactional()Z
.end method

.method public needRecompile()Z
    .locals 6

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/h2/command/Prepared;->prepareAlways:Z

    if-nez v1, :cond_1

    iget-wide v1, p0, Lorg/h2/command/Prepared;->modificationMetaId:J

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getModificationMetaId()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->recompileAlways:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const v0, 0x15fd3

    const-string v1, "database closed"

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public query(I)Lorg/h2/result/ResultInterface;
    .locals 0

    const p1, 0x15f92

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public abstract queryMeta()Lorg/h2/result/ResultInterface;
.end method

.method public setCommand(Lorg/h2/command/Command;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/Prepared;->command:Lorg/h2/command/Command;

    return-void
.end method

.method public setCurrentRowNumber(I)V
    .locals 1

    iget v0, p0, Lorg/h2/command/Prepared;->rowScanCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/command/Prepared;->rowScanCount:I

    and-int/lit8 v0, v0, 0x7f

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->checkCanceled()V

    :cond_0
    iput p1, p0, Lorg/h2/command/Prepared;->currentRowNumber:I

    invoke-direct {p0}, Lorg/h2/command/Prepared;->setProgress()V

    return-void
.end method

.method public setModificationMetaId(J)V
    .locals 0

    iput-wide p1, p0, Lorg/h2/command/Prepared;->modificationMetaId:J

    return-void
.end method

.method public setObjectId(I)V
    .locals 0

    iput p1, p0, Lorg/h2/command/Prepared;->objectId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/h2/command/Prepared;->create:Z

    return-void
.end method

.method public setParameterList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    return-void
.end method

.method public setPrepareAlways(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/Prepared;->prepareAlways:Z

    return-void
.end method

.method public setRow(Lorg/h2/message/DbException;ILjava/lang/String;)Lorg/h2/message/DbException;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/command/Prepared;->sqlStatement:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p2, :cond_1

    const-string v1, "row #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p2, 0x28

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    return-object p1
.end method

.method public setSQL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/Prepared;->sqlStatement:Ljava/lang/String;

    return-void
.end method

.method public setSession(Lorg/h2/engine/Session;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/Prepared;->sqlStatement:Ljava/lang/String;

    return-object v0
.end method

.method public trace(JI)V
    .locals 11

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getTrace()Lorg/h2/message/Trace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isInfoEnabled()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, p1

    iget-object v0, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/h2/message/Trace;->formatParams(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getTrace()Lorg/h2/message/Trace;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/command/Prepared;->sqlStatement:Ljava/lang/String;

    const-wide/16 v8, 0x3e8

    div-long/2addr v3, v8

    div-long v9, v3, v8

    move v8, p3

    invoke-virtual/range {v5 .. v10}, Lorg/h2/message/Trace;->infoSQL(Ljava/lang/String;Ljava/lang/String;IJ)V

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getQueryStatistics()Z

    move-result v0

    if-eqz v0, :cond_1

    cmp-long v0, p1, v1

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getQueryStatisticsData()Lorg/h2/engine/QueryStatisticsData;

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1, p3}, Lorg/h2/engine/QueryStatisticsData;->update(Ljava/lang/String;JI)V

    :cond_1
    return-void
.end method

.method public update()I
    .locals 1

    const v0, 0x15f91

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

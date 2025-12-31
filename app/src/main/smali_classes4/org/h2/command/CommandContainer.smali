.class public Lorg/h2/command/CommandContainer;
.super Lorg/h2/command/Command;
.source "SourceFile"


# instance fields
.field private prepared:Lorg/h2/command/Prepared;

.field private readOnly:Z

.field private readOnlyKnown:Z


# direct methods
.method public constructor <init>(Lorg/h2/command/Parser;Ljava/lang/String;Lorg/h2/command/Prepared;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/Command;-><init>(Lorg/h2/command/Parser;Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lorg/h2/command/Prepared;->setCommand(Lorg/h2/command/Command;)V

    iput-object p3, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    return-void
.end method

.method private static prepareJoinBatch(Lorg/h2/command/Prepared;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/h2/command/Prepared;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getType()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    check-cast p0, Lorg/h2/command/dml/Query;

    invoke-virtual {p0}, Lorg/h2/command/dml/Query;->prepareJoinBatch()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x56

    if-ne v0, v1, :cond_2

    :cond_1
    check-cast p0, Lorg/h2/command/dml/Explain;

    invoke-virtual {p0}, Lorg/h2/command/dml/Explain;->getCommand()Lorg/h2/command/Prepared;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/command/CommandContainer;->prepareJoinBatch(Lorg/h2/command/Prepared;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private recompileIfRequired()V
    .locals 8

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->needRecompile()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/h2/command/Prepared;->setModificationMetaId(J)V

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->getSQL()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v3}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lorg/h2/command/Parser;

    iget-object v5, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-direct {v4, v5}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {v4, v0}, Lorg/h2/command/Parser;->parse(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->getModificationMetaId()J

    move-result-wide v4

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0, v1, v2}, Lorg/h2/command/Prepared;->setModificationMetaId(J)V

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/expression/Parameter;

    invoke-virtual {v6}, Lorg/h2/expression/Parameter;->isValueSet()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6, v7}, Lorg/h2/expression/Parameter;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/expression/Parameter;

    invoke-virtual {v7, v6}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->prepare()V

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0, v4, v5}, Lorg/h2/command/Prepared;->setModificationMetaId(J)V

    invoke-virtual {p0}, Lorg/h2/command/CommandContainer;->prepareJoinBatch()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getCommandType()I
    .locals 1

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->getType()I

    move-result v0

    return v0
.end method

.method public getParameters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "+",
            "Lorg/h2/expression/ParameterInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isCacheable()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->isCacheable()Z

    move-result v0

    return v0
.end method

.method public isQuery()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->isQuery()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/command/CommandContainer;->readOnlyKnown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->isReadOnly()Z

    move-result v0

    iput-boolean v0, p0, Lorg/h2/command/CommandContainer;->readOnly:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/command/CommandContainer;->readOnlyKnown:Z

    :cond_0
    iget-boolean v0, p0, Lorg/h2/command/CommandContainer;->readOnly:Z

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->isTransactional()Z

    move-result v0

    return v0
.end method

.method public prepareJoinBatch()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->isJoinBatchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-static {v0}, Lorg/h2/command/CommandContainer;->prepareJoinBatch(Lorg/h2/command/Prepared;)V

    :cond_0
    return-void
.end method

.method public query(I)Lorg/h2/result/ResultInterface;
    .locals 4

    invoke-direct {p0}, Lorg/h2/command/CommandContainer;->recompileIfRequired()V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/h2/command/Command;->setProgress(I)V

    invoke-virtual {p0}, Lorg/h2/command/Command;->start()V

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->checkParameters()V

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0, p1}, Lorg/h2/command/Prepared;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    iget-wide v1, p0, Lorg/h2/command/Command;->startTimeNanos:J

    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->isLazy()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result v3

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/command/Prepared;->trace(JI)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/h2/command/Command;->setProgress(I)V

    return-object p1
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->queryMeta()Lorg/h2/result/ResultInterface;

    move-result-object v0

    return-object v0
.end method

.method public update()I
    .locals 4

    invoke-direct {p0}, Lorg/h2/command/CommandContainer;->recompileIfRequired()V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/h2/command/Command;->setProgress(I)V

    invoke-virtual {p0}, Lorg/h2/command/Command;->start()V

    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->checkParameters()V

    iget-object v0, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->update()I

    move-result v0

    iget-object v1, p0, Lorg/h2/command/CommandContainer;->prepared:Lorg/h2/command/Prepared;

    iget-wide v2, p0, Lorg/h2/command/Command;->startTimeNanos:J

    invoke-virtual {v1, v2, v3, v0}, Lorg/h2/command/Prepared;->trace(JI)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lorg/h2/command/Command;->setProgress(I)V

    return v0
.end method

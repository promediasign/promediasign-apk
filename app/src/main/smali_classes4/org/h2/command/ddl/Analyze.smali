.class public Lorg/h2/command/ddl/Analyze;
.super Lorg/h2/command/ddl/DefineCommand;
.source "SourceFile"


# instance fields
.field private sampleRows:I

.field private table:Lorg/h2/table/Table;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget p1, p1, Lorg/h2/engine/DbSettings;->analyzeSample:I

    iput p1, p0, Lorg/h2/command/ddl/Analyze;->sampleRows:I

    return-void
.end method

.method public static analyzeTable(Lorg/h2/engine/Session;Lorg/h2/table/Table;IZ)V
    .locals 10

    invoke-virtual {p1}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v0

    sget-object v1, Lorg/h2/table/TableType;->TABLE:Lorg/h2/table/TableType;

    if-ne v0, v1, :cond_10

    invoke-virtual {p1}, Lorg/h2/table/Table;->isHidden()Z

    move-result v0

    if-nez v0, :cond_10

    if-nez p0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p3, :cond_2

    invoke-virtual {p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isSysTableLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/h2/table/Table;->hasSelectTrigger()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/engine/Session;->findLocalTempTable(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lorg/h2/table/Table;->isLockedExclusively()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p0}, Lorg/h2/table/Table;->isLockedExclusivelyBy(Lorg/h2/engine/Session;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/User;->hasRight(Lorg/h2/table/Table;I)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getCancel()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p1}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    array-length v2, v0

    if-nez v2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    new-instance v3, Lorg/h2/util/StatementBuilder;

    const-string v4, "SELECT "

    invoke-direct {v3, v4}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_a

    aget-object v7, v0, v6

    const-string v8, ", "

    invoke-virtual {v3, v8}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/h2/table/Column;->getType()I

    move-result v8

    const/16 v9, 0xf

    if-eq v8, v9, :cond_9

    const/16 v9, 0x10

    if-ne v8, v9, :cond_8

    goto :goto_1

    :cond_8
    const-string v8, "SELECTIVITY("

    invoke-virtual {v3, v8}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    goto :goto_2

    :cond_9
    :goto_1
    const-string v7, "MAX(NULL)"

    invoke-virtual {v3, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_a
    const-string v4, " FROM "

    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    if-lez p2, :cond_b

    const-string v4, " LIMIT ? SAMPLE_SIZE ? "

    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_b
    invoke-virtual {v3}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v3

    if-lez p2, :cond_c

    invoke-virtual {v3}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/expression/Parameter;

    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Parameter;

    invoke-static {p2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p2

    invoke-virtual {v4, p2}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    :cond_c
    invoke-virtual {v3, v5}, Lorg/h2/command/Prepared;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object p2

    invoke-interface {p2}, Lorg/h2/result/ResultInterface;->next()Z

    :goto_3
    array-length v3, v0

    if-ge v5, v3, :cond_e

    invoke-interface {p2}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v3

    aget-object v3, v3, v5

    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v3, v4, :cond_d

    invoke-virtual {v3}, Lorg/h2/value/Value;->getInt()I

    move-result v3

    aget-object v4, v0, v5

    invoke-virtual {v4, v3}, Lorg/h2/table/Column;->setSelectivity(I)V

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_e
    if-eqz p3, :cond_f

    invoke-virtual {v2, p0, p1}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_4

    :cond_f
    invoke-virtual {v2}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object p2

    if-eq p2, p0, :cond_10

    monitor-enter p2

    :try_start_0
    invoke-virtual {v2, p2, p1}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    invoke-virtual {p2, v1}, Lorg/h2/engine/Session;->commit(Z)V

    monitor-exit p2

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_10
    :goto_4
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public setTable(Lorg/h2/table/Table;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/Analyze;->table:Lorg/h2/table/Table;

    return-void
.end method

.method public setTop(I)V
    .locals 0

    iput p1, p0, Lorg/h2/command/ddl/Analyze;->sampleRows:I

    return-void
.end method

.method public update()I
    .locals 6

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/ddl/Analyze;->table:Lorg/h2/table/Table;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget v4, p0, Lorg/h2/command/ddl/Analyze;->sampleRows:I

    invoke-static {v0, v2, v4, v1}, Lorg/h2/command/ddl/Analyze;->analyzeTable(Lorg/h2/engine/Session;Lorg/h2/table/Table;IZ)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Table;

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget v5, p0, Lorg/h2/command/ddl/Analyze;->sampleRows:I

    invoke-static {v4, v2, v5, v1}, Lorg/h2/command/ddl/Analyze;->analyzeTable(Lorg/h2/engine/Session;Lorg/h2/table/Table;IZ)V

    goto :goto_0

    :cond_1
    :goto_1
    return v3
.end method

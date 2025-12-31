.class public abstract Lorg/h2/table/TableBase;
.super Lorg/h2/table/Table;
.source "SourceFile"


# instance fields
.field private final globalTemporary:Z

.field private final tableEngine:Ljava/lang/String;

.field private tableEngineParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/command/ddl/CreateTableData;)V
    .locals 6

    iget-object v1, p1, Lorg/h2/command/ddl/CreateTableData;->schema:Lorg/h2/schema/Schema;

    iget v2, p1, Lorg/h2/command/ddl/CreateTableData;->id:I

    iget-object v3, p1, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    iget-boolean v4, p1, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    iget-boolean v5, p1, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/h2/table/Table;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;ZZ)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/h2/table/TableBase;->tableEngineParams:Ljava/util/List;

    iget-object v0, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngine:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/table/TableBase;->tableEngine:Ljava/lang/String;

    iget-boolean v0, p1, Lorg/h2/command/ddl/CreateTableData;->globalTemporary:Z

    iput-boolean v0, p0, Lorg/h2/table/TableBase;->globalTemporary:Z

    iget-object v0, p1, Lorg/h2/command/ddl/CreateTableData;->tableEngineParams:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/h2/table/TableBase;->tableEngineParams:Ljava/util/List;

    :cond_0
    iget-boolean v0, p1, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    invoke-virtual {p0, v0}, Lorg/h2/engine/DbObjectBase;->setTemporary(Z)V

    iget-object v0, p1, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/table/Column;

    iget-object p1, p1, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/h2/table/Table;->setColumns([Lorg/h2/table/Column;)V

    return-void
.end method


# virtual methods
.method public getCreateSQL()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/h2/util/StatementBuilder;

    const-string v2, "CREATE "

    invoke-direct {v1, v2}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/h2/table/TableBase;->isGlobalTemporary()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "GLOBAL "

    :goto_0
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "LOCAL "

    goto :goto_0

    :goto_1
    const-string v2, "TEMPORARY "

    :goto_2
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lorg/h2/table/Table;->isPersistIndexes()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "CACHED "

    goto :goto_2

    :cond_3
    const-string v2, "MEMORY "

    goto :goto_2

    :goto_3
    const-string v2, "TABLE "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-boolean v2, p0, Lorg/h2/table/Table;->isHidden:Z

    if-eqz v2, :cond_4

    const-string v2, "IF NOT EXISTS "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_4
    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->comment:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, " COMMENT "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/engine/DbObjectBase;->comment:Ljava/lang/String;

    invoke-static {v3}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_5
    const-string v2, "(\n    "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v2, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    const-string v6, ",\n    "

    invoke-virtual {v1, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    const-string v2, "\n)"

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v2, p0, Lorg/h2/table/TableBase;->tableEngine:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget-object v2, v0, Lorg/h2/engine/DbSettings;->defaultTableEngine:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->mvStore:Z

    if-eqz v0, :cond_7

    const-class v0, Lorg/h2/mvstore/db/MVTableEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_8

    iget-object v0, p0, Lorg/h2/table/TableBase;->tableEngine:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const-string v0, "\nENGINE "

    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v0, p0, Lorg/h2/table/TableBase;->tableEngine:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_9
    iget-object v0, p0, Lorg/h2/table/TableBase;->tableEngineParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "\nWITH "

    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->resetCount()Lorg/h2/util/StatementBuilder;

    iget-object v0, p0, Lorg/h2/table/TableBase;->tableEngineParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lorg/h2/table/Table;->isPersistIndexes()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lorg/h2/table/Table;->isPersistData()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "\nNOT PERSISTENT"

    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_b
    iget-boolean v0, p0, Lorg/h2/table/Table;->isHidden:Z

    if-eqz v0, :cond_c

    const-string v0, "\nHIDDEN"

    invoke-virtual {v1, v0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_c
    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CASCADE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGlobalTemporary()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/TableBase;->globalTemporary:Z

    return v0
.end method

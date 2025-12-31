.class public Lorg/h2/command/dml/AlterSequence;
.super Lorg/h2/command/ddl/SchemaCommand;
.source "SourceFile"


# instance fields
.field private cacheSize:Lorg/h2/expression/Expression;

.field private cycle:Ljava/lang/Boolean;

.field private ifExists:Z

.field private increment:Lorg/h2/expression/Expression;

.field private maxValue:Lorg/h2/expression/Expression;

.field private minValue:Lorg/h2/expression/Expression;

.field private sequence:Lorg/h2/schema/Sequence;

.field private sequenceName:Ljava/lang/String;

.field private start:Lorg/h2/expression/Expression;

.field private table:Lorg/h2/table/Table;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/ddl/SchemaCommand;-><init>(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;)V

    return-void
.end method

.method private getLong(Lorg/h2/expression/Expression;)Ljava/lang/Long;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v0}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1, v0}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCacheSize(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/AlterSequence;->cacheSize:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setColumn(Lorg/h2/table/Column;)V
    .locals 1

    invoke-virtual {p1}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/AlterSequence;->table:Lorg/h2/table/Table;

    invoke-virtual {p1}, Lorg/h2/table/Column;->getSequence()Lorg/h2/schema/Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/AlterSequence;->sequence:Lorg/h2/schema/Sequence;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/command/dml/AlterSequence;->ifExists:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fb4

    invoke-virtual {p1}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setCycle(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/AlterSequence;->cycle:Ljava/lang/Boolean;

    return-void
.end method

.method public setIfExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/AlterSequence;->ifExists:Z

    return-void
.end method

.method public setIncrement(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/AlterSequence;->increment:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setMaxValue(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/AlterSequence;->maxValue:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setMinValue(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/AlterSequence;->minValue:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setSequenceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/AlterSequence;->sequenceName:Ljava/lang/String;

    return-void
.end method

.method public setStartWith(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/AlterSequence;->start:Lorg/h2/expression/Expression;

    return-void
.end method

.method public update()I
    .locals 7

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/dml/AlterSequence;->sequence:Lorg/h2/schema/Sequence;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/h2/command/ddl/SchemaCommand;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/dml/AlterSequence;->sequenceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/h2/schema/Schema;->findSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/command/dml/AlterSequence;->sequence:Lorg/h2/schema/Sequence;

    if-nez v1, :cond_1

    iget-boolean v0, p0, Lorg/h2/command/dml/AlterSequence;->ifExists:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const v0, 0x15fb4

    iget-object v1, p0, Lorg/h2/command/dml/AlterSequence;->sequenceName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v1, p0, Lorg/h2/command/dml/AlterSequence;->table:Lorg/h2/table/Table;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/dml/AlterSequence;->table:Lorg/h2/table/Table;

    const/16 v4, 0xf

    invoke-virtual {v1, v3, v4}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    :cond_2
    iget-object v1, p0, Lorg/h2/command/dml/AlterSequence;->cycle:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lorg/h2/command/dml/AlterSequence;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Lorg/h2/schema/Sequence;->setCycle(Z)V

    :cond_3
    iget-object v1, p0, Lorg/h2/command/dml/AlterSequence;->cacheSize:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v3}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v3}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v3

    iget-object v1, p0, Lorg/h2/command/dml/AlterSequence;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v1, v3, v4}, Lorg/h2/schema/Sequence;->setCacheSize(J)V

    :cond_4
    iget-object v1, p0, Lorg/h2/command/dml/AlterSequence;->start:Lorg/h2/expression/Expression;

    if-nez v1, :cond_5

    iget-object v3, p0, Lorg/h2/command/dml/AlterSequence;->minValue:Lorg/h2/expression/Expression;

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/h2/command/dml/AlterSequence;->maxValue:Lorg/h2/expression/Expression;

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/h2/command/dml/AlterSequence;->increment:Lorg/h2/expression/Expression;

    if-eqz v3, :cond_6

    :cond_5
    invoke-direct {p0, v1}, Lorg/h2/command/dml/AlterSequence;->getLong(Lorg/h2/expression/Expression;)Ljava/lang/Long;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/command/dml/AlterSequence;->minValue:Lorg/h2/expression/Expression;

    invoke-direct {p0, v3}, Lorg/h2/command/dml/AlterSequence;->getLong(Lorg/h2/expression/Expression;)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/command/dml/AlterSequence;->maxValue:Lorg/h2/expression/Expression;

    invoke-direct {p0, v4}, Lorg/h2/command/dml/AlterSequence;->getLong(Lorg/h2/expression/Expression;)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/command/dml/AlterSequence;->increment:Lorg/h2/expression/Expression;

    invoke-direct {p0, v5}, Lorg/h2/command/dml/AlterSequence;->getLong(Lorg/h2/expression/Expression;)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/command/dml/AlterSequence;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v6, v1, v3, v4, v5}, Lorg/h2/schema/Sequence;->modify(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_6
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lorg/h2/command/dml/AlterSequence;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v0, v1, v3}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/h2/engine/Session;->commit(Z)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

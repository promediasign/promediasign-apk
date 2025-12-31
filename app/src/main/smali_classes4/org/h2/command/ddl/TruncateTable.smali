.class public Lorg/h2/command/ddl/TruncateTable;
.super Lorg/h2/command/ddl/DefineCommand;
.source "SourceFile"


# instance fields
.field private table:Lorg/h2/table/Table;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x35

    return v0
.end method

.method public setTable(Lorg/h2/table/Table;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/TruncateTable;->table:Lorg/h2/table/Table;

    return-void
.end method

.method public update()I
    .locals 4

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    iget-object v0, p0, Lorg/h2/command/ddl/TruncateTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->canTruncate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/ddl/TruncateTable;->table:Lorg/h2/table/Table;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lorg/h2/engine/User;->checkRight(Lorg/h2/table/Table;I)V

    iget-object v0, p0, Lorg/h2/command/ddl/TruncateTable;->table:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    iget-object v0, p0, Lorg/h2/command/ddl/TruncateTable;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/table/Table;->truncate(Lorg/h2/engine/Session;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/TruncateTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15ffa

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

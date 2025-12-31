.class public Lorg/h2/command/ddl/DropDatabase;
.super Lorg/h2/command/ddl/DefineCommand;
.source "SourceFile"


# instance fields
.field private deleteFiles:Z

.field private dropAllObjects:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method

.method private dropAllObjects()V
    .locals 9

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Table;

    invoke-virtual {v6}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    sget-object v7, Lorg/h2/table/TableType;->VIEW:Lorg/h2/table/TableType;

    invoke-virtual {v6}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v8

    if-ne v7, v8, :cond_1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Table;

    invoke-virtual {v6}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    sget-object v7, Lorg/h2/table/TableType;->TABLE_LINK:Lorg/h2/table/TableType;

    invoke-virtual {v6}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v8

    if-ne v7, v8, :cond_3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Table;

    invoke-virtual {v6}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    sget-object v7, Lorg/h2/table/TableType;->TABLE:Lorg/h2/table/TableType;

    invoke-virtual {v6}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v8

    if-ne v7, v8, :cond_5

    invoke-virtual {v6}, Lorg/h2/table/Table;->isHidden()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/table/Table;

    invoke-virtual {v5}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    sget-object v6, Lorg/h2/table/TableType;->EXTERNAL_TABLE_ENGINE:Lorg/h2/table/TableType;

    invoke-virtual {v5}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v7

    if-ne v6, v7, :cond_7

    invoke-virtual {v5}, Lorg/h2/table/Table;->isHidden()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/table/Table;

    invoke-virtual {v4}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v4, v4}, Lorg/h2/engine/Database;->getDependentTable(Lorg/h2/schema/SchemaObject;Lorg/h2/table/Table;)Lorg/h2/table/Table;

    move-result-object v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v5, v4}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_4

    :cond_a
    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllSchemas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/Schema;

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->canDrop()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v2}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_5

    :cond_d
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/schema/SchemaObject;

    move-object v4, v3

    check-cast v4, Lorg/h2/schema/Sequence;

    invoke-virtual {v4}, Lorg/h2/schema/Sequence;->getBelongsToTable()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/SchemaObject;

    invoke-interface {v2}, Lorg/h2/schema/SchemaObject;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_7

    :cond_10
    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v2}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    goto :goto_7

    :cond_11
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/User;

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v3

    if-eq v2, v3, :cond_12

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v2}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_8

    :cond_13
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllRoles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Role;

    invoke-virtual {v2}, Lorg/h2/engine/Role;->getCreateSQL()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v2}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_9

    :cond_15
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllAggregates()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getAllUserDataTypes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/DbObject;

    invoke-interface {v2}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v3, v2}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_a

    :cond_17
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public setDeleteFiles(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/DropDatabase;->deleteFiles:Z

    return-void
.end method

.method public setDropAllObjects(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/DropDatabase;->dropAllObjects:Z

    return-void
.end method

.method public update()I
    .locals 2

    iget-boolean v0, p0, Lorg/h2/command/ddl/DropDatabase;->dropAllObjects:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/command/ddl/DropDatabase;->dropAllObjects()V

    :cond_0
    iget-boolean v0, p0, Lorg/h2/command/ddl/DropDatabase;->deleteFiles:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setDeleteFilesOnDisconnect(Z)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

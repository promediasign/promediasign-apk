.class public Lorg/h2/result/ResultTempTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/result/ResultExternal;


# static fields
.field private static final COLUMN_NAME:Ljava/lang/String; = "DATA"


# instance fields
.field private childCount:I

.field private closed:Z

.field private columnCount:I

.field private containsLob:Z

.field private final distinct:Z

.field private index:Lorg/h2/index/Index;

.field private final parent:Lorg/h2/result/ResultTempTable;

.field private resultCursor:Lorg/h2/index/Cursor;

.field private rowCount:I

.field private session:Lorg/h2/engine/Session;

.field private final sort:Lorg/h2/result/SortOrder;

.field private table:Lorg/h2/table/Table;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;ZLorg/h2/result/SortOrder;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    iput-boolean p3, p0, Lorg/h2/result/ResultTempTable;->distinct:Z

    iput-object p4, p0, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    array-length v0, p2

    iput v0, p0, Lorg/h2/result/ResultTempTable;->columnCount:I

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    const-string v1, "PUBLIC"

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    new-instance v1, Lorg/h2/command/ddl/CreateTableData;

    invoke-direct {v1}, Lorg/h2/command/ddl/CreateTableData;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    aget-object v4, p2, v3

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getType()I

    move-result v4

    new-instance v6, Lorg/h2/table/Column;

    const-string v7, "DATA"

    .line 1
    invoke-static {v3, v7}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2
    invoke-direct {v6, v7, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0x10

    if-eq v4, v7, :cond_0

    const/16 v7, 0xf

    if-ne v4, v7, :cond_1

    :cond_0
    iput-boolean v5, p0, Lorg/h2/result/ResultTempTable;->containsLob:Z

    :cond_1
    iget-object v4, v1, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/engine/Database;->allocateObjectId()I

    move-result p2

    iput p2, v1, Lorg/h2/command/ddl/CreateTableData;->id:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "TEMP_RESULT_SET_"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lorg/h2/command/ddl/CreateTableData;->id:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    iput-boolean v5, v1, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    iput-boolean v2, v1, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    iput-boolean v5, v1, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    iput-boolean v5, v1, Lorg/h2/command/ddl/CreateTableData;->create:Z

    iput-object p1, v1, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/schema/Schema;->createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/Table;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    if-nez p4, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    invoke-direct {p0}, Lorg/h2/result/ResultTempTable;->createIndex()V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/result/ResultTempTable;->parent:Lorg/h2/result/ResultTempTable;

    return-void
.end method

.method private constructor <init>(Lorg/h2/result/ResultTempTable;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/result/ResultTempTable;->parent:Lorg/h2/result/ResultTempTable;

    iget v0, p1, Lorg/h2/result/ResultTempTable;->columnCount:I

    iput v0, p0, Lorg/h2/result/ResultTempTable;->columnCount:I

    iget-boolean v0, p1, Lorg/h2/result/ResultTempTable;->distinct:Z

    iput-boolean v0, p0, Lorg/h2/result/ResultTempTable;->distinct:Z

    iget-object v0, p1, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    iget-object v0, p1, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    iget-object v0, p1, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    iget v0, p1, Lorg/h2/result/ResultTempTable;->rowCount:I

    iput v0, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    iget-object v0, p1, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    iget-boolean p1, p1, Lorg/h2/result/ResultTempTable;->containsLob:Z

    iput-boolean p1, p0, Lorg/h2/result/ResultTempTable;->containsLob:Z

    invoke-virtual {p0}, Lorg/h2/result/ResultTempTable;->reset()V

    return-void
.end method

.method private declared-synchronized closeChild()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/h2/result/ResultTempTable;->childCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/h2/result/ResultTempTable;->childCount:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/result/ResultTempTable;->closed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/result/ResultTempTable;->dropTable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private convertToRow([Lorg/h2/value/Value;)Lorg/h2/result/Row;
    .locals 2

    array-length v0, p1

    iget v1, p0, Lorg/h2/result/ResultTempTable;->columnCount:I

    if-ge v0, v1, :cond_1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/value/Value;

    array-length p1, p1

    :goto_0
    iget v1, p0, Lorg/h2/result/ResultTempTable;->columnCount:I

    if-ge p1, v1, :cond_0

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Session;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method private createIndex()V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    .line 2
    .line 3
    const-string v1, "DATA"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v3, p0, Lorg/h2/result/ResultTempTable;->distinct:Z

    .line 9
    .line 10
    if-nez v3, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/h2/result/SortOrder;->getQueryColumnIndexes()[I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    array-length v3, v0

    .line 17
    new-array v3, v3, [Lorg/h2/table/IndexColumn;

    .line 18
    .line 19
    :goto_0
    array-length v4, v0

    .line 20
    if-ge v2, v4, :cond_0

    .line 21
    .line 22
    new-instance v4, Lorg/h2/table/IndexColumn;

    .line 23
    .line 24
    invoke-direct {v4}, Lorg/h2/table/IndexColumn;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v5, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    .line 28
    .line 29
    aget v6, v0, v2

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iput-object v5, v4, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 36
    .line 37
    iget-object v5, p0, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    .line 38
    .line 39
    invoke-virtual {v5}, Lorg/h2/result/SortOrder;->getSortTypes()[I

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    aget v5, v5, v2

    .line 44
    .line 45
    iput v5, v4, Lorg/h2/table/IndexColumn;->sortType:I

    .line 46
    .line 47
    invoke-static {v2, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iput-object v5, v4, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    .line 52
    .line 53
    aput-object v4, v3, v2

    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object v8, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    iget v0, p0, Lorg/h2/result/ResultTempTable;->columnCount:I

    .line 61
    .line 62
    new-array v3, v0, [Lorg/h2/table/IndexColumn;

    .line 63
    .line 64
    :goto_1
    iget v0, p0, Lorg/h2/result/ResultTempTable;->columnCount:I

    .line 65
    .line 66
    if-ge v2, v0, :cond_0

    .line 67
    .line 68
    new-instance v0, Lorg/h2/table/IndexColumn;

    .line 69
    .line 70
    invoke-direct {v0}, Lorg/h2/table/IndexColumn;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v4, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    .line 74
    .line 75
    invoke-virtual {v4, v2}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    iput-object v4, v0, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    .line 80
    .line 81
    invoke-static {v2, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iput-object v4, v0, Lorg/h2/table/IndexColumn;->columnName:Ljava/lang/String;

    .line 86
    .line 87
    aput-object v0, v3, v2

    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :goto_2
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    .line 93
    .line 94
    invoke-virtual {v0}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    .line 99
    .line 100
    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    .line 101
    .line 102
    const-string v3, "INDEX_"

    .line 103
    .line 104
    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/schema/Schema;->getUniqueIndexName(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    .line 109
    .line 110
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lorg/h2/engine/Database;->allocateObjectId()I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    const/4 v0, 0x1

    .line 119
    invoke-static {v0}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    iget-object v4, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    .line 124
    .line 125
    iget-object v5, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    .line 126
    .line 127
    const/4 v10, 0x1

    .line 128
    const/4 v11, 0x0

    .line 129
    invoke-virtual/range {v4 .. v11}, Lorg/h2/table/Table;->addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    .line 134
    .line 135
    return-void
.end method

.method private dropTable()V
    .locals 5

    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/h2/result/ResultTempTable;->containsLob:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v3, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    iget-object v4, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v4}, Lorg/h2/table/Table;->truncate(Lorg/h2/engine/Session;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v1}, Lorg/h2/engine/Database;->isSysTableLocked()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    invoke-virtual {v3, v2}, Lorg/h2/table/Table;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    iget-object v3, p0, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v3}, Lorg/h2/engine/Session;->removeLocalTempTableIndex(Lorg/h2/index/Index;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_5

    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v4, 0x0

    :try_start_7
    invoke-virtual {v2, v4}, Lorg/h2/engine/Session;->commit(Z)V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_1

    :catchall_3
    move-exception v4

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v4

    :goto_1
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v1

    :goto_2
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_3
    :goto_3
    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    return-void

    :catchall_4
    move-exception v1

    goto :goto_4

    :catchall_5
    move-exception v3

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    throw v3

    :goto_4
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_5
    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    throw v1
.end method

.method private find(Lorg/h2/result/Row;)Lorg/h2/index/Cursor;
    .locals 6

    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/h2/result/ResultTempTable;->createIndex()V

    :cond_0
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    iget-object v1, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-interface {v0, v1, p1, p1}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p1, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-interface {v1, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addRow([Lorg/h2/value/Value;)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/h2/result/ResultTempTable;->convertToRow([Lorg/h2/value/Value;)Lorg/h2/result/Row;

    move-result-object p1

    iget-boolean v0, p0, Lorg/h2/result/ResultTempTable;->distinct:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/h2/result/ResultTempTable;->find(Lorg/h2/result/Row;)Lorg/h2/index/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, p1}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    iget p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    :cond_1
    iget p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    return p1
.end method

.method public addRows(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/h2/value/Value;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/result/SortOrder;->sort(Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/value/Value;

    invoke-virtual {p0, v0}, Lorg/h2/result/ResultTempTable;->addRow([Lorg/h2/value/Value;)I

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    return p1
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/result/ResultTempTable;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/h2/result/ResultTempTable;->closed:Z

    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->parent:Lorg/h2/result/ResultTempTable;

    if-eqz v0, :cond_1

    invoke-direct {v0}, Lorg/h2/result/ResultTempTable;->closeChild()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/h2/result/ResultTempTable;->childCount:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/h2/result/ResultTempTable;->dropTable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public contains([Lorg/h2/value/Value;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/result/ResultTempTable;->convertToRow([Lorg/h2/value/Value;)Lorg/h2/result/Row;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/result/ResultTempTable;->find(Lorg/h2/result/Row;)Lorg/h2/index/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized createShallowCopy()Lorg/h2/result/ResultExternal;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->parent:Lorg/h2/result/ResultTempTable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/result/ResultTempTable;->createShallowCopy()Lorg/h2/result/ResultExternal;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/h2/result/ResultTempTable;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_2
    iget v0, p0, Lorg/h2/result/ResultTempTable;->childCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/result/ResultTempTable;->childCount:I

    new-instance v0, Lorg/h2/result/ResultTempTable;

    invoke-direct {v0, p0}, Lorg/h2/result/ResultTempTable;-><init>(Lorg/h2/result/ResultTempTable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public done()V
    .locals 0

    return-void
.end method

.method public next()[Lorg/h2/value/Value;
    .locals 7

    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->resultCursor:Lorg/h2/index/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/h2/result/ResultTempTable;->distinct:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->sort:Lorg/h2/result/SortOrder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v2}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->index:Lorg/h2/index/Index;

    :goto_1
    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-interface {v0, v2}, Lorg/h2/index/Index;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    if-lez v2, :cond_2

    invoke-interface {v0, v1, v1, v1}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->resultCursor:Lorg/h2/index/Cursor;

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-interface {v0, v2, v1, v1}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->resultCursor:Lorg/h2/index/Cursor;

    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v0

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->resultCursor:Lorg/h2/index/Cursor;

    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/result/Row;->getValueList()[Lorg/h2/value/Value;

    move-result-object v0

    return-object v0
.end method

.method public removeRow([Lorg/h2/value/Value;)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/h2/result/ResultTempTable;->convertToRow([Lorg/h2/value/Value;)Lorg/h2/result/Row;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/result/ResultTempTable;->find(Lorg/h2/result/Row;)Lorg/h2/index/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/result/ResultTempTable;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/result/ResultTempTable;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, p1}, Lorg/h2/table/Table;->removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    iget p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    :cond_0
    iget p1, p0, Lorg/h2/result/ResultTempTable;->rowCount:I

    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/result/ResultTempTable;->resultCursor:Lorg/h2/index/Cursor;

    return-void
.end method

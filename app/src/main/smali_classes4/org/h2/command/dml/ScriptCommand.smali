.class public Lorg/h2/command/dml/ScriptCommand;
.super Lorg/h2/command/dml/ScriptBase;
.source "SourceFile"


# instance fields
.field private buffer:[B

.field private charset:Ljava/nio/charset/Charset;

.field private data:Z

.field private drop:Z

.field private lineSeparator:[B

.field private lineSeparatorString:Ljava/lang/String;

.field private lobBlockSize:I

.field private nextLobId:I

.field private passwords:Z

.field private result:Lorg/h2/result/LocalResult;

.field private schemaNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Z

.field private simple:Z

.field private tables:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field

.field private tempLobTableCreated:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/dml/ScriptBase;-><init>(Lorg/h2/engine/Session;)V

    sget-object p1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->charset:Ljava/nio/charset/Charset;

    const/16 p1, 0x1000

    iput p1, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    return-void
.end method

.method private add(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v2, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    .line 7
    .line 8
    array-length v3, v2

    .line 9
    if-gt v3, v1, :cond_1

    .line 10
    .line 11
    aget-byte v2, v2, v0

    .line 12
    .line 13
    const/16 v3, 0xa

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    :cond_1
    const-string v2, "\n"

    .line 18
    .line 19
    iget-object v3, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparatorString:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_2
    const-string v2, ";"

    .line 26
    .line 27
    invoke-static {p1, v2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v2, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    .line 32
    .line 33
    if-eqz v2, :cond_6

    .line 34
    .line 35
    iget-object v2, p0, Lorg/h2/command/dml/ScriptCommand;->charset:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    array-length v3, v2

    .line 42
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    .line 43
    .line 44
    array-length v4, v4

    .line 45
    add-int/2addr v3, v4

    .line 46
    const/16 v4, 0x10

    .line 47
    .line 48
    invoke-static {v3, v4}, Lorg/h2/util/MathUtils;->roundUpInt(II)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 53
    .line 54
    invoke-static {v2, v4}, Lorg/h2/util/Utils;->copy([B[B)[B

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iput-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 59
    .line 60
    array-length v4, v4

    .line 61
    if-le v3, v4, :cond_3

    .line 62
    .line 63
    new-array v4, v3, [B

    .line 64
    .line 65
    iput-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 66
    .line 67
    :cond_3
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 68
    .line 69
    array-length v5, v2

    .line 70
    invoke-static {v2, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    array-length v2, v2

    .line 74
    :goto_0
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    .line 75
    .line 76
    array-length v5, v4

    .line 77
    sub-int v5, v3, v5

    .line 78
    .line 79
    if-ge v2, v5, :cond_4

    .line 80
    .line 81
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 82
    .line 83
    const/16 v5, 0x20

    .line 84
    .line 85
    aput-byte v5, v4, v2

    .line 86
    .line 87
    add-int/2addr v2, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    array-length v2, v4

    .line 90
    sub-int v2, v3, v2

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    :goto_1
    if-ge v2, v3, :cond_5

    .line 94
    .line 95
    iget-object v5, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 96
    .line 97
    iget-object v6, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    .line 98
    .line 99
    aget-byte v6, v6, v4

    .line 100
    .line 101
    aput-byte v6, v5, v2

    .line 102
    .line 103
    add-int/2addr v2, v1

    .line 104
    add-int/2addr v4, v1

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    iget-object v2, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    .line 107
    .line 108
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 109
    .line 110
    invoke-virtual {v2, v4, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    .line 112
    .line 113
    if-nez p2, :cond_7

    .line 114
    .line 115
    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-array p2, v1, [Lorg/h2/value/Value;

    .line 120
    .line 121
    aput-object p1, p2, v0

    .line 122
    .line 123
    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_6
    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-array p2, v1, [Lorg/h2/value/Value;

    .line 134
    .line 135
    aput-object p1, p2, v0

    .line 136
    .line 137
    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    :goto_2
    return-void
.end method

.method public static combineBlob(Ljava/sql/Connection;I)Ljava/io/InputStream;
    .locals 1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "BDATA"

    invoke-static {p0, v0, p1}, Lorg/h2/command/dml/ScriptCommand;->getLobStream(Ljava/sql/Connection;Ljava/lang/String;I)Ljava/sql/ResultSet;

    move-result-object p0

    new-instance p1, Lorg/h2/command/dml/ScriptCommand$3;

    invoke-direct {p1, p0}, Lorg/h2/command/dml/ScriptCommand$3;-><init>(Ljava/sql/ResultSet;)V

    return-object p1
.end method

.method public static combineClob(Ljava/sql/Connection;I)Ljava/io/Reader;
    .locals 1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "CDATA"

    invoke-static {p0, v0, p1}, Lorg/h2/command/dml/ScriptCommand;->getLobStream(Ljava/sql/Connection;Ljava/lang/String;I)Ljava/sql/ResultSet;

    move-result-object p0

    new-instance p1, Lorg/h2/command/dml/ScriptCommand$4;

    invoke-direct {p1, p0}, Lorg/h2/command/dml/ScriptCommand$4;-><init>(Ljava/sql/ResultSet;)V

    return-object p1
.end method

.method private createResult()Lorg/h2/result/LocalResult;
    .locals 5

    new-instance v0, Lorg/h2/expression/ExpressionColumn;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "SCRIPT"

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Lorg/h2/table/Column;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/h2/expression/Expression;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Lorg/h2/result/LocalResult;

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v3, v2, v1}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    return-object v0
.end method

.method private excludeSchema(Lorg/h2/schema/Schema;)Z
    .locals 4

    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->schemaNames:Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->tables:Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/h2/schema/Schema;->getAllTablesAndViews()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/Table;

    iget-object v3, p0, Lorg/h2/command/dml/ScriptCommand;->tables:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method private excludeTable(Lorg/h2/table/Table;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->tables:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private generateInsertValues(ILorg/h2/table/Table;)I
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v7}, Lorg/h2/table/Table;->getBestPlanItem(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)Lorg/h2/table/PlanItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/table/PlanItem;->getIndex()Lorg/h2/index/Index;

    move-result-object v1

    iget-object v2, v0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-interface {v1, v2, v3, v3}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v2

    new-instance v4, Lorg/h2/util/StatementBuilder;

    const-string v5, "INSERT INTO "

    invoke-direct {v4, v5}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v5

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    array-length v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const-string v9, ", "

    if-ge v8, v5, :cond_0

    aget-object v10, v2, v8

    invoke-virtual {v4, v9}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-string v2, ") VALUES"

    invoke-virtual {v4, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-boolean v2, v0, Lorg/h2/command/dml/ScriptCommand;->simple:Z

    if-nez v2, :cond_1

    const/16 v2, 0xa

    invoke-virtual {v4, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :cond_1
    invoke-virtual {v4, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v4}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v4, p1

    :goto_1
    move-object v5, v3

    :cond_2
    invoke-interface {v1}, Lorg/h2/index/Cursor;->next()Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_a

    invoke-interface {v1}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v6

    if-nez v5, :cond_3

    new-instance v5, Lorg/h2/util/StatementBuilder;

    invoke-direct {v5, v2}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v10, ",\n("

    invoke-virtual {v5, v10}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_2
    const/4 v10, 0x0

    :goto_3
    invoke-interface {v6}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v11

    if-ge v10, v11, :cond_7

    if-lez v10, :cond_4

    invoke-virtual {v5, v9}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_4
    invoke-interface {v6, v10}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v11

    invoke-virtual {v11}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v12

    iget v14, v0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    int-to-long v14, v14

    cmp-long v16, v12, v14

    if-lez v16, :cond_6

    invoke-virtual {v11}, Lorg/h2/value/Value;->getType()I

    move-result v12

    const/16 v13, 0x10

    const-string v14, ")"

    if-ne v12, v13, :cond_5

    invoke-direct {v0, v11}, Lorg/h2/command/dml/ScriptCommand;->writeLobStream(Lorg/h2/value/Value;)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "SYSTEM_COMBINE_CLOB("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_5
    invoke-virtual {v5, v11}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_6

    :cond_5
    invoke-virtual {v11}, Lorg/h2/value/Value;->getType()I

    move-result v12

    const/16 v13, 0xf

    if-ne v12, v13, :cond_6

    invoke-direct {v0, v11}, Lorg/h2/command/dml/ScriptCommand;->writeLobStream(Lorg/h2/value/Value;)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "SYSTEM_COMBINE_BLOB("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v11}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v6, v4, 0x7f

    if-nez v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/h2/command/Prepared;->checkCanceled()V

    :cond_8
    iget-boolean v6, v0, Lorg/h2/command/dml/ScriptCommand;->simple:Z

    if-nez v6, :cond_9

    invoke-virtual {v5}, Lorg/h2/util/StatementBuilder;->length()I

    move-result v6

    const/16 v10, 0x1000

    if-le v6, v10, :cond_2

    :cond_9
    invoke-virtual {v5}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v8}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_b
    return v4
.end method

.method private static getLobStream(Ljava/sql/Connection;Ljava/lang/String;I)Ljava/sql/ResultSet;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " FROM SYSTEM_LOB_STREAM WHERE ID=? ORDER BY PART"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p0

    return-object p0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    sget-object v0, Lorg/h2/engine/SysProperties;->LINE_SEPARATOR:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparatorString:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/command/dml/ScriptCommand;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    return-void
.end method

.method private writeLobStream(Lorg/h2/value/Value;)I
    .locals 10

    iget-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand;->tempLobTableCreated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "CREATE TABLE IF NOT EXISTS SYSTEM_LOB_STREAM(ID INT NOT NULL, PART INT NOT NULL, CDATA VARCHAR, BDATA BINARY)"

    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    const-string v0, "CREATE PRIMARY KEY SYSTEM_LOB_STREAM_PRIMARY_KEY ON SYSTEM_LOB_STREAM(ID, PART)"

    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CREATE ALIAS IF NOT EXISTS SYSTEM_COMBINE_CLOB FOR \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".combineClob\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CREATE ALIAS IF NOT EXISTS SYSTEM_COMBINE_BLOB FOR \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".combineBlob\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lorg/h2/command/dml/ScriptCommand;->tempLobTableCreated:Z

    :cond_0
    iget v0, p0, Lorg/h2/command/dml/ScriptCommand;->nextLobId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/h2/command/dml/ScriptCommand;->nextLobId:I

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v2

    const/16 v3, 0xf

    const-string v4, "INSERT INTO SYSTEM_LOB_STREAM VALUES("

    const-string v5, ", "

    const/4 v6, 0x0

    if-eq v2, v3, :cond_4

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_3

    :cond_1
    iget v2, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    new-array v2, v2, [C

    invoke-virtual {p1}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object p1

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    invoke-static {p1, v2, v8}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/Reader;[CI)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    goto :goto_3

    :cond_2
    :try_start_1
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2, v6, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v9}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", NULL)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    :cond_4
    iget v2, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    new-array v2, v2, [B

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", NULL, \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    invoke-static {p1, v2, v7}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-gtz v7, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_5
    :goto_3
    return v0

    :cond_6
    :try_start_5
    invoke-static {v2, v7}, Lorg/h2/util/StringUtils;->convertBytesToHex([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\')"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz p1, :cond_7

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v1
.end method


# virtual methods
.method public bridge synthetic checkPowerOff()V
    .locals 0

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->checkPowerOff()V

    return-void
.end method

.method public bridge synthetic checkWritingAllowed()V
    .locals 0

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->checkWritingAllowed()V

    return-void
.end method

.method public bridge synthetic getCompareMode()Lorg/h2/value/CompareMode;
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDatabasePath()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLobCompressionAlgorithm(I)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLobFileListCache()Lorg/h2/util/SmallLRUCache;
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getLobFileListCache()Lorg/h2/util/SmallLRUCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLobStorage()Lorg/h2/store/LobStorageBackend;
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getLobStorage()Lorg/h2/store/LobStorageBackend;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLobSyncObject()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getLobSyncObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaxLengthInplaceLob()I
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getMaxLengthInplaceLob()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTempFileDeleter()Lorg/h2/util/TempFileDeleter;
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x41

    return v0
.end method

.method public isQuery()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic isTransactional()Z
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->isTransactional()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic needRecompile()Z
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->needRecompile()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/h2/command/dml/ScriptBase;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object p1

    return-object p1
.end method

.method public query(I)Lorg/h2/result/ResultInterface;
    .locals 10

    iget-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/ScriptCommand;->reset()V

    iget-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->schemaNames:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x15fdf

    invoke-static {p1, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/h2/command/dml/ScriptCommand;->createResult()Lorg/h2/result/LocalResult;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->deleteStore()V

    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->openOutput()V

    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_14

    :catch_0
    move-exception p1

    goto/16 :goto_13

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand;->settings:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllSettings()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Setting;

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    invoke-static {v4}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lorg/h2/engine/Setting;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const-string v0, ""

    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/User;

    iget-boolean v4, p0, Lorg/h2/command/dml/ScriptCommand;->passwords:Z

    invoke-virtual {v3, v4}, Lorg/h2/engine/User;->getCreateSQL(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllRoles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/Role;

    invoke-virtual {v3, v2}, Lorg/h2/engine/Role;->getCreateSQL(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllSchemas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/schema/Schema;

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Lorg/h2/schema/Schema;->getCreateSQL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllUserDataTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/UserDataType;

    iget-boolean v4, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lorg/h2/engine/UserDataType;->getDropSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_a
    invoke-virtual {v3}, Lorg/h2/engine/UserDataType;->getCreateSQL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_b
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/schema/SchemaObject;

    invoke-interface {v3}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_7

    :cond_c
    check-cast v3, Lorg/h2/schema/Constant;

    invoke-virtual {v3}, Lorg/h2/schema/Constant;->getCreateSQL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_7

    :cond_d
    invoke-virtual {p1, v1}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Lorg/h2/command/dml/ScriptCommand$1;

    invoke-direct {v3, p0}, Lorg/h2/command/dml/ScriptCommand$1;-><init>(Lorg/h2/command/dml/ScriptCommand;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/table/Table;

    invoke-virtual {v4}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_8

    :cond_f
    invoke-direct {p0, v4}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v4}, Lorg/h2/table/Table;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_8

    :cond_11
    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v5, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    invoke-virtual {v4}, Lorg/h2/engine/DbObjectBase;->getCreateSQL()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12

    goto :goto_8

    :cond_12
    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Lorg/h2/engine/DbObjectBase;->getDropSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_8

    :cond_13
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/schema/SchemaObject;

    invoke-interface {v4}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_9

    :cond_14
    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v5, :cond_15

    invoke-interface {v4}, Lorg/h2/engine/DbObject;->getDropSQL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_15
    invoke-interface {v4}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_9

    :cond_16
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllAggregates()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/engine/UserAggregate;

    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v5, :cond_17

    invoke-virtual {v4}, Lorg/h2/engine/UserAggregate;->getDropSQL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_17
    invoke-virtual {v4}, Lorg/h2/engine/UserAggregate;->getCreateSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_a

    :cond_18
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/schema/SchemaObject;

    invoke-interface {v4}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_b

    :cond_19
    check-cast v4, Lorg/h2/schema/Sequence;

    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v5, :cond_1a

    invoke-virtual {v4}, Lorg/h2/schema/Sequence;->getDropSQL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_1a
    invoke-virtual {v4}, Lorg/h2/schema/Sequence;->getCreateSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_b

    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_1c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "PRIMARY KEY"

    if-eqz v4, :cond_26

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/table/Table;

    invoke-virtual {v4}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_c

    :cond_1d
    invoke-direct {p0, v4}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_c

    :cond_1e
    invoke-virtual {v4}, Lorg/h2/table/Table;->isHidden()Z

    move-result v6

    if-eqz v6, :cond_1f

    goto :goto_c

    :cond_1f
    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v6, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    invoke-virtual {v4}, Lorg/h2/engine/DbObjectBase;->getCreateSQL()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_20

    goto :goto_c

    :cond_20
    invoke-virtual {v4}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v7

    invoke-direct {p0, v6, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    invoke-virtual {v4}, Lorg/h2/table/Table;->getConstraints()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_22

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_21
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/constraint/Constraint;

    invoke-virtual {v8}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-virtual {v8}, Lorg/h2/constraint/Constraint;->getCreateSQLWithoutIndexes()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_d

    :cond_22
    sget-object v5, Lorg/h2/table/TableType;->TABLE:Lorg/h2/table/TableType;

    if-ne v5, v7, :cond_24

    invoke-virtual {v4}, Lorg/h2/table/Table;->canGetRowCount()Z

    move-result v5

    if-eqz v5, :cond_23

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/h2/table/Table;->getRowCountApproximation()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " +/- SELECT COUNT(*) FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_23
    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->data:Z

    if-eqz v5, :cond_24

    invoke-direct {p0, v3, v4}, Lorg/h2/command/dml/ScriptCommand;->generateInsertValues(ILorg/h2/table/Table;)I

    move-result v3

    :cond_24
    invoke-virtual {v4}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    :goto_e
    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1c

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/index/Index;

    invoke-interface {v6}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/index/IndexType;->getBelongsToConstraint()Z

    move-result v7

    if-nez v7, :cond_25

    invoke-interface {v6}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_26
    iget-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand;->tempLobTableCreated:Z

    if-eqz v0, :cond_27

    const-string v0, "DROP TABLE IF EXISTS SYSTEM_LOB_STREAM"

    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    const-string v0, "CALL SYSTEM_COMBINE_BLOB(-1)"

    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    const-string v0, "DROP ALIAS IF EXISTS SYSTEM_COMBINE_CLOB"

    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    const-string v0, "DROP ALIAS IF EXISTS SYSTEM_COMBINE_BLOB"

    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lorg/h2/command/dml/ScriptCommand;->tempLobTableCreated:Z

    :cond_27
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lorg/h2/command/dml/ScriptCommand$2;

    invoke-direct {v2, p0}, Lorg/h2/command/dml/ScriptCommand$2;-><init>(Lorg/h2/command/dml/ScriptCommand;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/SchemaObject;

    invoke-interface {v2}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_f

    :cond_29
    check-cast v2, Lorg/h2/constraint/Constraint;

    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_f

    :cond_2a
    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_f

    :cond_2b
    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getCreateSQLWithoutIndexes()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_f

    :cond_2c
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/SchemaObject;

    invoke-interface {v2}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_10

    :cond_2d
    check-cast v2, Lorg/h2/schema/TriggerObject;

    invoke-virtual {v2}, Lorg/h2/schema/TriggerObject;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_10

    :cond_2e
    invoke-virtual {v2}, Lorg/h2/schema/TriggerObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_10

    :cond_2f
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Right;

    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantedObject()Lorg/h2/engine/DbObject;

    move-result-object v3

    if-eqz v3, :cond_32

    instance-of v4, v3, Lorg/h2/schema/Schema;

    if-eqz v4, :cond_30

    check-cast v3, Lorg/h2/schema/Schema;

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_11

    :cond_30
    instance-of v4, v3, Lorg/h2/table/Table;

    if-eqz v4, :cond_32

    check-cast v3, Lorg/h2/table/Table;

    invoke-virtual {v3}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v4

    if-eqz v4, :cond_31

    goto :goto_11

    :cond_31
    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_11

    :cond_32
    invoke-virtual {v2}, Lorg/h2/engine/Right;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_11

    :cond_33
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllComments()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/Comment;

    invoke-virtual {v0}, Lorg/h2/engine/Comment;->getCreateSQL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_12

    :cond_34
    iget-object p1, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_35
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->closeIO()V

    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    invoke-virtual {p1}, Lorg/h2/result/LocalResult;->done()V

    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    invoke-direct {p0}, Lorg/h2/command/dml/ScriptCommand;->reset()V

    return-object p1

    :goto_13
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_14
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->closeIO()V

    throw p1
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    invoke-direct {p0}, Lorg/h2/command/dml/ScriptCommand;->createResult()Lorg/h2/result/LocalResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->done()V

    return-object v0
.end method

.method public bridge synthetic readLob(J[BJ[BII)I
    .locals 0

    invoke-super/range {p0 .. p8}, Lorg/h2/command/dml/ScriptBase;->readLob(J[BJ[BII)I

    move-result p1

    return p1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public bridge synthetic setCipher(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setCipher(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCompressionAlgorithm(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setCompressionAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public setData(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->data:Z

    return-void
.end method

.method public setDrop(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    return-void
.end method

.method public bridge synthetic setFileNameExpr(Lorg/h2/expression/Expression;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setFileNameExpr(Lorg/h2/expression/Expression;)V

    return-void
.end method

.method public setLobBlockSize(J)V
    .locals 0

    invoke-static {p1, p2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result p1

    iput p1, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    return-void
.end method

.method public bridge synthetic setPassword(Lorg/h2/expression/Expression;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setPassword(Lorg/h2/expression/Expression;)V

    return-void
.end method

.method public setPasswords(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->passwords:Z

    return-void
.end method

.method public setSchemaNames(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->schemaNames:Ljava/util/Set;

    return-void
.end method

.method public setSettings(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->settings:Z

    return-void
.end method

.method public setSimple(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->simple:Z

    return-void
.end method

.method public setTables(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/h2/table/Table;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->tables:Ljava/util/Collection;

    return-void
.end method

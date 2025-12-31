.class public Lorg/h2/table/TableLink;
.super Lorg/h2/table/Table;
.source "SourceFile"


# static fields
.field private static final MAX_RETRY:I = 0x2

.field private static final ROW_COUNT_APPROXIMATION:J = 0x186a0L


# instance fields
.field private conn:Lorg/h2/table/TableLinkConnection;

.field private connectException:Lorg/h2/message/DbException;

.field private driver:Ljava/lang/String;

.field private final emitUpdates:Z

.field private globalTemporary:Z

.field private final indexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation
.end field

.field private linkedIndex:Lorg/h2/index/LinkedIndex;

.field private final originalSchema:Ljava/lang/String;

.field private originalTable:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private preparedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/sql/PreparedStatement;",
            ">;"
        }
    .end annotation
.end field

.field private qualifiedTableName:Ljava/lang/String;

.field private readOnly:Z

.field private storesLowerCase:Z

.field private storesMixedCase:Z

.field private storesMixedCaseQuoted:Z

.field private supportsMixedCaseIdentifiers:Z

.field private url:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    move-object v7, p0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/h2/table/Table;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;ZZ)V

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v7, Lorg/h2/table/TableLink;->preparedMap:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v7, Lorg/h2/table/TableLink;->indexes:Ljava/util/ArrayList;

    move-object v0, p4

    iput-object v0, v7, Lorg/h2/table/TableLink;->driver:Ljava/lang/String;

    move-object v0, p5

    iput-object v0, v7, Lorg/h2/table/TableLink;->url:Ljava/lang/String;

    move-object v0, p6

    iput-object v0, v7, Lorg/h2/table/TableLink;->user:Ljava/lang/String;

    move-object v0, p7

    iput-object v0, v7, Lorg/h2/table/TableLink;->password:Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, v7, Lorg/h2/table/TableLink;->originalSchema:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, v7, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    move/from16 v0, p10

    iput-boolean v0, v7, Lorg/h2/table/TableLink;->emitUpdates:Z

    :try_start_0
    invoke-direct {p0}, Lorg/h2/table/TableLink;->connect()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    if-eqz p11, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/h2/table/Column;

    invoke-virtual {p0, v1}, Lorg/h2/table/Table;->setColumns([Lorg/h2/table/Column;)V

    new-instance v2, Lorg/h2/index/LinkedIndex;

    invoke-static {v1}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v1

    invoke-static {v0}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v0

    move v3, p2

    invoke-direct {v2, p0, p2, v1, v0}, Lorg/h2/index/LinkedIndex;-><init>(Lorg/h2/table/TableLink;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object v2, v7, Lorg/h2/table/TableLink;->linkedIndex:Lorg/h2/index/LinkedIndex;

    iget-object v0, v7, Lorg/h2/table/TableLink;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    throw v1
.end method

.method private addIndex(Ljava/util/List;Lorg/h2/index/IndexType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/h2/table/Column;",
            ">;",
            "Lorg/h2/index/IndexType;",
            ")V"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    const-string p2, "Omitting linked index - no recognized columns."

    invoke-virtual {p1, p2}, Lorg/h2/message/Trace;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v0

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v3, "Unrecognized columns in linked index. Registering the index against the leading {0} recognized columns of {1} total columns."

    invoke-virtual {v2, v3, v5}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/table/Column;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p1, Lorg/h2/index/LinkedIndex;

    invoke-static {v1}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1, p2}, Lorg/h2/index/LinkedIndex;-><init>(Lorg/h2/table/TableLink;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iget-object p2, p0, Lorg/h2/table/TableLink;->indexes:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkReadOnly()V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/TableLink;->readOnly:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15ff1

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private connect()V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/table/TableLink;->connectException:Lorg/h2/message/DbException;

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    iget-object v3, p0, Lorg/h2/table/TableLink;->driver:Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/table/TableLink;->url:Ljava/lang/String;

    iget-object v5, p0, Lorg/h2/table/TableLink;->user:Ljava/lang/String;

    iget-object v6, p0, Lorg/h2/table/TableLink;->password:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/h2/engine/Database;->getLinkConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/table/TableLinkConnection;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    monitor-enter v2
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Lorg/h2/table/TableLink;->readMetaData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    iget-object v4, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/h2/table/TableLinkConnection;->close(Z)V

    iput-object v0, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    invoke-static {v3}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v3

    throw v3

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Lorg/h2/message/DbException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v2

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lorg/h2/table/TableLink;->connectException:Lorg/h2/message/DbException;

    throw v2
.end method

.method private convertColumnName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/h2/table/TableLink;->storesMixedCase:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/table/TableLink;->storesLowerCase:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lorg/h2/table/TableLink;->storesMixedCase:Z

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/h2/table/TableLink;->supportsMixedCaseIdentifiers:Z

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/h2/table/TableLink;->storesMixedCaseQuoted:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method

.method private static convertPrecision(IJ)J
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-wide/16 v0, 0x17

    :goto_0
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_1

    :pswitch_1
    const-wide/16 v0, 0x6

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0x8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-nez p0, :cond_1

    const-wide/32 p1, 0xffff

    :cond_1
    :goto_1
    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertScale(II)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/16 p1, 0x7fff

    :cond_1
    :goto_0
    return p1
.end method

.method private readMetaData()V
    .locals 25

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    invoke-virtual {v0}, Lorg/h2/table/TableLinkConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->storesLowerCaseIdentifiers()Z

    move-result v0

    iput-boolean v0, v1, Lorg/h2/table/TableLink;->storesLowerCase:Z

    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->storesMixedCaseIdentifiers()Z

    move-result v0

    iput-boolean v0, v1, Lorg/h2/table/TableLink;->storesMixedCase:Z

    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->storesMixedCaseQuotedIdentifiers()Z

    move-result v0

    iput-boolean v0, v1, Lorg/h2/table/TableLink;->storesMixedCaseQuoted:Z

    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->supportsMixedCaseIdentifiers()Z

    move-result v0

    iput-boolean v0, v1, Lorg/h2/table/TableLink;->supportsMixedCaseIdentifiers:Z

    iget-object v0, v1, Lorg/h2/table/TableLink;->originalSchema:Ljava/lang/String;

    iget-object v3, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v2, v8, v0, v3, v8}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fe0

    iget-object v2, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    iget-object v0, v1, Lorg/h2/table/TableLink;->originalSchema:Ljava/lang/String;

    iget-object v3, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    invoke-interface {v2, v8, v0, v3, v8}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v9

    const/4 v10, 0x0

    move-object v4, v8

    move-object v5, v4

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v7

    const-string v11, "COLUMN_NAME"

    if-eqz v7, :cond_6

    const-string v7, "TABLE_CAT"

    invoke-interface {v0, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v4, :cond_2

    move-object v4, v7

    :cond_2
    const-string v12, "TABLE_SCHEM"

    invoke-interface {v0, v12}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v5, :cond_3

    move-object v5, v12

    :cond_3
    invoke-static {v4, v7}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v5, v12}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0, v11}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/h2/table/TableLink;->convertColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "DATA_TYPE"

    invoke-interface {v0, v11}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "TYPE_NAME"

    invoke-interface {v0, v12}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "COLUMN_SIZE"

    invoke-interface {v0, v13}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v13

    int-to-long v13, v13

    invoke-static {v11, v13, v14}, Lorg/h2/table/TableLink;->convertPrecision(IJ)J

    move-result-wide v14

    const-string v13, "DECIMAL_DIGITS"

    invoke-interface {v0, v13}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v11, v13}, Lorg/h2/table/TableLink;->convertScale(II)I

    move-result v16

    invoke-static {v14, v15}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v17

    invoke-static {v11, v12}, Lorg/h2/value/DataType;->convertSQLTypeToValueType(ILjava/lang/String;)I

    move-result v13

    new-instance v12, Lorg/h2/table/Column;

    move-object v11, v12

    move-object v8, v12

    move-object v12, v7

    invoke-direct/range {v11 .. v17}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v8, v1, v6}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v11

    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_6
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    iget-object v0, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_7

    invoke-static {v5}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "."

    .line 1
    invoke-static {v5, v0}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v4, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, v1, Lorg/h2/table/TableLink;->qualifiedTableName:Ljava/lang/String;

    goto :goto_4

    :cond_7
    iget-object v0, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    goto :goto_3

    :goto_4
    :try_start_0
    iget-object v0, v1, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    invoke-virtual {v0}, Lorg/h2/table/TableLinkConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/h2/table/TableLink;->qualifiedTableName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " T WHERE 1=0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v5

    const/4 v6, 0x0

    :goto_5
    invoke-interface {v5}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v7

    if-ge v6, v7, :cond_8

    add-int/lit8 v7, v6, 0x1

    invoke-interface {v5, v7}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/h2/table/TableLink;->convertColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v12

    invoke-interface {v5, v7}, Ljava/sql/ResultSetMetaData;->getPrecision(I)I

    move-result v13

    int-to-long v13, v13

    invoke-static {v12, v13, v14}, Lorg/h2/table/TableLink;->convertPrecision(IJ)J

    move-result-wide v21

    invoke-interface {v5, v7}, Ljava/sql/ResultSetMetaData;->getScale(I)I

    move-result v13

    invoke-static {v12, v13}, Lorg/h2/table/TableLink;->convertScale(II)I

    move-result v23

    invoke-interface {v5, v7}, Ljava/sql/ResultSetMetaData;->getColumnDisplaySize(I)I

    move-result v24

    invoke-static {v5, v7}, Lorg/h2/value/DataType;->getValueTypeFromResultSet(Ljava/sql/ResultSetMetaData;I)I

    move-result v20

    new-instance v12, Lorg/h2/table/Column;

    move-object/from16 v18, v12

    move-object/from16 v19, v8

    invoke-direct/range {v18 .. v24}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    invoke-virtual {v12, v1, v6}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v7

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_e

    :cond_8
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/table/Column;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lorg/h2/table/Table;->setColumns([Lorg/h2/table/Column;)V

    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v3

    new-instance v4, Lorg/h2/index/LinkedIndex;

    invoke-static {v0}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v0

    invoke-static {v10}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v5

    invoke-direct {v4, v1, v3, v0, v5}, Lorg/h2/index/LinkedIndex;-><init>(Lorg/h2/table/TableLink;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object v4, v1, Lorg/h2/table/TableLink;->linkedIndex:Lorg/h2/index/LinkedIndex;

    iget-object v0, v1, Lorg/h2/table/TableLink;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_3
    iget-object v0, v1, Lorg/h2/table/TableLink;->originalSchema:Ljava/lang/String;

    iget-object v3, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0, v3}, Ljava/sql/DatabaseMetaData;->getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v0

    goto :goto_6

    :catch_0
    nop

    const/4 v4, 0x0

    :goto_6
    const-string v0, ""

    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    :cond_9
    const-string v5, "KEY_SEQ"

    invoke-interface {v4, v5}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v0, :cond_a

    const-string v0, "PK_NAME"

    invoke-interface {v4, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    if-ge v6, v5, :cond_b

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    invoke-interface {v4, v11}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/h2/table/TableLink;->convertColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Column;

    if-nez v5, :cond_c

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_8
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v10, v10}, Lorg/h2/index/IndexType;->createPrimaryKey(ZZ)Lorg/h2/index/IndexType;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lorg/h2/table/TableLink;->addIndex(Ljava/util/List;Lorg/h2/index/IndexType;)V

    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    :goto_9
    :try_start_4
    iget-object v4, v1, Lorg/h2/table/TableLink;->originalSchema:Ljava/lang/String;

    iget-object v5, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-interface/range {v2 .. v7}, Ljava/sql/DatabaseMetaData;->getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_a

    :catch_1
    nop

    move-object v4, v8

    :goto_a
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v4, :cond_14

    move-object v3, v8

    move-object v5, v3

    :goto_b
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "TYPE"

    invoke-interface {v4, v6}, Ljava/sql/ResultSet;->getShort(Ljava/lang/String;)S

    move-result v6

    if-nez v6, :cond_e

    goto :goto_b

    :cond_e
    const-string v6, "INDEX_NAME"

    invoke-interface {v4, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_b

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-direct {v1, v2, v5}, Lorg/h2/table/TableLink;->addIndex(Ljava/util/List;Lorg/h2/index/IndexType;)V

    move-object v3, v8

    :cond_10
    if-nez v3, :cond_11

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object v3, v6

    :cond_11
    const-string v5, "NON_UNIQUE"

    invoke-interface {v4, v5}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_12

    invoke-static {v10, v10}, Lorg/h2/index/IndexType;->createUnique(ZZ)Lorg/h2/index/IndexType;

    move-result-object v5

    goto :goto_c

    :cond_12
    invoke-static {v10}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v5

    :goto_c
    invoke-interface {v4, v11}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/h2/table/TableLink;->convertColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/table/Column;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_13
    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V

    move-object v8, v3

    goto :goto_d

    :cond_14
    move-object v5, v8

    :goto_d
    if-eqz v8, :cond_15

    invoke-direct {v1, v2, v5}, Lorg/h2/table/TableLink;->addIndex(Ljava/util/List;Lorg/h2/index/IndexType;)V

    :cond_15
    return-void

    :catch_2
    move-exception v0

    goto :goto_10

    :goto_e
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v4, :cond_16

    :try_start_6
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_7
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_16
    :goto_f
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const v3, 0xa476

    invoke-static {v3, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public static wrapException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/h2/message/DbException;
    .locals 1

    invoke-static {p1}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    const v0, 0x15fff

    invoke-static {v0, p1, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;
    .locals 0

    .line 1
    const-string p1, "LINK"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/table/TableLink;->checkReadOnly()V

    invoke-virtual {p0, p1}, Lorg/h2/table/TableLink;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/h2/index/Index;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    return-void
.end method

.method public canDrop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canGetRowCount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public checkSupportAlter()V
    .locals 1

    const-string v0, "LINK"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkWritingAllowed()V
    .locals 0

    return-void
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object p1, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/h2/table/TableLinkConnection;->close(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v1, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/sql/PreparedStatement;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/Value;",
            ">;Z)",
            "Ljava/sql/PreparedStatement;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    monitor-enter v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lorg/h2/table/TableLink;->preparedMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/sql/PreparedStatement;

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    invoke-virtual {v4}, Lorg/h2/table/TableLinkConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception v4

    goto/16 :goto_4

    :cond_0
    :goto_1
    iget-object v5, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v5}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lorg/h2/util/StatementBuilder;

    invoke-direct {v5}, Lorg/h2/util/StatementBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v6

    const-string v7, ":\n"

    invoke-virtual {v6, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    const-string v6, " {"

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/value/Value;

    const-string v9, ", "

    invoke-virtual {v5, v9}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    add-int/lit8 v9, v7, 0x1

    int-to-long v10, v7

    invoke-virtual {v5, v10, v11}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    move-result-object v7

    const-string v10, ": "

    invoke-virtual {v7, v10}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v7

    invoke-virtual {v8}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move v7, v9

    goto :goto_2

    :cond_1
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :cond_2
    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    iget-object v6, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v5}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_4

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/value/Value;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7, v4, v6}, Lorg/h2/value/Value;->set(Ljava/sql/PreparedStatement;I)V

    goto :goto_3

    :cond_4
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->execute()Z

    if-eqz p3, :cond_5

    invoke-virtual {p0, v4, p1}, Lorg/h2/table/TableLink;->reusePreparedStatement(Ljava/sql/PreparedStatement;Ljava/lang/String;)V

    monitor-exit v3

    const/4 p1, 0x0

    return-object p1

    :cond_5
    monitor-exit v3

    return-object v4

    :goto_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    const/4 v4, 0x2

    if-ge v1, v4, :cond_6

    iget-object v3, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    invoke-virtual {v3, v2}, Lorg/h2/table/TableLinkConnection;->close(Z)V

    invoke-direct {p0}, Lorg/h2/table/TableLink;->connect()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-static {v3}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_7
    iget-object p1, p0, Lorg/h2/table/TableLink;->connectException:Lorg/h2/message/DbException;

    throw p1
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE FORCE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/h2/table/TableLink;->globalTemporary:Z

    if-eqz v1, :cond_0

    const-string v1, "GLOBAL "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v1, "LOCAL "

    goto :goto_0

    :goto_1
    const-string v1, "TEMPORARY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "LINKED TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->comment:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " COMMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->comment:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/TableLink;->driver:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/table/TableLink;->url:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/table/TableLink;->user:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/table/TableLink;->password:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/h2/table/TableLink;->emitUpdates:Z

    if-eqz v1, :cond_3

    const-string v1, " EMIT UPDATES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lorg/h2/table/TableLink;->readOnly:Z

    if-eqz v1, :cond_4

    const-string v1, " READONLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, " /*--hide--*/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue(Lorg/h2/engine/Session;Lorg/h2/table/Column;)Lorg/h2/value/Value;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/table/TableLink;->indexes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxDataModificationId()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getQualifiedTable()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/TableLink;->qualifiedTableName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getRowCount(Lorg/h2/engine/Session;)J
    .locals 4

    const-string p1, "SELECT COUNT(*) FROM "

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/h2/table/TableLink;->qualifiedTableName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as foo"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0, v1}, Lorg/h2/table/TableLink;->execute(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v2

    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    invoke-virtual {p0, v0, p1}, Lorg/h2/table/TableLink;->reusePreparedStatement(Ljava/sql/PreparedStatement;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {p1, v0}, Lorg/h2/table/TableLink;->wrapException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public getRowCountApproximation()J
    .locals 2

    const-wide/32 v0, 0x186a0

    return-wide v0
.end method

.method public getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
    .locals 0

    iget-object p1, p0, Lorg/h2/table/TableLink;->linkedIndex:Lorg/h2/index/LinkedIndex;

    return-object p1
.end method

.method public getTableType()Lorg/h2/table/TableType;
    .locals 1

    sget-object v0, Lorg/h2/table/TableType;->TABLE_LINK:Lorg/h2/table/TableType;

    return-object v0
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 3

    iget-object v0, p0, Lorg/h2/table/TableLink;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLockedExclusively()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOracle()Z
    .locals 2

    iget-object v0, p0, Lorg/h2/table/TableLink;->url:Ljava/lang/String;

    const-string v1, "jdbc:oracle:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lock(Lorg/h2/engine/Session;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/h2/table/Table;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    invoke-virtual {p0, p1}, Lorg/h2/table/TableLink;->close(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/table/TableLink;->driver:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/table/TableLink;->originalTable:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/table/TableLink;->password:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/table/TableLink;->user:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/table/TableLink;->url:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/table/TableLink;->preparedMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->invalidate()V

    return-void
.end method

.method public removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/table/TableLink;->checkReadOnly()V

    invoke-virtual {p0, p1}, Lorg/h2/table/TableLink;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    return-void
.end method

.method public reusePreparedStatement(Ljava/sql/PreparedStatement;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/table/TableLink;->conn:Lorg/h2/table/TableLinkConnection;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/table/TableLink;->preparedMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setGlobalTemporary(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/table/TableLink;->globalTemporary:Z

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/table/TableLink;->readOnly:Z

    return-void
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "LINK"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public unlock(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public updateRows(Lorg/h2/command/Prepared;Lorg/h2/engine/Session;Lorg/h2/result/RowList;)V
    .locals 3

    invoke-direct {p0}, Lorg/h2/table/TableLink;->checkReadOnly()V

    iget-boolean v0, p0, Lorg/h2/table/TableLink;->emitUpdates:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lorg/h2/result/RowList;->reset()V

    :goto_0
    invoke-virtual {p3}, Lorg/h2/result/RowList;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/h2/command/Prepared;->checkCanceled()V

    invoke-virtual {p3}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    move-result-object v0

    invoke-virtual {p3}, Lorg/h2/result/RowList;->next()Lorg/h2/result/Row;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/table/TableLink;->linkedIndex:Lorg/h2/index/LinkedIndex;

    invoke-virtual {v2, v0, v1}, Lorg/h2/index/LinkedIndex;->update(Lorg/h2/result/Row;Lorg/h2/result/Row;)V

    const/4 v2, 0x1

    invoke-virtual {p2, p0, v2, v0}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, v1}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/h2/table/Table;->updateRows(Lorg/h2/command/Prepared;Lorg/h2/engine/Session;Lorg/h2/result/RowList;)V

    :cond_1
    return-void
.end method

.method public validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/h2/table/Table;->columns:[Lorg/h2/table/Column;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, v1}, Lorg/h2/table/Column;->validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v2

    if-eq v2, v1, :cond_0

    invoke-interface {p2, v0, v2}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

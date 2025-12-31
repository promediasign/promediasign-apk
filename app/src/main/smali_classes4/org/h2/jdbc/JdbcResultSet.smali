.class public Lorg/h2/jdbc/JdbcResultSet;
.super Lorg/h2/message/TraceObject;
.source "SourceFile"

# interfaces
.implements Ljava/sql/ResultSet;
.implements Lorg/h2/jdbc/JdbcResultSetBackwardsCompat;


# instance fields
.field private final closeStatement:Z

.field private columnCount:I

.field private columnLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private command:Lorg/h2/command/CommandInterface;

.field private conn:Lorg/h2/jdbc/JdbcConnection;

.field private insertRow:[Lorg/h2/value/Value;

.field private patchedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private preparedStatement:Lorg/h2/jdbc/JdbcPreparedStatement;

.field private result:Lorg/h2/result/ResultInterface;

.field private final scrollable:Z

.field private stat:Lorg/h2/jdbc/JdbcStatement;

.field private final updatable:Z

.field private updateRow:[Lorg/h2/value/Value;

.field private wasNull:Z


# direct methods
.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcPreparedStatement;Lorg/h2/command/CommandInterface;Lorg/h2/result/ResultInterface;IZZZLjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/jdbc/JdbcConnection;",
            "Lorg/h2/jdbc/JdbcPreparedStatement;",
            "Lorg/h2/command/CommandInterface;",
            "Lorg/h2/result/ResultInterface;",
            "IZZZ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p8}, Lorg/h2/jdbc/JdbcResultSet;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcStatement;Lorg/h2/command/CommandInterface;Lorg/h2/result/ResultInterface;IZZZ)V

    iput-object p9, p0, Lorg/h2/jdbc/JdbcResultSet;->columnLabelMap:Ljava/util/HashMap;

    iput-object p2, p0, Lorg/h2/jdbc/JdbcResultSet;->preparedStatement:Lorg/h2/jdbc/JdbcPreparedStatement;

    return-void
.end method

.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/jdbc/JdbcStatement;Lorg/h2/command/CommandInterface;Lorg/h2/result/ResultInterface;IZZZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    invoke-virtual {p1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1, p5}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    iput-object p1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    iput-object p2, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    iput-object p3, p0, Lorg/h2/jdbc/JdbcResultSet;->command:Lorg/h2/command/CommandInterface;

    iput-object p4, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {p4}, Lorg/h2/result/ResultInterface;->getVisibleColumnCount()I

    move-result p1

    iput p1, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    iput-boolean p6, p0, Lorg/h2/jdbc/JdbcResultSet;->closeStatement:Z

    iput-boolean p7, p0, Lorg/h2/jdbc/JdbcResultSet;->scrollable:Z

    iput-boolean p8, p0, Lorg/h2/jdbc/JdbcResultSet;->updatable:Z

    return-void
.end method

.method private checkColumnIndex(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "columnIndex"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private checkOnValidRow()V
    .locals 1

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->isOnValidRow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7d0

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private checkUpdatable()V
    .locals 1

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updatable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x1601c

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private convertToUnknownValue(Ljava/lang/Object;)Lorg/h2/value/Value;
    .locals 2

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method private extractObjectOfType(Ljava/lang/Class;Lorg/h2/value/Value;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/h2/value/Value;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return-object v1

    :cond_0
    const-class v2, Ljava/math/BigDecimal;

    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v2, Ljava/lang/String;

    if-ne p1, v2, :cond_2

    invoke-virtual {p2}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-class v2, Ljava/lang/Boolean;

    if-ne p1, v2, :cond_3

    invoke-virtual {p2}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_3
    const-class v2, Ljava/lang/Byte;

    if-ne p1, v2, :cond_4

    invoke-virtual {p2}, Lorg/h2/value/Value;->getByte()B

    move-result p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    goto :goto_0

    :cond_4
    const-class v2, Ljava/lang/Short;

    if-ne p1, v2, :cond_5

    invoke-virtual {p2}, Lorg/h2/value/Value;->getShort()S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    goto :goto_0

    :cond_5
    const-class v2, Ljava/lang/Integer;

    if-ne p1, v2, :cond_6

    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_6
    const-class v2, Ljava/lang/Long;

    if-ne p1, v2, :cond_7

    invoke-virtual {p2}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_7
    const-class v2, Ljava/lang/Float;

    if-ne p1, v2, :cond_8

    invoke-virtual {p2}, Lorg/h2/value/Value;->getFloat()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0

    :cond_8
    const-class v2, Ljava/lang/Double;

    if-ne p1, v2, :cond_9

    invoke-virtual {p2}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_0

    :cond_9
    const-class v2, Ljava/sql/Date;

    if-ne p1, v2, :cond_a

    invoke-virtual {p2}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p2

    goto :goto_0

    :cond_a
    const-class v2, Ljava/sql/Time;

    if-ne p1, v2, :cond_b

    invoke-virtual {p2}, Lorg/h2/value/Value;->getTime()Ljava/sql/Time;

    move-result-object p2

    goto :goto_0

    :cond_b
    const-class v2, Ljava/sql/Timestamp;

    if-ne p1, v2, :cond_c

    invoke-virtual {p2}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object p2

    goto :goto_0

    :cond_c
    const-class v2, Ljava/util/UUID;

    if-ne p1, v2, :cond_d

    :goto_1
    invoke-virtual {p2}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    :cond_d
    const-class v2, [B

    if-ne p1, v2, :cond_e

    invoke-virtual {p2}, Lorg/h2/value/Value;->getBytes()[B

    move-result-object p2

    goto/16 :goto_0

    :cond_e
    const-class v2, Ljava/sql/Array;

    if-ne p1, v2, :cond_10

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v2

    if-ne p2, v0, :cond_f

    goto :goto_2

    :cond_f
    new-instance v1, Lorg/h2/jdbc/JdbcArray;

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v1, v0, p2, v2}, Lorg/h2/jdbc/JdbcArray;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_10
    const-class v0, Lorg/h2/api/TimestampWithTimeZone;

    if-ne p1, v0, :cond_11

    goto :goto_1

    :cond_11
    invoke-static {p1}, Lorg/h2/value/DataType;->isGeometryClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1

    :cond_12
    invoke-static {p1}, Lorg/h2/util/LocalDateTimeUtils;->isLocalDate(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p2}, Lorg/h2/util/LocalDateTimeUtils;->valueToLocalDate(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    :cond_13
    invoke-static {p1}, Lorg/h2/util/LocalDateTimeUtils;->isLocalTime(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p2}, Lorg/h2/util/LocalDateTimeUtils;->valueToLocalTime(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    :cond_14
    invoke-static {p1}, Lorg/h2/util/LocalDateTimeUtils;->isLocalDateTime(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    check-cast p2, Lorg/h2/value/ValueTimestamp;

    invoke-static {p2}, Lorg/h2/util/LocalDateTimeUtils;->valueToLocalDateTime(Lorg/h2/value/ValueTimestamp;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    :cond_15
    invoke-static {p1}, Lorg/h2/util/LocalDateTimeUtils;->isOffsetDateTime(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    instance-of v0, p2, Lorg/h2/value/ValueTimestampTimeZone;

    if-eqz v0, :cond_16

    check-cast p2, Lorg/h2/value/ValueTimestampTimeZone;

    invoke-static {p2}, Lorg/h2/util/LocalDateTimeUtils;->valueToOffsetDateTime(Lorg/h2/value/ValueTimestampTimeZone;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private get(I)Lorg/h2/value/Value;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->checkColumnIndex(I)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkOnValidRow()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->patchedRows:Ljava/util/HashMap;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/value/Value;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lorg/h2/jdbc/JdbcResultSet;->wasNull:Z

    return-object p1
.end method

.method private get(Ljava/lang/String;)Lorg/h2/value/Value;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method private getColumnIndex(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    if-eqz p1, :cond_c

    iget v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    const/4 v1, 0x3

    const v2, 0xa48a

    const/4 v3, 0x0

    if-lt v0, v1, :cond_5

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->columnLabelMap:Ljava/util/HashMap;

    if-nez v1, :cond_3

    invoke-static {v0}, Lorg/h2/util/New;->hashMap(I)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v4, v1}, Lorg/h2/result/ResultInterface;->getAlias(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lorg/h2/jdbc/JdbcResultSet;->mapColumn(Ljava/util/HashMap;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v1, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    if-ge v3, v1, :cond_2

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1, v3}, Lorg/h2/result/ResultInterface;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lorg/h2/jdbc/JdbcResultSet;->mapColumn(Ljava/util/HashMap;Ljava/lang/String;I)V

    iget-object v4, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v4, v3}, Lorg/h2/result/ResultInterface;->getTableName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lorg/h2/jdbc/JdbcResultSet;->mapColumn(Ljava/util/HashMap;Ljava/lang/String;I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnLabelMap:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->preparedStatement:Lorg/h2/jdbc/JdbcPreparedStatement;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lorg/h2/jdbc/JdbcPreparedStatement;->setCachedColumnLabelMap(Ljava/util/HashMap;)V

    :cond_3
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnLabelMap:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_4
    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1, v0}, Lorg/h2/result/ResultInterface;->getAlias(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget v4, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v4, v3}, Lorg/h2/result/ResultInterface;->getTableName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v4, v3}, Lorg/h2/result/ResultInterface;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    return v3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    iget v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    if-ge v3, v0, :cond_b

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0, v3}, Lorg/h2/result/ResultInterface;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v3, v3, 0x1

    return v3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_c
    const-string p1, "columnLabel"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private getUpdatableRow()Lorg/h2/result/UpdatableRow;
    .locals 3

    new-instance v0, Lorg/h2/result/UpdatableRow;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-direct {v0, v1, v2}, Lorg/h2/result/UpdatableRow;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/result/ResultInterface;)V

    invoke-virtual {v0}, Lorg/h2/result/UpdatableRow;->isUpdatable()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const v0, 0x1600f

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private isOnValidRow()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static mapColumn(Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private nextRow()Z
    .locals 2

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcStatement;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xdeb6

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lorg/h2/jdbc/JdbcResultSet;->scrollable:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->close()V

    :cond_2
    return v0
.end method

.method private patchCurrentRow([Lorg/h2/value/Value;)V
    .locals 6

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    aget-object v4, p1, v3

    aget-object v5, v0, v3

    invoke-virtual {v4, v5, v1}, Lorg/h2/value/Value;->compareTo(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->patchedRows:Ljava/util/HashMap;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->patchedRows:Ljava/util/HashMap;

    :cond_2
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v2, :cond_3

    iget-object p1, p0, Lorg/h2/jdbc/JdbcResultSet;->patchedRows:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->patchedRows:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private resetResult()V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcResultSet;->scrollable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->reset()V

    return-void

    :cond_0
    const v0, 0x16010

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private update(ILorg/h2/value/Value;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkUpdatable()V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    aput-object p2, v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    new-array v0, v0, [Lorg/h2/value/Value;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    add-int/lit8 p1, p1, -0x1

    aput-object p2, v0, p1

    :goto_0
    return-void
.end method

.method private update(Ljava/lang/String;Lorg/h2/value/Value;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V

    return-void
.end method


# virtual methods
.method public absolute(I)Z
    .locals 3

    :try_start_0
    const-string v0, "absolute"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    if-gez p1, :cond_0

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowCount()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->resetResult()V

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    if-ge v0, p1, :cond_2

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->nextRow()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->isOnValidRow()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public afterLast()V
    .locals 1

    :try_start_0
    const-string v0, "afterLast"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->nextRow()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public beforeFirst()V
    .locals 1

    :try_start_0
    const-string v0, "beforeFirst"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->resetResult()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public cancelRowUpdates()V
    .locals 1

    :try_start_0
    const-string v0, "cancelRowUpdates"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public checkClosed()V
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcStatement;->checkClosed()Z

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    :cond_1
    return-void

    :cond_2
    const v0, 0x15f97

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public clearWarnings()V
    .locals 1

    :try_start_0
    const-string v0, "clearWarnings"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 1

    :try_start_0
    const-string v0, "close"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->closeInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public closeInternal()V
    .locals 5

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    iget-object v3, p0, Lorg/h2/jdbc/JdbcResultSet;->command:Lorg/h2/command/CommandInterface;

    iget-object v4, p0, Lorg/h2/jdbc/JdbcResultSet;->preparedStatement:Lorg/h2/jdbc/JdbcPreparedStatement;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v3, v4}, Lorg/h2/jdbc/JdbcStatement;->onLazyResultSetClose(Lorg/h2/command/CommandInterface;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->close()V

    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcResultSet;->closeStatement:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcStatement;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput v1, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    iput-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    iput-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    iput-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    iput-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    iput-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    goto :goto_3

    :goto_2
    iput v1, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    iput-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    iput-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    iput-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    iput-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    iput-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    throw v0

    :cond_3
    :goto_3
    return-void
.end method

.method public deleteRow()V
    .locals 2

    :try_start_0
    const-string v0, "deleteRow"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkUpdatable()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkOnValidRow()V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->getUpdatableRow()Lorg/h2/result/UpdatableRow;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/result/UpdatableRow;->deleteRow([Lorg/h2/value/Value;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const v0, 0x15fad

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public findColumn(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    const-string v0, "findColumn"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->getColumnIndex(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public first()Z
    .locals 1

    :try_start_0
    const-string v0, "first"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->resetResult()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->nextRow()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getArray(I)Ljava/sql/Array;
    .locals 5

    .line 1
    const-string v0, "getArray("

    const/16 v1, 0x10

    :try_start_0
    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v2

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Array"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/h2/jdbc/JdbcArray;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v1, p1, v2}, Lorg/h2/jdbc/JdbcArray;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_1
    return-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .locals 5

    .line 2
    const-string v0, "getArray("

    const/16 v1, 0x10

    :try_start_0
    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v2

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Array"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/h2/jdbc/JdbcArray;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v1, p1, v2}, Lorg/h2/jdbc/JdbcArray;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_1
    return-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getAsciiStream(I)Ljava/io/InputStream;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getAsciiStream"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/h2/util/IOUtils;->getInputStreamFromString(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getAsciiStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "getAsciiStream"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/IOUtils;->getInputStreamFromString(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getBigDecimal"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const-string v0, "getBigDecimal("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-ltz p2, :cond_2

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lorg/h2/value/ValueDecimal;->setScale(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_2
    const-string p1, "scale"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1

    .line 3
    :try_start_0
    const-string v0, "getBigDecimal"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBigDecimal(Ljava/lang/String;I)Ljava/math/BigDecimal;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    const-string v0, "getBigDecimal("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteJavaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-ltz p2, :cond_2

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lorg/h2/value/ValueDecimal;->setScale(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_2
    const-string p1, "scale"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getBinaryStream"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBinaryStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "getBinaryStream"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 5

    .line 1
    const-string v0, "getBlob("

    const/16 v1, 0x9

    :try_start_0
    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v2

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Blob"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/h2/jdbc/JdbcBlob;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v1, p1, v2}, Lorg/h2/jdbc/JdbcBlob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_1
    return-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .locals 5

    .line 2
    const-string v0, "getBlob("

    const/16 v1, 0x9

    :try_start_0
    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v2

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Blob"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/h2/jdbc/JdbcBlob;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v1, p1, v2}, Lorg/h2/jdbc/JdbcBlob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_1
    return-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBoolean(I)Z
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getBoolean"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "getBoolean"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getByte(I)B
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getByte"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getByte()B

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "getByte"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getByte()B

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBytes(I)[B
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getBytes"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytes()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "getBytes"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytes()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getCharacterStream"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "getCharacterStream"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 5

    .line 1
    const-string v0, "getClob("

    const/16 v1, 0xa

    :try_start_0
    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v2

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Clob"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/h2/jdbc/JdbcClob;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v1, p1, v2}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_1
    return-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 5

    .line 2
    const-string v0, "getClob("

    const/16 v1, 0xa

    :try_start_0
    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v2

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Clob"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/h2/jdbc/JdbcClob;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v1, p1, v2}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_1
    return-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getConcurrency()I
    .locals 4

    :try_start_0
    const-string v0, "getConcurrency"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updatable:Z

    const/16 v1, 0x3ef

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lorg/h2/result/UpdatableRow;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    iget-object v3, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-direct {v0, v2, v3}, Lorg/h2/result/UpdatableRow;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/result/ResultInterface;)V

    invoke-virtual {v0}, Lorg/h2/result/UpdatableRow;->isUpdatable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/16 v1, 0x3f0

    :cond_1
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getCursorName()Ljava/lang/String;
    .locals 1

    const-string v0, "cursorName"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getDate"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 2

    .line 2
    const-string v0, "getDate("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", calendar)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->convertDate(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 1

    .line 3
    :try_start_0
    const-string v0, "getDate"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getDate()Ljava/sql/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 2

    .line 4
    const-string v0, "getDate("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteJavaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", calendar)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->convertDate(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDouble(I)D
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getDouble"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .line 2
    :try_start_0
    const-string v0, "getDouble"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getDouble()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getFetchDirection()I
    .locals 1

    :try_start_0
    const-string v0, "getFetchDirection"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x3e8

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getFetchSize()I
    .locals 1

    :try_start_0
    const-string v0, "getFetchSize"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getFetchSize()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getFloat(I)F
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getFloat"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getFloat()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "getFloat"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getFloat()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getHoldability()I
    .locals 1

    :try_start_0
    const-string v0, "getHoldability"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getHoldability()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getInt(I)I
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getInt"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "getInt"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getLong(I)J
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getLong"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 2
    :try_start_0
    const-string v0, "getLong"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 8

    const/4 v0, 0x5

    :try_start_0
    invoke-static {v0}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v7

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ResultSetMetaData"

    const-string v2, "getMetaData()"

    invoke-virtual {p0, v1, v0, v7, v2}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getCatalog()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lorg/h2/jdbc/JdbcResultSetMetaData;

    iget-object v4, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/h2/engine/SessionInterface;->getTrace()Lorg/h2/message/Trace;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/h2/jdbc/JdbcResultSetMetaData;-><init>(Lorg/h2/jdbc/JdbcResultSet;Lorg/h2/jdbc/JdbcPreparedStatement;Lorg/h2/result/ResultInterface;Ljava/lang/String;Lorg/h2/message/Trace;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getNCharacterStream"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "getNCharacterStream"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .locals 5

    .line 1
    const-string v0, "getNClob("

    const/16 v1, 0xa

    :try_start_0
    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v2

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "NClob"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/h2/jdbc/JdbcClob;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v1, p1, v2}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_1
    return-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .locals 5

    .line 2
    const-string v0, "getNClob("

    const/16 v1, 0xa

    :try_start_0
    invoke-static {v1}, Lorg/h2/message/TraceObject;->getNextId(I)I

    move-result v2

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "NClob"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1, v2, v0}, Lorg/h2/message/TraceObject;->debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/h2/jdbc/JdbcClob;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-direct {v0, v1, p1, v2}, Lorg/h2/jdbc/JdbcClob;-><init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/value/Value;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_1
    return-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNString(I)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getNString"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "getNString"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getObject"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcConnection;->convertToDefaultObject(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "getObject"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/h2/jdbc/JdbcResultSet;->extractObjectOfType(Ljava/lang/Class;Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p1, "type"

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    const-string p1, "map"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 4
    :try_start_0
    const-string v0, "getObject"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p1}, Lorg/h2/jdbc/JdbcConnection;->convertToDefaultObject(Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5
    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "getObject"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/h2/jdbc/JdbcResultSet;->extractObjectOfType(Ljava/lang/Class;Lorg/h2/value/Value;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p1, "type"

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 6
    const-string p1, "map"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 0

    .line 1
    const-string p1, "ref"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .locals 0

    .line 2
    const-string p1, "ref"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRow()I
    .locals 1

    :try_start_0
    const-string v0, "getRow"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 0

    .line 1
    const-string p1, "rowId"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .locals 0

    .line 2
    const-string p1, "rowId"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .locals 0

    .line 1
    const-string p1, "SQLXML"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .locals 0

    .line 2
    const-string p1, "SQLXML"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getShort(I)S
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getShort"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getShort()S

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "getShort"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getShort()S

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getStatement()Ljava/sql/Statement;
    .locals 1

    :try_start_0
    const-string v0, "getStatement"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcResultSet;->closeStatement:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getString"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "getString"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getTime"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getTime()Ljava/sql/Time;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 2

    .line 2
    const-string v0, "getTime("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", calendar)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->convertTime(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 1

    .line 3
    :try_start_0
    const-string v0, "getTime"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getTime()Ljava/sql/Time;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 2

    .line 4
    const-string v0, "getTime("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteJavaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", calendar)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->convertTime(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "getTimestamp"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 2

    .line 2
    const-string v0, "getTimestamp("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", calendar)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->convertTimestamp(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 1

    .line 3
    :try_start_0
    const-string v0, "getTimestamp"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getTimestamp()Ljava/sql/Timestamp;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 2

    .line 4
    const-string v0, "getTimestamp("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteJavaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", calendar)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/h2/util/DateTimeUtils;->convertTimestamp(Lorg/h2/value/Value;Ljava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getType()I
    .locals 1

    :try_start_0
    const-string v0, "getType"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    if-nez v0, :cond_0

    const/16 v0, 0x3eb

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/h2/jdbc/JdbcStatement;->resultSetType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 0

    .line 1
    const-string p1, "url"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 0

    .line 2
    const-string p1, "url"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getUnicodeStream(I)Ljava/io/InputStream;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string p1, "unicodeStream"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getUnicodeStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const-string p1, "unicodeStream"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1

    :try_start_0
    const-string v0, "getWarnings"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public insertRow()V
    .locals 2

    :try_start_0
    const-string v0, "insertRow"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkUpdatable()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->getUpdatableRow()Lorg/h2/result/UpdatableRow;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    invoke-virtual {v0, v1}, Lorg/h2/result/UpdatableRow;->insertRow([Lorg/h2/value/Value;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const v0, 0x15fad

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isAfterLast()Z
    .locals 1

    :try_start_0
    const-string v0, "isAfterLast"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->isAfterLast()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    :try_start_0
    const-string v0, "isBeforeFirst"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    :try_start_0
    const-string v0, "isClosed"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isFirst()Z
    .locals 1

    :try_start_0
    const-string v0, "isFirst"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->isAfterLast()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isLast()Z
    .locals 1

    :try_start_0
    const-string v0, "isLast"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public last()Z
    .locals 1

    :try_start_0
    const-string v0, "last"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->resetResult()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->nextRow()Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->isOnValidRow()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public moveToCurrentRow()V
    .locals 1

    :try_start_0
    const-string v0, "moveToCurrentRow"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkUpdatable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public moveToInsertRow()V
    .locals 1

    :try_start_0
    const-string v0, "moveToInsertRow"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkUpdatable()V

    iget v0, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    new-array v0, v0, [Lorg/h2/value/Value;

    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public next()Z
    .locals 1

    :try_start_0
    const-string v0, "next"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->nextRow()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public previous()Z
    .locals 1

    :try_start_0
    const-string v0, "previous"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->relative(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public refreshRow()V
    .locals 2

    :try_start_0
    const-string v0, "refreshRow"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkOnValidRow()V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->getUpdatableRow()Lorg/h2/result/UpdatableRow;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/result/UpdatableRow;->readRow([Lorg/h2/value/Value;)[Lorg/h2/value/Value;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->patchCurrentRow([Lorg/h2/value/Value;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public relative(I)Z
    .locals 3

    :try_start_0
    const-string v0, "relative"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    if-gez p1, :cond_0

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->getRowId()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x1

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->resetResult()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->nextRow()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->isOnValidRow()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public rowDeleted()Z
    .locals 1

    :try_start_0
    const-string v0, "rowDeleted"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowInserted()Z
    .locals 1

    :try_start_0
    const-string v0, "rowInserted"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowUpdated()Z
    .locals 1

    :try_start_0
    const-string v0, "rowUpdated"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setFetchDirection(I)V
    .locals 3

    int-to-long v0, p1

    const-string v2, "setFetchDirection"

    invoke-virtual {p0, v2, v0, v1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setFetchSize(I)V
    .locals 3

    :try_start_0
    const-string v0, "setFetchSize"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "rows"

    if-ltz p1, :cond_3

    if-lez p1, :cond_1

    :try_start_1
    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->stat:Lorg/h2/jdbc/JdbcStatement;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/h2/jdbc/JdbcStatement;->getMaxRows()I

    move-result v1

    if-lez v1, :cond_2

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    sget p1, Lorg/h2/engine/SysProperties;->SERVER_RESULT_SET_FETCH_SIZE:I

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-interface {v0, p1}, Lorg/h2/result/ResultInterface;->setFetchSize(I)V

    return-void

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcResultSet;->result:Lorg/h2/result/ResultInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcResultSet;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "iface"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateArray(ILjava/sql/Array;)V
    .locals 0

    .line 1
    const-string p1, "setArray"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateArray(Ljava/lang/String;Ljava/sql/Array;)V
    .locals 0

    .line 2
    const-string p1, "setArray"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateAsciiStream(ILjava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcResultSet;->updateAsciiStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public updateAsciiStream(ILjava/io/InputStream;I)V
    .locals 2

    .line 2
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateAsciiStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public updateAsciiStream(ILjava/io/InputStream;J)V
    .locals 2

    .line 3
    const-string v0, "updateAsciiStream("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-static {p2}, Lorg/h2/util/IOUtils;->getAsciiReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .line 4
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcResultSet;->updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V

    return-void
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 2

    .line 5
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V

    return-void
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 2

    .line 6
    const-string v0, "updateAsciiStream("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-static {p2}, Lorg/h2/util/IOUtils;->getAsciiReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBigDecimal(ILjava/math/BigDecimal;)V
    .locals 2

    .line 1
    const-string v0, "updateBigDecimal("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 2

    .line 2
    const-string v0, "updateBigDecimal("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quoteBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueDecimal;->get(Ljava/math/BigDecimal;)Lorg/h2/value/ValueDecimal;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBinaryStream(ILjava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcResultSet;->updateBinaryStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;I)V
    .locals 2

    .line 2
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateBinaryStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;J)V
    .locals 2

    .line 3
    const-string v0, "updateBinaryStream("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .line 4
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcResultSet;->updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V

    return-void
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 2

    .line 5
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V

    return-void
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 2

    .line 6
    const-string v0, "updateBinaryStream("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBlob(ILjava/io/InputStream;)V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateBlob(ILjava/io/InputStream;J)V

    return-void
.end method

.method public updateBlob(ILjava/io/InputStream;J)V
    .locals 2

    .line 2
    const-string v0, "updateBlob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBlob(ILjava/sql/Blob;)V
    .locals 3

    .line 3
    const-string v0, "updateBlob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-interface {p2}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2

    .line 4
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateBlob(Ljava/lang/String;Ljava/io/InputStream;J)V

    return-void
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 2

    .line 5
    const-string v0, "updateBlob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "L);"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object p3, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-wide/16 v0, -0x1

    invoke-virtual {p3, p2, v0, v1}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 3

    .line 6
    const-string v0, "updateBlob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-interface {p2}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBoolean(IZ)V
    .locals 2

    .line 1
    const-string v0, "updateBoolean("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBoolean(Ljava/lang/String;Z)V
    .locals 2

    .line 2
    const-string v0, "updateBoolean("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateByte(IB)V
    .locals 2

    .line 1
    const-string v0, "updateByte("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateByte(Ljava/lang/String;B)V
    .locals 2

    .line 2
    const-string v0, "updateByte("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueByte;->get(B)Lorg/h2/value/ValueByte;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBytes(I[B)V
    .locals 2

    .line 1
    const-string v0, "updateBytes("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueBytes;->get([B)Lorg/h2/value/ValueBytes;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateBytes(Ljava/lang/String;[B)V
    .locals 2

    .line 2
    const-string v0, "updateBytes("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueBytes;->get([B)Lorg/h2/value/ValueBytes;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateCharacterStream(ILjava/io/Reader;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcResultSet;->updateCharacterStream(ILjava/io/Reader;I)V

    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;I)V
    .locals 2

    .line 2
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;J)V
    .locals 2

    .line 3
    const-string v0, "updateCharacterStream("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1

    .line 4
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/h2/jdbc/JdbcResultSet;->updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V

    return-void
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 2

    .line 5
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V

    return-void
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 2

    .line 6
    const-string v0, "updateCharacterStream("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(ILjava/io/Reader;)V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateClob(ILjava/io/Reader;J)V
    .locals 2

    .line 2
    const-string v0, "updateClob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(ILjava/sql/Clob;)V
    .locals 3

    .line 3
    const-string v0, "updateClob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 2

    .line 4
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateClob(Ljava/lang/String;Ljava/io/Reader;J)V

    return-void
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 2

    .line 5
    const-string v0, "updateClob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .locals 3

    .line 6
    const-string v0, "updateClob("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p2

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateDate(ILjava/sql/Date;)V
    .locals 2

    .line 1
    const-string v0, "updateDate("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueDate;->get(Ljava/sql/Date;)Lorg/h2/value/ValueDate;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 2

    .line 2
    const-string v0, "updateDate("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueDate;->get(Ljava/sql/Date;)Lorg/h2/value/ValueDate;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateDouble(ID)V
    .locals 2

    .line 1
    const-string v0, "updateDouble("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "d);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2, p3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateDouble(Ljava/lang/String;D)V
    .locals 2

    .line 2
    const-string v0, "updateDouble("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "d);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2, p3}, Lorg/h2/value/ValueDouble;->get(D)Lorg/h2/value/ValueDouble;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateFloat(IF)V
    .locals 2

    .line 1
    const-string v0, "updateFloat("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "f);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateFloat(Ljava/lang/String;F)V
    .locals 2

    .line 2
    const-string v0, "updateFloat("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "f);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueFloat;->get(F)Lorg/h2/value/ValueFloat;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateInt(II)V
    .locals 2

    .line 1
    const-string v0, "updateInt("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateInt(Ljava/lang/String;I)V
    .locals 2

    .line 2
    const-string v0, "updateInt("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateLong(IJ)V
    .locals 2

    .line 1
    const-string v0, "updateLong("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2, p3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateLong(Ljava/lang/String;J)V
    .locals 2

    .line 2
    const-string v0, "updateLong("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2, p3}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNCharacterStream(ILjava/io/Reader;)V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateNCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateNCharacterStream(ILjava/io/Reader;J)V
    .locals 2

    .line 2
    const-string v0, "updateNCharacterStream("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 2

    .line 3
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V

    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 2

    .line 4
    const-string v0, "updateNCharacterStream("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "L);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, p2, p3, p4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNClob(ILjava/io/Reader;)V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateNClob(ILjava/io/Reader;J)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/jdbc/JdbcResultSet;->updateClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateNClob(ILjava/sql/NClob;)V
    .locals 0

    .line 3
    const-string p1, "NClob"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 2

    .line 4
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/h2/jdbc/JdbcResultSet;->updateClob(Ljava/lang/String;Ljava/io/Reader;J)V

    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/jdbc/JdbcResultSet;->updateClob(Ljava/lang/String;Ljava/io/Reader;J)V

    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 0

    .line 6
    const-string p1, "NClob"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNString(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "updateNString("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    const-string v0, "updateNString("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNull(I)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "updateNull"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-direct {p0, p1, v0}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateNull(Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    const-string v0, "updateNull"

    invoke-virtual {p0, v0, p1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-direct {p0, p1, v0}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateObject(ILjava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "updateObject("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lorg/h2/jdbc/JdbcResultSet;->convertToUnknownValue(Ljava/lang/Object;)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateObject(ILjava/lang/Object;I)V
    .locals 2

    .line 2
    const-string v0, "updateObject("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ");"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lorg/h2/jdbc/JdbcResultSet;->convertToUnknownValue(Ljava/lang/Object;)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    const-string v0, "updateObject("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lorg/h2/jdbc/JdbcResultSet;->convertToUnknownValue(Ljava/lang/Object;)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2

    .line 4
    const-string v0, "updateObject("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ");"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lorg/h2/jdbc/JdbcResultSet;->convertToUnknownValue(Ljava/lang/Object;)Lorg/h2/value/Value;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateRef(ILjava/sql/Ref;)V
    .locals 0

    .line 1
    const-string p1, "ref"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateRef(Ljava/lang/String;Ljava/sql/Ref;)V
    .locals 0

    .line 2
    const-string p1, "ref"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateRow()V
    .locals 6

    :try_start_0
    const-string v0, "updateRow"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkUpdatable()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->insertRow:[Lorg/h2/value/Value;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkOnValidRow()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcResultSet;->getUpdatableRow()Lorg/h2/result/UpdatableRow;

    move-result-object v0

    iget v1, p0, Lorg/h2/jdbc/JdbcResultSet;->columnCount:I

    new-array v1, v1, [Lorg/h2/value/Value;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v4}, Lorg/h2/jdbc/JdbcResultSet;->get(I)Lorg/h2/value/Value;

    move-result-object v5

    aput-object v5, v1, v3

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, v1, v4}, Lorg/h2/result/UpdatableRow;->updateRow([Lorg/h2/value/Value;[Lorg/h2/value/Value;)V

    :goto_1
    iget-object v3, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v4, v3, v2

    if-nez v4, :cond_1

    aget-object v4, v1, v2

    aput-object v4, v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Lorg/h2/result/UpdatableRow;->readRow([Lorg/h2/value/Value;)[Lorg/h2/value/Value;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcResultSet;->patchCurrentRow([Lorg/h2/value/Value;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/jdbc/JdbcResultSet;->updateRow:[Lorg/h2/value/Value;

    :cond_3
    return-void

    :cond_4
    const v0, 0x15fad

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public updateRowId(ILjava/sql/RowId;)V
    .locals 0

    .line 1
    const-string p1, "rowId"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    .locals 0

    .line 2
    const-string p1, "rowId"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateSQLXML(ILjava/sql/SQLXML;)V
    .locals 0

    .line 1
    const-string p1, "SQLXML"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .locals 0

    .line 2
    const-string p1, "SQLXML"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateShort(IS)V
    .locals 2

    .line 1
    const-string v0, "updateShort("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", (short) "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateShort(Ljava/lang/String;S)V
    .locals 2

    .line 2
    const-string v0, "updateShort("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", (short) "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/h2/value/ValueShort;->get(S)Lorg/h2/value/ValueShort;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateString(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "updateString("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    const-string v0, "updateString("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateTime(ILjava/sql/Time;)V
    .locals 2

    .line 1
    const-string v0, "updateTime("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueTime;->get(Ljava/sql/Time;)Lorg/h2/value/ValueTime;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 2

    .line 2
    const-string v0, "updateTime("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueTime;->get(Ljava/sql/Time;)Lorg/h2/value/ValueTime;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateTimestamp(ILjava/sql/Timestamp;)V
    .locals 2

    .line 1
    const-string v0, "updateTimestamp("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 2

    .line 2
    const-string v0, "updateTimestamp("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", x);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/h2/value/ValueTimestamp;->get(Ljava/sql/Timestamp;)Lorg/h2/value/ValueTimestamp;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/h2/jdbc/JdbcResultSet;->update(Ljava/lang/String;Lorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public wasNull()Z
    .locals 1

    :try_start_0
    const-string v0, "wasNull"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcResultSet;->checkClosed()V

    iget-boolean v0, p0, Lorg/h2/jdbc/JdbcResultSet;->wasNull:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

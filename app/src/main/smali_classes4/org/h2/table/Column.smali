.class public Lorg/h2/table/Column;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOT_NULLABLE:I = 0x0

.field public static final NULLABLE:I = 0x1

.field public static final NULLABLE_UNKNOWN:I = 0x2

.field public static final ROWID:Ljava/lang/String; = "_ROWID_"


# instance fields
.field private autoIncrement:Z

.field private checkConstraint:Lorg/h2/expression/Expression;

.field private checkConstraintSQL:Ljava/lang/String;

.field private columnId:I

.field private comment:Ljava/lang/String;

.field private computeTableFilter:Lorg/h2/table/TableFilter;

.field private convertNullToDefault:Z

.field private defaultExpression:Lorg/h2/expression/Expression;

.field private displaySize:I

.field private enumerators:[Ljava/lang/String;

.field private increment:J

.field private isComputed:Z

.field private name:Ljava/lang/String;

.field private nullable:Z

.field private originalSQL:Ljava/lang/String;

.field private precision:J

.field private primaryKey:Z

.field private resolver:Lorg/h2/table/SingleColumnResolver;

.field private scale:I

.field private selectivity:I

.field private sequence:Lorg/h2/schema/Sequence;

.field private start:J

.field private table:Lorg/h2/table/Table;

.field private final type:I

.field private visible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 8

    .line 1
    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJII)V
    .locals 8

    .line 2
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJII[Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/table/Column;->nullable:Z

    iput-boolean v0, p0, Lorg/h2/table/Column;->visible:Z

    iput-object p1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    iput p2, p0, Lorg/h2/table/Column;->type:I

    const-wide/16 v0, -0x1

    cmp-long p1, p3, v0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    if-ne p5, p1, :cond_0

    if-ne p6, p1, :cond_0

    if-eq p2, p1, :cond_0

    invoke-static {p2}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object p1

    iget-wide p3, p1, Lorg/h2/value/DataType;->defaultPrecision:J

    iget p5, p1, Lorg/h2/value/DataType;->defaultScale:I

    iget p6, p1, Lorg/h2/value/DataType;->defaultDisplaySize:I

    :cond_0
    iput-wide p3, p0, Lorg/h2/table/Column;->precision:J

    iput p5, p0, Lorg/h2/table/Column;->scale:I

    iput p6, p0, Lorg/h2/table/Column;->displaySize:I

    iput-object p7, p0, Lorg/h2/table/Column;->enumerators:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 8

    .line 4
    const/4 v5, -0x1

    const/4 v6, -0x1

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII[Ljava/lang/String;)V

    return-void
.end method

.method private updateSequenceIfRequired(Lorg/h2/engine/Session;Lorg/h2/value/Value;)V
    .locals 8

    iget-object v0, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/schema/Sequence;->getCurrentValue()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v2}, Lorg/h2/schema/Sequence;->getIncrement()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p2, v2, v6

    if-lez p2, :cond_0

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    cmp-long p2, v4, v0

    if-gez p2, :cond_1

    :goto_0
    iget-object p2, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1, v1}, Lorg/h2/schema/Sequence;->modify(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v4, v5}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->setLastIdentity(Lorg/h2/value/Value;)V

    iget-object p2, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {p2, p1}, Lorg/h2/schema/Sequence;->flush(Lorg/h2/engine/Session;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addCheckConstraint(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/h2/table/SingleColumnResolver;

    invoke-direct {v0, p0}, Lorg/h2/table/SingleColumnResolver;-><init>(Lorg/h2/table/Column;)V

    iput-object v0, p0, Lorg/h2/table/Column;->resolver:Lorg/h2/table/SingleColumnResolver;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v1, "VALUE"

    iput-object v1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/h2/table/Column;->resolver:Lorg/h2/table/SingleColumnResolver;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    iput-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p2

    iget-object v0, p0, Lorg/h2/table/Column;->resolver:Lorg/h2/table/SingleColumnResolver;

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    invoke-virtual {v0, v1}, Lorg/h2/table/SingleColumnResolver;->setValue(Lorg/h2/value/Value;)V

    monitor-enter p0

    :try_start_1
    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    if-nez v0, :cond_2

    iput-object p2, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/h2/expression/ConditionAndOr;

    invoke-direct {v1, v2, v0, p2}, Lorg/h2/expression/ConditionAndOr;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object v1, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    :goto_1
    iget-object p2, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/h2/table/Column;->getCheckConstraintSQL(Lorg/h2/engine/Session;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/Column;->checkConstraintSQL:Ljava/lang/String;

    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized computeValue(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Lorg/h2/value/Value;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/table/Column;->computeTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, p1}, Lorg/h2/table/TableFilter;->setSession(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/table/Column;->computeTableFilter:Lorg/h2/table/TableFilter;

    invoke-virtual {v0, p2}, Lorg/h2/table/TableFilter;->set(Lorg/h2/result/Row;)V

    iget-object p2, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 4

    :try_start_0
    iget v0, p0, Lorg/h2/table/Column;->type:I

    invoke-virtual {p1, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x5602

    if-ne v1, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    throw v0
.end method

.method public convertAutoIncrementToSequence(Lorg/h2/engine/Session;Lorg/h2/schema/Schema;IZ)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lorg/h2/table/Column;->autoIncrement:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string v0, "IDENTITY"

    .line 9
    .line 10
    iget-object v1, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "BIGINT"

    .line 19
    .line 20
    :goto_0
    iput-object v0, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const-string v0, "SERIAL"

    .line 24
    .line 25
    iget-object v1, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const-string v0, "INT"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    invoke-static {}, Lorg/h2/value/ValueUuid;->getNewRandom()Lorg/h2/value/ValueUuid;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lorg/h2/value/ValueUuid;->getString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/16 v1, 0x2d

    .line 45
    .line 46
    const/16 v2, 0x5f

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "SYSTEM_SEQUENCE_"

    .line 57
    .line 58
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {p2, v5}, Lorg/h2/schema/Schema;->findSequence(Ljava/lang/String;)Lorg/h2/schema/Sequence;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    new-instance v0, Lorg/h2/schema/Sequence;

    .line 69
    .line 70
    iget-wide v6, p0, Lorg/h2/table/Column;->start:J

    .line 71
    .line 72
    iget-wide v8, p0, Lorg/h2/table/Column;->increment:J

    .line 73
    .line 74
    move-object v2, v0

    .line 75
    move-object v3, p2

    .line 76
    move v4, p3

    .line 77
    invoke-direct/range {v2 .. v9}, Lorg/h2/schema/Sequence;-><init>(Lorg/h2/schema/Schema;ILjava/lang/String;JJ)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p4}, Lorg/h2/engine/DbObjectBase;->setTemporary(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2, p1, v0}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    .line 88
    .line 89
    .line 90
    const-wide/16 v3, 0x0

    .line 91
    .line 92
    const-wide/16 v5, 0x0

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    move-object v1, p0

    .line 96
    invoke-virtual/range {v1 .. v6}, Lorg/h2/table/Column;->setAutoIncrement(ZJJ)V

    .line 97
    .line 98
    .line 99
    new-instance p2, Lorg/h2/expression/SequenceValue;

    .line 100
    .line 101
    invoke-direct {p2, v0}, Lorg/h2/expression/SequenceValue;-><init>(Lorg/h2/schema/Sequence;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1, p2}, Lorg/h2/table/Column;->setDefaultExpression(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0}, Lorg/h2/table/Column;->setSequence(Lorg/h2/schema/Sequence;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public copy(Lorg/h2/table/Column;)V
    .locals 2

    iget-object v0, p1, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    iput-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    iget-object v0, p1, Lorg/h2/table/Column;->checkConstraintSQL:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/table/Column;->checkConstraintSQL:Ljava/lang/String;

    iget v0, p1, Lorg/h2/table/Column;->displaySize:I

    iput v0, p0, Lorg/h2/table/Column;->displaySize:I

    iget-object v0, p1, Lorg/h2/table/Column;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    iget-wide v0, p1, Lorg/h2/table/Column;->precision:J

    iput-wide v0, p0, Lorg/h2/table/Column;->precision:J

    iget-object v0, p1, Lorg/h2/table/Column;->enumerators:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/h2/table/Column;->enumerators:[Ljava/lang/String;

    iget v0, p1, Lorg/h2/table/Column;->scale:I

    iput v0, p0, Lorg/h2/table/Column;->scale:I

    iget-boolean v0, p1, Lorg/h2/table/Column;->nullable:Z

    iput-boolean v0, p0, Lorg/h2/table/Column;->nullable:Z

    iget-object v0, p1, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    iput-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    iget-object v0, p1, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    iget-boolean v0, p1, Lorg/h2/table/Column;->convertNullToDefault:Z

    iput-boolean v0, p0, Lorg/h2/table/Column;->convertNullToDefault:Z

    iget-object v0, p1, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    iput-object v0, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    iget-object v0, p1, Lorg/h2/table/Column;->comment:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/table/Column;->comment:Ljava/lang/String;

    iget-object v0, p1, Lorg/h2/table/Column;->computeTableFilter:Lorg/h2/table/TableFilter;

    iput-object v0, p0, Lorg/h2/table/Column;->computeTableFilter:Lorg/h2/table/TableFilter;

    iget-boolean v0, p1, Lorg/h2/table/Column;->isComputed:Z

    iput-boolean v0, p0, Lorg/h2/table/Column;->isComputed:Z

    iget v0, p1, Lorg/h2/table/Column;->selectivity:I

    iput v0, p0, Lorg/h2/table/Column;->selectivity:I

    iget-boolean v0, p1, Lorg/h2/table/Column;->primaryKey:Z

    iput-boolean v0, p0, Lorg/h2/table/Column;->primaryKey:Z

    iget-boolean p1, p1, Lorg/h2/table/Column;->visible:Z

    iput-boolean p1, p0, Lorg/h2/table/Column;->visible:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/h2/table/Column;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/h2/table/Column;

    iget-object v0, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    if-eqz v0, :cond_4

    iget-object v2, p1, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object p1, p1, Lorg/h2/table/Column;->name:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public getCheckConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/expression/Expression;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lorg/h2/command/Parser;

    invoke-direct {v0, p1}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    iget-object p2, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    invoke-virtual {p2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p2

    iput-object p1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p2}, Lorg/h2/command/Parser;->parseExpression(Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCheckConstraintSQL(Lorg/h2/engine/Session;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/h2/table/Column;->getCheckConstraint(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getClone()Lorg/h2/table/Column;
    .locals 9

    new-instance v8, Lorg/h2/table/Column;

    iget-object v1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    iget v2, p0, Lorg/h2/table/Column;->type:I

    iget-wide v3, p0, Lorg/h2/table/Column;->precision:J

    iget v5, p0, Lorg/h2/table/Column;->scale:I

    iget v6, p0, Lorg/h2/table/Column;->displaySize:I

    iget-object v7, p0, Lorg/h2/table/Column;->enumerators:[Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII[Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lorg/h2/table/Column;->copy(Lorg/h2/table/Column;)V

    return-object v8
.end method

.method public getColumnId()I
    .locals 1

    iget v0, p0, Lorg/h2/table/Column;->columnId:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Column;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getComputed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/Column;->isComputed:Z

    return v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_1
    iget v1, p0, Lorg/h2/table/Column;->type:I

    invoke-static {v1}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v1

    iget-object v1, v1, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/table/Column;->type:I

    const/4 v2, 0x6

    const/16 v3, 0x29

    const/16 v4, 0x28

    if-eq v1, v2, :cond_6

    const/16 v2, 0x15

    if-eq v1, v2, :cond_5

    const/16 v2, 0x19

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/h2/table/Column;->enumerators:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/h2/table/Column;->enumerators:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/table/Column;->enumerators:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :pswitch_0
    iget-wide v1, p0, Lorg/h2/table/Column;->precision:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v1, v5

    if-gez v7, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/h2/table/Column;->precision:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/h2/table/Column;->precision:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/table/Column;->scale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    :goto_2
    iget-boolean v1, p0, Lorg/h2/table/Column;->visible:Z

    if-nez v1, :cond_8

    const-string v1, " INVISIBLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-boolean v2, p0, Lorg/h2/table/Column;->isComputed:Z

    if-eqz v2, :cond_9

    const-string v2, " AS "

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    if-eqz v2, :cond_a

    const-string v2, " DEFAULT "

    goto :goto_3

    :cond_a
    :goto_4
    iget-boolean v1, p0, Lorg/h2/table/Column;->nullable:Z

    if-nez v1, :cond_b

    const-string v1, " NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-boolean v1, p0, Lorg/h2/table/Column;->convertNullToDefault:Z

    if-eqz v1, :cond_c

    const-string v1, " NULL_TO_DEFAULT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v1, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    if-eqz v1, :cond_d

    const-string v1, " SEQUENCE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget v1, p0, Lorg/h2/table/Column;->selectivity:I

    if-eqz v1, :cond_e

    const-string v1, " SELECTIVITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/table/Column;->selectivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v1, p0, Lorg/h2/table/Column;->comment:Ljava/lang/String;

    if-eqz v1, :cond_f

    const-string v1, " COMMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/Column;->comment:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v1, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_10

    const-string v1, " CHECK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/table/Column;->checkConstraintSQL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getDataType()Lorg/h2/value/DataType;
    .locals 1

    iget v0, p0, Lorg/h2/table/Column;->type:I

    invoke-static {v0}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultExpression()Lorg/h2/expression/Expression;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public getDefaultSQL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDisplaySize()I
    .locals 1

    iget v0, p0, Lorg/h2/table/Column;->displaySize:I

    return v0
.end method

.method public getEnumerators()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Column;->enumerators:[Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalSQL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/table/Column;->precision:J

    return-wide v0
.end method

.method public getPrecisionAsInt()I
    .locals 2

    iget-wide v0, p0, Lorg/h2/table/Column;->precision:J

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    iget v0, p0, Lorg/h2/table/Column;->scale:I

    return v0
.end method

.method public getSelectivity()I
    .locals 1

    iget v0, p0, Lorg/h2/table/Column;->selectivity:I

    if-nez v0, :cond_0

    const/16 v0, 0x32

    :cond_0
    return v0
.end method

.method public getSequence()Lorg/h2/schema/Sequence;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    return-object v0
.end method

.method public getTable()Lorg/h2/table/Table;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/h2/table/Column;->type:I

    return v0
.end method

.method public getVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/Column;->visible:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoIncrement()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/Column;->autoIncrement:Z

    return v0
.end method

.method public isEnumerated()Z
    .locals 2

    iget v0, p0, Lorg/h2/table/Column;->type:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getDependencies()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public isNullable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/Column;->nullable:Z

    return v0
.end method

.method public isPrimaryKey()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/Column;->primaryKey:Z

    return v0
.end method

.method public isWideningConversion(Lorg/h2/table/Column;)Z
    .locals 6

    iget v0, p0, Lorg/h2/table/Column;->type:I

    iget v1, p1, Lorg/h2/table/Column;->type:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-wide v0, p0, Lorg/h2/table/Column;->precision:J

    iget-wide v3, p1, Lorg/h2/table/Column;->precision:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lorg/h2/table/Column;->scale:I

    iget v1, p1, Lorg/h2/table/Column;->scale:I

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v0, p0, Lorg/h2/table/Column;->nullable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lorg/h2/table/Column;->nullable:Z

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-boolean v0, p0, Lorg/h2/table/Column;->convertNullToDefault:Z

    iget-boolean v1, p1, Lorg/h2/table/Column;->convertNullToDefault:Z

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lorg/h2/table/Column;->primaryKey:Z

    iget-boolean v4, p1, Lorg/h2/table/Column;->primaryKey:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-boolean v3, p0, Lorg/h2/table/Column;->autoIncrement:Z

    if-nez v3, :cond_b

    iget-boolean v3, p1, Lorg/h2/table/Column;->autoIncrement:Z

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    if-nez v3, :cond_b

    iget-object v3, p1, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    if-nez v0, :cond_b

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    if-nez v0, :cond_b

    iget-object v0, p1, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    iget-boolean v0, p0, Lorg/h2/table/Column;->isComputed:Z

    if-nez v0, :cond_b

    iget-boolean p1, p1, Lorg/h2/table/Column;->isComputed:Z

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 p1, 0x1

    return p1

    :cond_b
    :goto_0
    return v2
.end method

.method public prepareExpression(Lorg/h2/engine/Session;)V
    .locals 9

    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/h2/table/TableFilter;

    iget-object v3, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/h2/table/TableFilter;-><init>(Lorg/h2/engine/Session;Lorg/h2/table/Table;Ljava/lang/String;ZLorg/h2/command/dml/Select;ILorg/h2/table/IndexHints;)V

    iput-object v0, p0, Lorg/h2/table/Column;->computeTableFilter:Lorg/h2/table/TableFilter;

    iget-object v1, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    :cond_0
    return-void
.end method

.method public removeCheckConstraint()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    iput-object v0, p0, Lorg/h2/table/Column;->checkConstraintSQL:Ljava/lang/String;

    return-void
.end method

.method public rename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    return-void
.end method

.method public setAutoIncrement(ZJJ)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/table/Column;->autoIncrement:Z

    iput-wide p2, p0, Lorg/h2/table/Column;->start:J

    iput-wide p4, p0, Lorg/h2/table/Column;->increment:J

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/h2/table/Column;->nullable:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/table/Column;->convertNullToDefault:Z

    :cond_0
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/table/Column;->comment:Ljava/lang/String;

    return-void
.end method

.method public setComputedExpression(Lorg/h2/expression/Expression;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/table/Column;->isComputed:Z

    iput-object p1, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setConvertNullToDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/table/Column;->convertNullToDefault:Z

    return-void
.end method

.method public setDefaultExpression(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setEnumerators([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/table/Column;->enumerators:[Ljava/lang/String;

    return-void
.end method

.method public setNullable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/table/Column;->nullable:Z

    return-void
.end method

.method public setOriginalSQL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/table/Column;->originalSQL:Ljava/lang/String;

    return-void
.end method

.method public setPrecision(J)V
    .locals 0

    iput-wide p1, p0, Lorg/h2/table/Column;->precision:J

    return-void
.end method

.method public setPrimaryKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/table/Column;->primaryKey:Z

    return-void
.end method

.method public setSelectivity(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    const/16 p1, 0x64

    :cond_1
    :goto_0
    iput p1, p0, Lorg/h2/table/Column;->selectivity:I

    return-void
.end method

.method public setSequence(Lorg/h2/schema/Sequence;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/table/Column;->sequence:Lorg/h2/schema/Sequence;

    return-void
.end method

.method public setTable(Lorg/h2/table/Table;I)V
    .locals 0

    iput-object p1, p0, Lorg/h2/table/Column;->table:Lorg/h2/table/Table;

    iput p2, p0, Lorg/h2/table/Column;->columnId:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/table/Column;->visible:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    return-object v0
.end method

.method public validateConvertUpdateSequence(Lorg/h2/engine/Session;Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/h2/table/Column;->defaultExpression:Lorg/h2/expression/Expression;

    .line 3
    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    if-nez p2, :cond_1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget v1, p0, Lorg/h2/table/Column;->type:I

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget-boolean v1, p0, Lorg/h2/table/Column;->primaryKey:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lorg/h2/engine/Session;->setLastIdentity(Lorg/h2/value/Value;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    if-ne p2, v2, :cond_9

    .line 43
    .line 44
    iget-boolean v6, p0, Lorg/h2/table/Column;->convertNullToDefault:Z

    .line 45
    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iget v0, p0, Lorg/h2/table/Column;->type:I

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    :cond_2
    if-ne p2, v2, :cond_9

    .line 59
    .line 60
    iget-boolean v0, p0, Lorg/h2/table/Column;->nullable:Z

    .line 61
    .line 62
    if-nez v0, :cond_9

    .line 63
    .line 64
    iget-boolean p2, v1, Lorg/h2/engine/Mode;->convertInsertNullToZero:Z

    .line 65
    .line 66
    if-eqz p2, :cond_8

    .line 67
    .line 68
    iget p2, p0, Lorg/h2/table/Column;->type:I

    .line 69
    .line 70
    invoke-static {p2}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iget-boolean v0, p2, Lorg/h2/value/DataType;->decimal:Z

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-static {v5}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    :goto_1
    iget v0, p0, Lorg/h2/table/Column;->type:I

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    iget p2, p2, Lorg/h2/value/DataType;->type:I

    .line 90
    .line 91
    const/16 v0, 0xb

    .line 92
    .line 93
    if-ne p2, v0, :cond_4

    .line 94
    .line 95
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionStart()J

    .line 96
    .line 97
    .line 98
    move-result-wide v6

    .line 99
    invoke-static {v6, v7}, Lorg/h2/value/ValueTimestamp;->fromMillis(J)Lorg/h2/value/ValueTimestamp;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    const/16 v0, 0x18

    .line 105
    .line 106
    if-ne p2, v0, :cond_5

    .line 107
    .line 108
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionStart()J

    .line 109
    .line 110
    .line 111
    move-result-wide v6

    .line 112
    invoke-static {v6, v7}, Lorg/h2/util/DateTimeUtils;->dateValueFromDate(J)J

    .line 113
    .line 114
    .line 115
    move-result-wide v8

    .line 116
    invoke-static {v6, v7}, Lorg/h2/util/DateTimeUtils;->nanosFromDate(J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v6

    .line 120
    invoke-static {v8, v9, v6, v7, v5}, Lorg/h2/value/ValueTimestampTimeZone;->fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    goto :goto_2

    .line 125
    :cond_5
    const/16 v0, 0x9

    .line 126
    .line 127
    if-ne p2, v0, :cond_6

    .line 128
    .line 129
    invoke-static {v3, v4}, Lorg/h2/value/ValueTime;->fromNanos(J)Lorg/h2/value/ValueTime;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    goto :goto_2

    .line 134
    :cond_6
    const/16 v0, 0xa

    .line 135
    .line 136
    if-ne p2, v0, :cond_7

    .line 137
    .line 138
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransactionStart()J

    .line 139
    .line 140
    .line 141
    move-result-wide v6

    .line 142
    invoke-static {v6, v7}, Lorg/h2/value/ValueDate;->fromMillis(J)Lorg/h2/value/ValueDate;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    goto :goto_2

    .line 147
    :cond_7
    const-string p2, ""

    .line 148
    .line 149
    invoke-static {p2}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    goto :goto_1

    .line 154
    :cond_8
    const/16 p1, 0x5bce

    .line 155
    .line 156
    iget-object p2, p0, Lorg/h2/table/Column;->name:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    throw p1

    .line 163
    :cond_9
    :goto_2
    iget-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    .line 164
    .line 165
    if-eqz v0, :cond_b

    .line 166
    .line 167
    iget-object v0, p0, Lorg/h2/table/Column;->resolver:Lorg/h2/table/SingleColumnResolver;

    .line 168
    .line 169
    invoke-virtual {v0, p2}, Lorg/h2/table/SingleColumnResolver;->setValue(Lorg/h2/value/Value;)V

    .line 170
    .line 171
    .line 172
    monitor-enter p0

    .line 173
    :try_start_1
    iget-object v0, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    .line 174
    .line 175
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-virtual {v0}, Lorg/h2/value/Value;->getBoolean()Ljava/lang/Boolean;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-nez v0, :cond_a

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_a
    iget-object p1, p0, Lorg/h2/table/Column;->checkConstraint:Lorg/h2/expression/Expression;

    .line 194
    .line 195
    invoke-virtual {p1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    const/16 p2, 0x5bd9

    .line 200
    .line 201
    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    throw p1

    .line 206
    :catchall_0
    move-exception p1

    .line 207
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    throw p1

    .line 209
    :cond_b
    :goto_3
    iget-boolean v0, v1, Lorg/h2/engine/Mode;->convertOnlyToSmallerScale:Z

    .line 210
    .line 211
    iget v1, p0, Lorg/h2/table/Column;->scale:I

    .line 212
    .line 213
    invoke-virtual {p2, v0, v1}, Lorg/h2/value/Value;->convertScale(ZI)Lorg/h2/value/Value;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    iget-wide v0, p0, Lorg/h2/table/Column;->precision:J

    .line 218
    .line 219
    const/16 v2, 0x80

    .line 220
    .line 221
    const/16 v6, 0x7f

    .line 222
    .line 223
    cmp-long v7, v0, v3

    .line 224
    .line 225
    if-lez v7, :cond_d

    .line 226
    .line 227
    invoke-virtual {p2, v0, v1}, Lorg/h2/value/Value;->checkPrecision(J)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_d

    .line 232
    .line 233
    invoke-virtual {p2}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-le v0, v6, :cond_c

    .line 242
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string p1, "..."

    .line 256
    .line 257
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    :cond_c
    invoke-virtual {p0}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    const-string v1, " ("

    .line 269
    .line 270
    invoke-static {p1, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p2}, Lorg/h2/value/Value;->getPrecision()J

    .line 275
    .line 276
    .line 277
    move-result-wide v1

    .line 278
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string p2, ")"

    .line 282
    .line 283
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    const/16 p2, 0x55f1

    .line 295
    .line 296
    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    throw p1

    .line 301
    :cond_d
    invoke-virtual {p0}, Lorg/h2/table/Column;->isEnumerated()Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_10

    .line 306
    .line 307
    iget-object v0, p0, Lorg/h2/table/Column;->enumerators:[Ljava/lang/String;

    .line 308
    .line 309
    invoke-static {v0, p2}, Lorg/h2/value/ValueEnum;->isValid([Ljava/lang/String;Lorg/h2/value/Value;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-nez v0, :cond_f

    .line 314
    .line 315
    invoke-virtual {p2}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 320
    .line 321
    .line 322
    move-result p2

    .line 323
    if-le p2, v6, :cond_e

    .line 324
    .line 325
    new-instance p2, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const-string p1, "..."

    .line 338
    .line 339
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    :cond_e
    invoke-virtual {p0}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    filled-new-array {p2, p1}, [Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    const/16 p2, 0x560e

    .line 355
    .line 356
    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    throw p1

    .line 361
    :cond_f
    iget-object v0, p0, Lorg/h2/table/Column;->enumerators:[Ljava/lang/String;

    .line 362
    .line 363
    invoke-static {v0, p2}, Lorg/h2/value/ValueEnum;->get([Ljava/lang/String;Lorg/h2/value/Value;)Lorg/h2/value/ValueEnum;

    .line 364
    .line 365
    .line 366
    move-result-object p2

    .line 367
    :cond_10
    invoke-direct {p0, p1, p2}, Lorg/h2/table/Column;->updateSequenceIfRequired(Lorg/h2/engine/Session;Lorg/h2/value/Value;)V

    .line 368
    .line 369
    .line 370
    return-object p2

    .line 371
    :catchall_1
    move-exception p1

    .line 372
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 373
    throw p1
.end method

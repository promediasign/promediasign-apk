.class public Lorg/h2/command/dml/Set;
.super Lorg/h2/command/Prepared;
.source "SourceFile"


# instance fields
.field private expression:Lorg/h2/expression/Expression;

.field private stringValue:Ljava/lang/String;

.field private stringValueList:[Ljava/lang/String;

.field private final type:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    iput p2, p0, Lorg/h2/command/dml/Set;->type:I

    return-void
.end method

.method private addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Lorg/h2/engine/Session;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private addOrUpdateSetting(Lorg/h2/engine/Session;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lorg/h2/engine/Database;->findSetting(Ljava/lang/String;)Lorg/h2/engine/Setting;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v1

    new-instance v2, Lorg/h2/engine/Setting;

    invoke-direct {v2, v0, v1, p2}, Lorg/h2/engine/Setting;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;)V

    const/4 p2, 0x1

    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p3, :cond_3

    if-nez p2, :cond_2

    invoke-virtual {v1}, Lorg/h2/engine/Setting;->getStringValue()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1, p3}, Lorg/h2/engine/Setting;->setStringValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {v1}, Lorg/h2/engine/Setting;->getIntValue()I

    move-result p3

    if-ne p3, p4, :cond_4

    return-void

    :cond_4
    invoke-virtual {v1, p4}, Lorg/h2/engine/Setting;->setIntValue(I)V

    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :goto_2
    return-void
.end method

.method private getIntValue()I
    .locals 2

    iget-object v0, p0, Lorg/h2/command/dml/Set;->expression:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/Set;->expression:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0x43

    return v0
.end method

.method public isTransactional()Z
    .locals 2

    iget v0, p0, Lorg/h2/command/dml/Set;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public needRecompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setExpression(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Set;->expression:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setInt(I)V
    .locals 0

    invoke-static {p1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/dml/Set;->expression:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public setStringArray([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Set;->stringValueList:[Ljava/lang/String;

    return-void
.end method

.method public update()I
    .locals 11

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iget v1, p0, Lorg/h2/command/dml/Set;->type:I

    invoke-static {v1}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/h2/command/dml/Set;->type:I

    const v3, 0x15fe9

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/h2/command/dml/Set;->type:I

    .line 1
    invoke-static {v1, v2}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    goto/16 :goto_19

    .line 2
    :pswitch_1
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "LAZY_QUERY_EXECUTION"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    if-ne v1, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v2, v7}, Lorg/h2/engine/Session;->setLazyQueryExecution(Z)V

    goto/16 :goto_19

    :pswitch_2
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-eqz v1, :cond_4

    if-ne v1, v7, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "FORCE_JOIN_ORDER"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_2
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    if-ne v1, v7, :cond_5

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v2, v7}, Lorg/h2/engine/Session;->setForceJoinOrder(Z)V

    goto/16 :goto_19

    :pswitch_3
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-eqz v1, :cond_7

    if-ne v1, v7, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, "BATCH_JOINS"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_7
    :goto_4
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    if-ne v1, v7, :cond_8

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v2, v7}, Lorg/h2/engine/Session;->setJoinBatchEnabled(Z)V

    goto/16 :goto_19

    :pswitch_4
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    iget-object v1, p0, Lorg/h2/command/dml/Set;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/result/RowFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setRowFactory(Lorg/h2/result/RowFactory;)V

    goto/16 :goto_19

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_5
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-lt v1, v7, :cond_9

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setQueryStatisticsMaxEntries(I)V

    goto/16 :goto_19

    :cond_9
    const-string v0, "QUERY_STATISTICS_MAX_ENTRIES"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_6
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_b

    if-gt v1, v7, :cond_b

    if-ne v1, v7, :cond_a

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v0, v7}, Lorg/h2/engine/Database;->setQueryStatistics(Z)V

    goto/16 :goto_19

    :cond_b
    const-string v0, "QUERY_STATISTICS"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_7
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_c

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setRetentionTime(I)V

    :goto_7
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    :goto_8
    invoke-direct {p0, v1, v5, v2}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_19

    :cond_c
    const-string v0, "RETENTION_TIME"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_8
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getFirstUserTable()Lorg/h2/table/Table;

    move-result-object v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setJavaObjectSerializerName(Ljava/lang/String;)V

    :goto_9
    iget-object v2, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v6}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_19

    :cond_d
    const v0, 0x1601d

    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_9
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getFirstUserTable()Lorg/h2/table/Table;

    move-result-object v2

    if-nez v2, :cond_10

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    const-string v4, "SIGNED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/h2/value/CompareMode;->getStrength()I

    move-result v2

    invoke-static {v3, v2, v6}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;IZ)Lorg/h2/value/CompareMode;

    move-result-object v2

    goto :goto_a

    :cond_e
    iget-object v3, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    const-string v4, "UNSIGNED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/h2/value/CompareMode;->getStrength()I

    move-result v2

    invoke-static {v3, v2, v7}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;IZ)Lorg/h2/value/CompareMode;

    move-result-object v2

    :goto_a
    iget-object v3, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    :goto_b
    invoke-direct {p0, v1, v3, v6}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setCompareMode(Lorg/h2/value/CompareMode;)V

    goto/16 :goto_19

    :cond_f
    const-string v0, "BINARY_COLLATION"

    iget-object v1, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_10
    invoke-virtual {v2}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_a
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    if-ne v1, v7, :cond_11

    goto :goto_c

    :cond_11
    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v2, v7}, Lorg/h2/engine/Session;->setRedoLogBinary(Z)V

    goto/16 :goto_19

    :pswitch_b
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_12

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v1}, Lorg/h2/engine/Session;->setQueryTimeout(I)V

    goto/16 :goto_19

    :cond_12
    const-string v0, "QUERY_TIMEOUT"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_c
    iget-object v1, p0, Lorg/h2/command/dml/Set;->expression:Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/h2/engine/Session;->setVariable(Ljava/lang/String;Lorg/h2/value/Value;)V

    goto/16 :goto_19

    :pswitch_d
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isStarting()Z

    move-result v2

    if-eqz v2, :cond_38

    goto/16 :goto_7

    :pswitch_e
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-eqz v1, :cond_15

    if-eq v1, v7, :cond_14

    if-ne v1, v4, :cond_13

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v7}, Lorg/h2/engine/Database;->setExclusiveSession(Lorg/h2/engine/Session;Z)V

    goto/16 :goto_19

    :cond_13
    const-string v0, "EXCLUSIVE"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_14
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v6}, Lorg/h2/engine/Database;->setExclusiveSession(Lorg/h2/engine/Session;Z)V

    goto/16 :goto_19

    :cond_15
    invoke-virtual {v0, v5, v6}, Lorg/h2/engine/Database;->setExclusiveSession(Lorg/h2/engine/Session;Z)V

    goto/16 :goto_19

    :pswitch_f
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_16

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setMaxOperationMemory(I)V

    goto/16 :goto_19

    :cond_16
    const-string v0, "MAX_OPERATION_MEMORY"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_10
    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v1

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ne v2, v7, :cond_17

    goto :goto_d

    :cond_17
    const/4 v7, 0x0

    :goto_d
    if-ne v1, v7, :cond_18

    goto/16 :goto_19

    :cond_18
    const v0, 0x16015

    const-string v1, "MVCC"

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_11
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_1a

    if-gt v1, v7, :cond_1a

    if-ne v1, v7, :cond_19

    goto :goto_e

    :cond_19
    const/4 v7, 0x0

    :goto_e
    invoke-virtual {v0, v7}, Lorg/h2/engine/Database;->setReferentialIntegrity(Z)V

    goto/16 :goto_19

    :cond_1a
    const-string v0, "REFERENTIAL_INTEGRITY"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_12
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_1c

    if-gt v1, v7, :cond_1c

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    if-ne v1, v7, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v7, 0x0

    :goto_f
    invoke-virtual {v2, v7}, Lorg/h2/engine/Session;->setUndoLogEnabled(Z)V

    goto/16 :goto_19

    :cond_1c
    const-string v0, "UNDO_LOG"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_13
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/command/dml/Set;->stringValueList:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/h2/engine/Session;->setSchemaSearchPath([Ljava/lang/String;)V

    goto/16 :goto_19

    :pswitch_14
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_10

    :cond_1d
    const/4 v7, 0x0

    :goto_10
    invoke-virtual {v0, v7}, Lorg/h2/engine/Database;->setOptimizeReuseResults(Z)V

    goto/16 :goto_19

    :pswitch_15
    iget-object v1, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2, v1}, Lorg/h2/engine/Session;->setCurrentSchema(Lorg/h2/schema/Schema;)V

    goto/16 :goto_19

    :pswitch_16
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ne v1, v7, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v7, 0x0

    :goto_11
    invoke-virtual {v0, v7}, Lorg/h2/engine/Database;->setMultiThreaded(Z)V

    goto/16 :goto_19

    :pswitch_17
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_1f

    if-gt v2, v4, :cond_1f

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setAllowLiterals(I)V

    goto/16 :goto_8

    :cond_1f
    const-string v0, "ALLOW_LITERALS"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_18
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    iget-object v2, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/tools/CompressTool;->getCompressAlgorithm(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_20

    goto :goto_12

    :cond_20
    iget-object v5, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    :goto_12
    invoke-virtual {v0, v5}, Lorg/h2/engine/Database;->setLobCompressionAlgorithm(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_19
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_21

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setMaxLengthInplaceLob(I)V

    goto/16 :goto_7

    :cond_21
    const-string v0, "MAX_LENGTH_INPLACE_LOB"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_1a
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_22

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setMaxMemoryUndo(I)V

    goto/16 :goto_7

    :cond_22
    const-string v0, "MAX_MEMORY_UNDO"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_1b
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_23

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/engine/Session;->setThrottle(I)V

    goto/16 :goto_19

    :cond_23
    const-string v0, "THROTTLE"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_1c
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLogMode()I

    move-result v2

    if-eq v1, v2, :cond_38

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setLogMode(I)V

    goto/16 :goto_19

    :pswitch_1d
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_24

    goto :goto_13

    :cond_24
    if-ltz v2, :cond_25

    :goto_13
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setCloseDelay(I)V

    goto/16 :goto_7

    :cond_25
    const-string v0, "DB_CLOSE_DELAY"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_1e
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setLockMode(I)V

    goto/16 :goto_7

    :pswitch_1f
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_26

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setMaxMemoryRows(I)V

    goto/16 :goto_7

    :cond_26
    const-string v0, "MAX_MEMORY_ROWS"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_20
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    iget-object v1, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setEventListenerClass(Ljava/lang/String;)V

    goto/16 :goto_19

    :pswitch_21
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_27

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setWriteDelay(I)V

    goto/16 :goto_7

    :cond_27
    const-string v0, "WRITE_DELAY"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_22
    const-string v2, "TRUE"

    iget-object v3, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto/16 :goto_19

    :cond_28
    iget-object v2, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getCluster()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string v3, "\'\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/engine/User;->checkAdmin()V

    :cond_29
    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setCluster(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v3, v1, v2, v6}, Lorg/h2/command/dml/Set;->addOrUpdateSetting(Lorg/h2/engine/Session;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Lorg/h2/engine/Session;->commit(Z)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_19

    :catchall_0
    move-exception v0

    goto :goto_14

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1

    :goto_14
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :pswitch_23
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/CompareMode;->isBinaryUnsigned()Z

    move-result v2

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    const-string v10, "OFF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    invoke-static {v5, v6, v2}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;IZ)Lorg/h2/value/CompareMode;

    move-result-object v2

    goto :goto_17

    :cond_2a
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v5

    const-string v9, " STRENGTH "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    if-ne v5, v9, :cond_2b

    const-string v4, "IDENTICAL"

    :goto_15
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_2b
    if-nez v5, :cond_2c

    const-string v4, "PRIMARY"

    goto :goto_15

    :cond_2c
    if-ne v5, v7, :cond_2d

    const-string v4, "SECONDARY"

    goto :goto_15

    :cond_2d
    if-ne v5, v4, :cond_2e

    const-string v4, "TERTIARY"

    goto :goto_15

    :cond_2e
    :goto_16
    iget-object v4, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;IZ)Lorg/h2/value/CompareMode;

    move-result-object v2

    :goto_17
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/h2/value/CompareMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto/16 :goto_19

    :cond_2f
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getFirstUserTable()Lorg/h2/table/Table;

    move-result-object v4

    if-nez v4, :cond_30

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    :cond_30
    invoke-virtual {v4}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_24
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_31

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    const/high16 v3, 0x100000

    mul-int v2, v2, v3

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getTraceSystem()Lorg/h2/message/TraceSystem;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/h2/message/TraceSystem;->setMaxFileSize(I)V

    goto/16 :goto_7

    :cond_31
    const-string v0, "TRACE_MAX_FILE_SIZE"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_25
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getCurrentObjectId()I

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getTraceSystem()Lorg/h2/message/TraceSystem;

    move-result-object v1

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/message/TraceSystem;->setLevelFile(I)V

    goto/16 :goto_19

    :pswitch_26
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getCurrentObjectId()I

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getTraceSystem()Lorg/h2/message/TraceSystem;

    move-result-object v1

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/message/TraceSystem;->setLevelSystemOut(I)V

    goto/16 :goto_19

    :pswitch_27
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_32

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setCacheSize(I)V

    goto/16 :goto_7

    :cond_32
    const-string v0, "CACHE_SIZE"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_28
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/h2/engine/Database;->setDefaultTableType(I)V

    goto/16 :goto_7

    :pswitch_29
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_33

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    goto/16 :goto_7

    :cond_33
    const-string v0, "DEFAULT_LOCK_TIMEOUT"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_2a
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_34

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/engine/Session;->setLockTimeout(I)V

    goto/16 :goto_19

    :cond_34
    const-string v0, "LOCK_TIMEOUT"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_2b
    iget-object v1, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/engine/Mode;->getInstance(Ljava/lang/String;)Lorg/h2/engine/Mode;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    if-eq v2, v1, :cond_38

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setMode(Lorg/h2/engine/Mode;)V

    goto :goto_19

    :cond_35
    const v0, 0x15fe8

    iget-object v1, p0, Lorg/h2/command/dml/Set;->stringValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_2c
    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ltz v2, :cond_36

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v7, 0x100000

    mul-long v2, v2, v7

    invoke-virtual {v0, v2, v3}, Lorg/h2/engine/Database;->setMaxLogSize(J)V

    goto/16 :goto_7

    :cond_36
    const-string v0, "MAX_LOG_SIZE"

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :pswitch_2d
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/Set;->getIntValue()I

    move-result v2

    if-ne v2, v7, :cond_37

    goto :goto_18

    :cond_37
    const/4 v7, 0x0

    :goto_18
    invoke-virtual {v0, v7}, Lorg/h2/engine/Database;->setIgnoreCase(Z)V

    goto/16 :goto_7

    :cond_38
    :goto_19
    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationMetaId()J

    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

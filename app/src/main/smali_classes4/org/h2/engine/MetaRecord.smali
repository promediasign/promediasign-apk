.class public Lorg/h2/engine/MetaRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/h2/engine/MetaRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final id:I

.field private final objectType:I

.field private final sql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/engine/DbObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getId()I

    move-result v0

    iput v0, p0, Lorg/h2/engine/MetaRecord;->id:I

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getType()I

    move-result v0

    iput v0, p0, Lorg/h2/engine/MetaRecord;->objectType:I

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/h2/result/SearchRow;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    iput v0, p0, Lorg/h2/engine/MetaRecord;->id:I

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/value/Value;->getInt()I

    move-result v0

    iput v0, p0, Lorg/h2/engine/MetaRecord;->objectType:I

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    return-void
.end method

.method private getCreateOrder()I
    .locals 2

    iget v0, p0, Lorg/h2/engine/MetaRecord;->objectType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/engine/MetaRecord;->objectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    const/16 v0, 0xd

    return v0

    :pswitch_1
    const/16 v0, 0xe

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x6

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_6
    const/16 v0, 0xc

    return v0

    :pswitch_7
    const/16 v0, 0xb

    return v0

    :pswitch_8
    const/4 v0, 0x0

    return v0

    :pswitch_9
    const/16 v0, 0x9

    return v0

    :pswitch_a
    const/16 v0, 0xa

    return v0

    :pswitch_b
    const/4 v0, 0x5

    return v0

    :pswitch_c
    const/4 v0, 0x1

    return v0

    :pswitch_d
    const/16 v0, 0x8

    return v0

    :pswitch_e
    const/4 v0, 0x7

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/h2/engine/MetaRecord;

    invoke-virtual {p0, p1}, Lorg/h2/engine/MetaRecord;->compareTo(Lorg/h2/engine/MetaRecord;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/h2/engine/MetaRecord;)I
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/h2/engine/MetaRecord;->getCreateOrder()I

    move-result v0

    invoke-direct {p1}, Lorg/h2/engine/MetaRecord;->getCreateOrder()I

    move-result v1

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/MetaRecord;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/engine/MetaRecord;->getId()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public execute(Lorg/h2/engine/Database;Lorg/h2/engine/Session;Lorg/h2/api/DatabaseEventListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p2

    iget v0, p0, Lorg/h2/engine/MetaRecord;->id:I

    invoke-virtual {p2, v0}, Lorg/h2/command/Prepared;->setObjectId(I)V

    invoke-virtual {p2}, Lorg/h2/command/Prepared;->update()I
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/h2/message/DbException;->addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    invoke-interface {p3, v0, p1}, Lorg/h2/api/DatabaseEventListener;->exceptionThrown(Ljava/sql/SQLException;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    throw p2
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/MetaRecord;->id:I

    return v0
.end method

.method public getObjectType()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/MetaRecord;->objectType:I

    return v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public setRecord(Lorg/h2/result/SearchRow;)V
    .locals 2

    iget v0, p0, Lorg/h2/engine/MetaRecord;->id:I

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    const/4 v0, 0x1

    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    iget v0, p0, Lorg/h2/engine/MetaRecord;->objectType:I

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    iget-object v0, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MetaRecord [id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/h2/engine/MetaRecord;->id:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", objectType="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/h2/engine/MetaRecord;->objectType:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", sql="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/h2/engine/MetaRecord;->sql:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, "]"

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.class public Lorg/h2/expression/SequenceValue;
.super Lorg/h2/expression/Expression;
.source "SourceFile"


# instance fields
.field private final sequence:Lorg/h2/schema/Sequence;


# direct methods
.method public constructor <init>(Lorg/h2/schema/Sequence;)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    iput-object p1, p0, Lorg/h2/expression/SequenceValue;->sequence:Lorg/h2/schema/Sequence;

    return-void
.end method


# virtual methods
.method public getCost()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDisplaySize()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(NEXT VALUE FOR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/expression/SequenceValue;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 3

    iget-object v0, p0, Lorg/h2/expression/SequenceValue;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v0, p1}, Lorg/h2/schema/Sequence;->getNext(Lorg/h2/engine/Session;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/h2/engine/Session;->setLastIdentity(Lorg/h2/value/Value;)V

    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object p1

    return-object p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_0
    iget-object v0, p0, Lorg/h2/expression/SequenceValue;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {p1, v0}, Lorg/h2/expression/ExpressionVisitor;->addDependency(Lorg/h2/engine/DbObject;)V

    return v1

    :pswitch_1
    iget-object v0, p0, Lorg/h2/expression/SequenceValue;->sequence:Lorg/h2/schema/Sequence;

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getModificationId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/h2/expression/ExpressionVisitor;->addDataModificationId(J)V

    :pswitch_2
    return v1

    :pswitch_3
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 0

    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 0

    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 0

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

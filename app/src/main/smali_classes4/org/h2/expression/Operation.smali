.class public Lorg/h2/expression/Operation;
.super Lorg/h2/expression/Expression;
.source "SourceFile"


# static fields
.field public static final CONCAT:I = 0x0

.field public static final DIVIDE:I = 0x4

.field public static final MINUS:I = 0x2

.field public static final MODULUS:I = 0x6

.field public static final MULTIPLY:I = 0x3

.field public static final NEGATE:I = 0x5

.field public static final PLUS:I = 0x1


# instance fields
.field private convertRight:Z

.field private dataType:I

.field private left:Lorg/h2/expression/Expression;

.field private opType:I

.field private right:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/expression/Operation;->convertRight:Z

    iput p1, p0, Lorg/h2/expression/Operation;->opType:I

    iput-object p2, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    iput-object p3, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    return-void
.end method

.method private getOperationToken()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/h2/expression/Operation;->opType:I

    const-string v1, "-"

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "opType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/expression/Operation;->opType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    const-string v0, "%"

    return-object v0

    :pswitch_1
    return-object v1

    :pswitch_2
    const-string v0, "/"

    return-object v0

    :pswitch_3
    const-string v0, "*"

    return-object v0

    :pswitch_4
    return-object v1

    :pswitch_5
    const-string v0, "+"

    return-object v0

    :pswitch_6
    const-string v0, "||"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private swap()V
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    iput-object v1, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    iput-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    return-void
.end method


# virtual methods
.method public getCost()I
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getCost()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getDisplaySize()I
    .locals 4

    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/h2/expression/Operation;->opType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public getPrecision()J
    .locals 4

    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/h2/expression/Operation;->opType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    :cond_1
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/h2/expression/Operation;->opType:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "- "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    .line 33
    .line 34
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, " "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lorg/h2/expression/Operation;->getOperationToken()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    const-string v1, "("

    .line 60
    .line 61
    const-string v2, ")"

    .line 62
    .line 63
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method public getScale()I
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getScale()I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getScale()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getScale()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/h2/expression/Operation;->dataType:I

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 4

    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    iget v1, p0, Lorg/h2/expression/Operation;->dataType:I

    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    iget-boolean v2, p0, Lorg/h2/expression/Operation;->convertRight:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/h2/expression/Operation;->dataType:I

    invoke-virtual {v1, v2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v1

    :cond_1
    :goto_0
    iget v2, p0, Lorg/h2/expression/Operation;->opType:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/h2/expression/Operation;->opType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_0
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, p1, :cond_3

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->modulus(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    :cond_3
    :goto_1
    return-object p1

    :pswitch_1
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/h2/value/Value;->negate()Lorg/h2/value/Value;

    move-result-object v0

    :goto_2
    return-object v0

    :pswitch_2
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, p1, :cond_6

    if-ne v1, p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->divide(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    :cond_6
    :goto_3
    return-object p1

    :pswitch_3
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, p1, :cond_8

    if-ne v1, p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->multiply(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    :cond_8
    :goto_4
    return-object p1

    :pswitch_4
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, p1, :cond_a

    if-ne v1, p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    :cond_a
    :goto_5
    return-object p1

    :pswitch_5
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, p1, :cond_c

    if-ne v1, p1, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v0, v1}, Lorg/h2/value/Value;->add(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p1

    :cond_c
    :goto_6
    return-object p1

    :pswitch_6
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object p1

    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v2, :cond_e

    iget-boolean p1, p1, Lorg/h2/engine/Mode;->nullConcatIsNull:Z

    if-eqz p1, :cond_d

    return-object v2

    :cond_d
    return-object v1

    :cond_e
    if-ne v1, v2, :cond_10

    iget-boolean p1, p1, Lorg/h2/engine/Mode;->nullConcatIsNull:Z

    if-eqz p1, :cond_f

    return-object v2

    :cond_f
    return-object v0

    :cond_10
    invoke-virtual {v0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    :cond_0
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    iget v3, v0, Lorg/h2/expression/Operation;->opType:I

    const/16 v4, 0xd

    const/4 v5, -0x1

    const/4 v6, 0x6

    packed-switch v3, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lorg/h2/expression/Operation;->opType:I

    .line 1
    invoke-static {v2, v3}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    goto/16 :goto_8

    .line 2
    :pswitch_0
    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getType()I

    move-result v2

    iput v2, v0, Lorg/h2/expression/Operation;->dataType:I

    if-ne v2, v5, :cond_19

    :cond_0
    iput v6, v0, Lorg/h2/expression/Operation;->dataType:I

    goto/16 :goto_8

    :pswitch_1
    iget-object v2, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    iget-object v2, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getType()I

    move-result v2

    iget-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getType()I

    move-result v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    if-ne v2, v5, :cond_3

    if-ne v3, v5, :cond_3

    :cond_2
    iget v2, v0, Lorg/h2/expression/Operation;->opType:I

    if-ne v2, v7, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->allowPlusForStringConcat:Z

    if-eqz v2, :cond_0

    iput v4, v0, Lorg/h2/expression/Operation;->dataType:I

    :goto_0
    iput v8, v0, Lorg/h2/expression/Operation;->opType:I

    goto/16 :goto_8

    :cond_3
    const/16 v4, 0xa

    const/16 v5, 0xb

    const/16 v9, 0x9

    if-eq v2, v4, :cond_5

    if-eq v2, v5, :cond_5

    if-eq v2, v9, :cond_5

    if-eq v3, v4, :cond_5

    if-eq v3, v5, :cond_5

    if-ne v3, v9, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v2, v3}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v2

    iput v2, v0, Lorg/h2/expression/Operation;->dataType:I

    invoke-static {v2}, Lorg/h2/value/DataType;->isStringType(I)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/Mode;->allowPlusForStringConcat:Z

    if-eqz v2, :cond_19

    goto :goto_0

    :cond_5
    :goto_1
    iget v10, v0, Lorg/h2/expression/Operation;->opType:I

    const-string v12, "SECOND"

    const/4 v13, 0x7

    const/16 v14, 0x8

    const-string v16, "DAY"

    const/4 v4, 0x4

    const-string v15, "DATEADD"

    const/4 v11, 0x2

    if-ne v10, v7, :cond_b

    invoke-static {v2, v3}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v10

    if-eq v3, v10, :cond_6

    invoke-direct/range {p0 .. p0}, Lorg/h2/expression/Operation;->swap()V

    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    :cond_6
    if-ne v2, v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-static {v2, v15}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    iget-object v3, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v7, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    iget-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v11, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-virtual {v2}, Lorg/h2/expression/Function;->doneWithParameters()V

    invoke-virtual {v2, v1}, Lorg/h2/expression/Function;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    return-object v1

    :cond_7
    if-eq v2, v6, :cond_a

    if-eq v2, v14, :cond_a

    if-ne v2, v13, :cond_8

    goto :goto_2

    :cond_8
    if-ne v2, v9, :cond_9

    if-ne v3, v9, :cond_9

    iput v9, v0, Lorg/h2/expression/Operation;->dataType:I

    return-object v0

    :cond_9
    if-ne v2, v9, :cond_18

    iput v5, v0, Lorg/h2/expression/Operation;->dataType:I

    return-object v0

    :cond_a
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-static {v2, v15}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    invoke-static {v12}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    new-instance v3, Lorg/h2/expression/Operation;

    const v4, 0x15180

    invoke-static {v4}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v4

    iget-object v5, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    const/4 v6, 0x3

    invoke-direct {v3, v6, v4, v5}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object v3, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v7, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    iget-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v11, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-virtual {v2}, Lorg/h2/expression/Function;->doneWithParameters()V

    invoke-virtual {v2, v1}, Lorg/h2/expression/Function;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    return-object v1

    :cond_b
    if-ne v10, v11, :cond_15

    const/4 v10, 0x0

    const/4 v9, 0x5

    const/16 v13, 0xa

    if-eq v2, v13, :cond_d

    if-ne v2, v5, :cond_c

    goto :goto_3

    :cond_c
    const/16 v4, 0xa

    goto :goto_4

    :cond_d
    :goto_3
    if-ne v3, v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-static {v2, v15}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    new-instance v3, Lorg/h2/expression/Operation;

    iget-object v4, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-direct {v3, v9, v4, v10}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v3, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v3

    iput-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v7, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    iget-object v3, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v11, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-virtual {v2}, Lorg/h2/expression/Function;->doneWithParameters()V

    invoke-virtual {v2, v1}, Lorg/h2/expression/Function;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    return-object v1

    :goto_4
    if-eq v2, v4, :cond_e

    if-ne v2, v5, :cond_f

    :cond_e
    if-eq v3, v6, :cond_14

    if-eq v3, v14, :cond_14

    const/4 v6, 0x7

    if-ne v3, v6, :cond_f

    goto :goto_6

    :cond_f
    if-eq v2, v4, :cond_10

    if-ne v2, v5, :cond_11

    :cond_10
    const/16 v4, 0x9

    goto :goto_5

    :cond_11
    const/16 v4, 0x9

    if-ne v2, v4, :cond_18

    if-ne v3, v4, :cond_18

    iput v4, v0, Lorg/h2/expression/Operation;->dataType:I

    return-object v0

    :goto_5
    if-ne v3, v4, :cond_12

    iput v5, v0, Lorg/h2/expression/Operation;->dataType:I

    return-object v0

    :cond_12
    const/16 v4, 0xa

    if-eq v3, v4, :cond_13

    if-ne v3, v5, :cond_18

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    const-string v3, "DATEDIFF"

    invoke-static {v2, v3}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    iget-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v7, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    iget-object v3, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v11, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-virtual {v2}, Lorg/h2/expression/Function;->doneWithParameters()V

    invoke-virtual {v2, v1}, Lorg/h2/expression/Function;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    return-object v1

    :cond_14
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v2

    invoke-static {v2, v15}, Lorg/h2/expression/Function;->getFunction(Lorg/h2/engine/Database;Ljava/lang/String;)Lorg/h2/expression/Function;

    move-result-object v2

    invoke-static {v12}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    new-instance v3, Lorg/h2/expression/Operation;

    const v4, 0x15180

    invoke-static {v4}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v4

    iget-object v5, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    const/4 v6, 0x3

    invoke-direct {v3, v6, v4, v5}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    new-instance v4, Lorg/h2/expression/Operation;

    invoke-direct {v4, v9, v3, v10}, Lorg/h2/expression/Operation;-><init>(ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    iput-object v4, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v4, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v3

    iput-object v3, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v7, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    iget-object v3, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v11, v3}, Lorg/h2/expression/Function;->setParameter(ILorg/h2/expression/Expression;)V

    invoke-virtual {v2}, Lorg/h2/expression/Function;->doneWithParameters()V

    invoke-virtual {v2, v1}, Lorg/h2/expression/Function;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v1

    return-object v1

    :cond_15
    const/4 v1, 0x3

    if-ne v10, v1, :cond_17

    const/16 v1, 0x9

    if-ne v2, v1, :cond_16

    :goto_7
    iput v1, v0, Lorg/h2/expression/Operation;->dataType:I

    iput-boolean v8, v0, Lorg/h2/expression/Operation;->convertRight:Z

    return-object v0

    :cond_16
    if-ne v3, v1, :cond_18

    invoke-direct/range {p0 .. p0}, Lorg/h2/expression/Operation;->swap()V

    goto :goto_7

    :cond_17
    const/16 v1, 0x9

    if-ne v10, v4, :cond_18

    if-ne v2, v1, :cond_18

    goto :goto_7

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v2

    iget-object v2, v2, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lorg/h2/expression/Operation;->getOperationToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/h2/value/DataType;->getDataType(I)Lorg/h2/value/DataType;

    move-result-object v2

    iget-object v2, v2, Lorg/h2/value/DataType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :pswitch_2
    iget-object v2, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2, v1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    iput v4, v0, Lorg/h2/expression/Operation;->dataType:I

    iget-object v2, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p0 .. p1}, Lorg/h2/expression/Operation;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    return-object v1

    :cond_19
    :goto_8
    iget-object v2, v0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    invoke-virtual/range {p0 .. p1}, Lorg/h2/expression/Operation;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v1

    return-object v1

    :cond_1b
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_0
    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/Operation;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/expression/Operation;->right:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    :cond_0
    return-void
.end method

.class public Lorg/h2/index/IndexCondition;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALWAYS_FALSE:I = 0x8

.field public static final END:I = 0x4

.field public static final EQUALITY:I = 0x1

.field public static final RANGE:I = 0x6

.field public static final SPATIAL_INTERSECTS:I = 0x10

.field public static final START:I = 0x2


# instance fields
.field private final column:Lorg/h2/table/Column;

.field private final compareType:I

.field private final expression:Lorg/h2/expression/Expression;

.field private expressionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private expressionQuery:Lorg/h2/command/dml/Query;


# direct methods
.method private constructor <init>(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/h2/index/IndexCondition;->compareType:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/h2/index/IndexCondition;->column:Lorg/h2/table/Column;

    iput-object p3, p0, Lorg/h2/index/IndexCondition;->expression:Lorg/h2/expression/Expression;

    return-void
.end method

.method private static compareTypeToString(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const-string v2, "&"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "EQUALITY"

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "START"

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "END"

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "ALWAYS_FALSE"

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_3
    const/16 v1, 0x10

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_4

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string p0, "SPATIAL_INTERSECTS"

    invoke-virtual {v0, p0}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_4
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)Lorg/h2/index/IndexCondition;
    .locals 1

    new-instance v0, Lorg/h2/index/IndexCondition;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/index/IndexCondition;-><init>(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)V

    return-object v0
.end method

.method public static getInList(Lorg/h2/expression/ExpressionColumn;Ljava/util/List;)Lorg/h2/index/IndexCondition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/expression/ExpressionColumn;",
            "Ljava/util/List<",
            "Lorg/h2/expression/Expression;",
            ">;)",
            "Lorg/h2/index/IndexCondition;"
        }
    .end annotation

    new-instance v0, Lorg/h2/index/IndexCondition;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/h2/index/IndexCondition;-><init>(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)V

    iput-object p1, v0, Lorg/h2/index/IndexCondition;->expressionList:Ljava/util/List;

    return-object v0
.end method

.method public static getInQuery(Lorg/h2/expression/ExpressionColumn;Lorg/h2/command/dml/Query;)Lorg/h2/index/IndexCondition;
    .locals 3

    new-instance v0, Lorg/h2/index/IndexCondition;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/h2/index/IndexCondition;-><init>(ILorg/h2/expression/ExpressionColumn;Lorg/h2/expression/Expression;)V

    iput-object p1, v0, Lorg/h2/index/IndexCondition;->expressionQuery:Lorg/h2/command/dml/Query;

    return-object v0
.end method


# virtual methods
.method public getColumn()Lorg/h2/table/Column;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/IndexCondition;->column:Lorg/h2/table/Column;

    return-object v0
.end method

.method public getCompareType()I
    .locals 1

    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    return v0
.end method

.method public getCurrentResult()Lorg/h2/result/ResultInterface;
    .locals 2

    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expressionQuery:Lorg/h2/command/dml/Query;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentValueList(Lorg/h2/engine/Session;)[Lorg/h2/value/Value;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expressionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/index/IndexCondition;->column:Lorg/h2/table/Column;

    invoke-virtual {v3, v2}, Lorg/h2/table/Column;->convert(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/value/Value;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object p1

    new-instance v0, Lorg/h2/index/IndexCondition$1;

    invoke-direct {v0, p0, p1}, Lorg/h2/index/IndexCondition$1;-><init>(Lorg/h2/index/IndexCondition;Lorg/h2/value/CompareMode;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public getExpression()Lorg/h2/expression/Expression;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expression:Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public getExpressionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expressionList:Ljava/util/List;

    return-object v0
.end method

.method public getExpressionQuery()Lorg/h2/command/dml/Query;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expressionQuery:Lorg/h2/command/dml/Query;

    return-object v0
.end method

.method public getMask(Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/IndexCondition;",
            ">;)I"
        }
    .end annotation

    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_1

    const/16 v2, 0x10

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_0
    return v2

    :pswitch_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_0

    sget-object p1, Lorg/h2/table/TableType;->TABLE:Lorg/h2/table/TableType;

    iget-object v0, p0, Lorg/h2/index/IndexCondition;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1

    :pswitch_2
    const/16 p1, 0x8

    return p1

    :cond_1
    return v3

    :cond_2
    return v2

    :cond_3
    return v1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSQL()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "FALSE"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lorg/h2/util/StatementBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/h2/index/IndexCondition;->column:Lorg/h2/table/Column;

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/h2/table/Column;->getSQL()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lorg/h2/index/IndexCondition;->compareType:I

    .line 25
    .line 26
    if-eqz v1, :cond_7

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq v1, v2, :cond_6

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    if-eq v1, v2, :cond_5

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    if-eq v1, v2, :cond_4

    .line 36
    .line 37
    const/4 v2, 0x4

    .line 38
    if-eq v1, v2, :cond_3

    .line 39
    .line 40
    const/16 v2, 0x10

    .line 41
    .line 42
    if-eq v1, v2, :cond_2

    .line 43
    .line 44
    const/16 v2, 0x29

    .line 45
    .line 46
    const-string v3, " IN("

    .line 47
    .line 48
    packed-switch v1, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, "type="

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget v2, p0, Lorg/h2/index/IndexCondition;->compareType:I

    .line 59
    .line 60
    invoke-static {v1, v2}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :pswitch_0
    const-string v1, " && "

    .line 65
    .line 66
    :goto_0
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :pswitch_1
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expressionQuery:Lorg/h2/command/dml/Query;

    .line 74
    .line 75
    invoke-virtual {v1}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :pswitch_2
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expressionList:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_1

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Lorg/h2/expression/Expression;

    .line 106
    .line 107
    const-string v4, ", "

    .line 108
    .line 109
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    const-string v1, " IS "

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    const-string v1, " < "

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    const-string v1, " <= "

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_5
    const-string v1, " > "

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_6
    const-string v1, " >= "

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_7
    const-string v1, " = "

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :goto_2
    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expression:Lorg/h2/expression/Expression;

    .line 139
    .line 140
    if-eqz v1, :cond_8

    .line 141
    .line 142
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 147
    .line 148
    .line 149
    :cond_8
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    return-object v0

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAlwaysFalse()Z
    .locals 2

    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnd()Z
    .locals 2

    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isEvaluatable()Z
    .locals 3

    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expression:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/h2/expression/ExpressionVisitor;->EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v0, v1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expressionList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Expression;

    sget-object v2, Lorg/h2/expression/ExpressionVisitor;->EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    iget-object v0, p0, Lorg/h2/index/IndexCondition;->expressionQuery:Lorg/h2/command/dml/Query;

    sget-object v1, Lorg/h2/expression/ExpressionVisitor;->EVALUATABLE_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    return v0
.end method

.method public isSpatialIntersects()Z
    .locals 2

    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isStart()Z
    .locals 3

    iget v0, p0, Lorg/h2/index/IndexCondition;->compareType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "column="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/index/IndexCondition;->column:Lorg/h2/table/Column;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", compareType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/IndexCondition;->compareType:I

    invoke-static {v1}, Lorg/h2/index/IndexCondition;->compareTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expressionList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expressionList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expressionQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/IndexCondition;->expressionQuery:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

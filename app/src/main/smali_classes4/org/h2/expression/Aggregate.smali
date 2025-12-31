.class public Lorg/h2/expression/Aggregate;
.super Lorg/h2/expression/Expression;
.source "SourceFile"


# static fields
.field private static final AGGREGATES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final AVG:I = 0x6

.field static final BIT_AND:I = 0xe

.field static final BIT_OR:I = 0xd

.field static final BOOL_AND:I = 0xc

.field static final BOOL_OR:I = 0xb

.field public static final COUNT:I = 0x1

.field public static final COUNT_ALL:I = 0x0

.field public static final GROUP_CONCAT:I = 0x2

.field static final HISTOGRAM:I = 0x10

.field static final MAX:I = 0x5

.field static final MIN:I = 0x4

.field static final SELECTIVITY:I = 0xf

.field static final STDDEV_POP:I = 0x7

.field static final STDDEV_SAMP:I = 0x8

.field static final SUM:I = 0x3

.field static final VAR_POP:I = 0x9

.field static final VAR_SAMP:I = 0xa


# instance fields
.field private dataType:I

.field private displaySize:I

.field private final distinct:Z

.field private groupConcatOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private groupConcatSeparator:Lorg/h2/expression/Expression;

.field private groupConcatSort:Lorg/h2/result/SortOrder;

.field private lastGroupRowId:I

.field private on:Lorg/h2/expression/Expression;

.field private precision:J

.field private scale:I

.field private final select:Lorg/h2/command/dml/Select;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/expression/Aggregate;->AGGREGATES:Ljava/util/HashMap;

    const-string v0, "COUNT"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "SUM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "MIN"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "MAX"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "AVG"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "GROUP_CONCAT"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "STRING_AGG"

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "STDDEV_SAMP"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "STDDEV"

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "STDDEV_POP"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "STDDEVP"

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "VAR_POP"

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "VARP"

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "VAR_SAMP"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "VAR"

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "VARIANCE"

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "BOOL_OR"

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "SOME"

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "BOOL_AND"

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "EVERY"

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "SELECTIVITY"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "HISTOGRAM"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "BIT_OR"

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    const-string v0, "BIT_AND"

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lorg/h2/expression/Aggregate;->addAggregate(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILorg/h2/expression/Expression;Lorg/h2/command/dml/Select;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/expression/Expression;-><init>()V

    iput p1, p0, Lorg/h2/expression/Aggregate;->type:I

    iput-object p2, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    iput-object p3, p0, Lorg/h2/expression/Aggregate;->select:Lorg/h2/command/dml/Select;

    iput-boolean p4, p0, Lorg/h2/expression/Aggregate;->distinct:Z

    return-void
.end method

.method private static addAggregate(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lorg/h2/expression/Aggregate;->AGGREGATES:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getAggregateType(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/h2/expression/Aggregate;->AGGREGATES:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getMinMaxColumnIndex()Lorg/h2/index/Index;
    .locals 4

    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    instance-of v1, v0, Lorg/h2/expression/ExpressionColumn;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v0}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object v1

    invoke-virtual {v0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/table/Table;->getIndexForColumn(Lorg/h2/table/Column;ZZ)Lorg/h2/index/Index;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSQLGroupConcat()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "GROUP_CONCAT("

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/h2/expression/Aggregate;->distinct:Z

    if-eqz v1, :cond_0

    const-string v1, "DISTINCT "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_0
    iget-object v1, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/command/dml/SelectOrderBy;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    iget-object v3, v2, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v3}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-boolean v2, v2, Lorg/h2/command/dml/SelectOrderBy;->descending:Z

    if-eqz v2, :cond_1

    const-string v2, " DESC"

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    if-eqz v1, :cond_3

    const-string v1, " SEPARATOR "

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_3
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initOrder(Lorg/h2/engine/Session;)Lorg/h2/result/SortOrder;
    .locals 6

    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/command/dml/SelectOrderBy;

    add-int/lit8 v5, v3, 0x1

    aput v5, v1, v3

    iget-boolean v4, v4, Lorg/h2/command/dml/SelectOrderBy;->descending:Z

    aput v4, v2, v3

    move v3, v5

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/result/SortOrder;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/h2/result/SortOrder;-><init>(Lorg/h2/engine/Database;[I[ILjava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public getCost()I
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    add-int/2addr v1, v0

    :goto_0
    return v1
.end method

.method public getDisplaySize()I
    .locals 1

    iget v0, p0, Lorg/h2/expression/Aggregate;->displaySize:I

    return v0
.end method

.method public getPrecision()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/h2/expression/Aggregate;->type:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "type="

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lorg/h2/expression/Aggregate;->type:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    throw v0

    .line 27
    :pswitch_0
    const-string v0, "HISTOGRAM"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_1
    const-string v0, "SELECTIVITY"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_2
    const-string v0, "BIT_AND"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_3
    const-string v0, "BIT_OR"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_4
    const-string v0, "BOOL_AND"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_5
    const-string v0, "BOOL_OR"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_6
    const-string v0, "VAR_SAMP"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_7
    const-string v0, "VAR_POP"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_8
    const-string v0, "STDDEV_SAMP"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_9
    const-string v0, "STDDEV_POP"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_a
    const-string v0, "AVG"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_b
    const-string v0, "MAX"

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_c
    const-string v0, "MIN"

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_d
    const-string v0, "SUM"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_e
    invoke-direct {p0}, Lorg/h2/expression/Aggregate;->getSQLGroupConcat()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :pswitch_f
    const-string v0, "COUNT"

    .line 75
    .line 76
    :goto_0
    iget-boolean v1, p0, Lorg/h2/expression/Aggregate;->distinct:Z

    .line 77
    .line 78
    if-eqz v1, :cond_0

    .line 79
    .line 80
    const-string v1, "(DISTINCT "

    .line 81
    .line 82
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    .line 87
    .line 88
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ")"

    .line 96
    .line 97
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :cond_0
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v1, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    .line 110
    .line 111
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1}, Lorg/h2/util/StringUtils;->enclose(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    goto :goto_1

    .line 120
    :pswitch_10
    const-string v0, "COUNT(*)"

    .line 121
    .line 122
    return-object v0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method

.method public getScale()I
    .locals 1

    iget v0, p0, Lorg/h2/expression/Aggregate;->scale:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/h2/expression/Aggregate;->dataType:I

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->select:Lorg/h2/command/dml/Select;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->isQuickAggregateQuery()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget v0, p0, Lorg/h2/expression/Aggregate;->type:I

    .line 11
    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v0, v2, :cond_4

    .line 16
    .line 17
    const/4 v3, 0x4

    .line 18
    if-eq v0, v3, :cond_0

    .line 19
    .line 20
    const/4 v4, 0x5

    .line 21
    if-eq v0, v4, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "type="

    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lorg/h2/expression/Aggregate;->type:I

    .line 31
    .line 32
    invoke-static {v0, v2}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    if-ne v0, v3, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-direct {p0}, Lorg/h2/expression/Aggregate;->getMinMaxColumnIndex()Lorg/h2/index/Index;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v3}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    aget-object v4, v4, v1

    .line 50
    .line 51
    iget v4, v4, Lorg/h2/table/IndexColumn;->sortType:I

    .line 52
    .line 53
    and-int/2addr v2, v4

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    xor-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    :cond_2
    invoke-interface {v3, p1, v0}, Lorg/h2/index/Index;->findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_3

    .line 67
    .line 68
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-interface {v3}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    aget-object v0, v0, v1

    .line 76
    .line 77
    invoke-virtual {v0}, Lorg/h2/table/Column;->getColumnId()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :goto_1
    return-object p1

    .line 86
    :cond_4
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->select:Lorg/h2/command/dml/Select;

    .line 87
    .line 88
    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->getTopTableFilter()Lorg/h2/table/TableFilter;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lorg/h2/table/TableFilter;->getTable()Lorg/h2/table/Table;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Lorg/h2/table/Table;->getRowCount(Lorg/h2/engine/Session;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    invoke-static {v0, v1}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->select:Lorg/h2/command/dml/Select;

    .line 106
    .line 107
    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->getCurrentGroup()Ljava/util/HashMap;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_10

    .line 112
    .line 113
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lorg/h2/expression/AggregateData;

    .line 118
    .line 119
    if-nez v0, :cond_6

    .line 120
    .line 121
    iget v0, p0, Lorg/h2/expression/Aggregate;->type:I

    .line 122
    .line 123
    invoke-static {v0}, Lorg/h2/expression/AggregateData;->create(I)Lorg/h2/expression/AggregateData;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_6
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iget v3, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 132
    .line 133
    iget-boolean v4, p0, Lorg/h2/expression/Aggregate;->distinct:Z

    .line 134
    .line 135
    invoke-virtual {v0, v2, v3, v4}, Lorg/h2/expression/AggregateData;->getValue(Lorg/h2/engine/Database;IZ)Lorg/h2/value/Value;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iget v3, p0, Lorg/h2/expression/Aggregate;->type:I

    .line 140
    .line 141
    const/4 v4, 0x2

    .line 142
    if-ne v3, v4, :cond_f

    .line 143
    .line 144
    check-cast v0, Lorg/h2/expression/AggregateDataGroupConcat;

    .line 145
    .line 146
    invoke-virtual {v0}, Lorg/h2/expression/AggregateDataGroupConcat;->getList()Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_e

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-nez v2, :cond_7

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_7
    iget-object v2, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    .line 160
    .line 161
    if-eqz v2, :cond_8

    .line 162
    .line 163
    iget-object v2, p0, Lorg/h2/expression/Aggregate;->groupConcatSort:Lorg/h2/result/SortOrder;

    .line 164
    .line 165
    new-instance v3, Lorg/h2/expression/Aggregate$1;

    .line 166
    .line 167
    invoke-direct {v3, p0, v2}, Lorg/h2/expression/Aggregate$1;-><init>(Lorg/h2/expression/Aggregate;Lorg/h2/result/SortOrder;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    .line 172
    .line 173
    :cond_8
    new-instance v2, Lorg/h2/util/StatementBuilder;

    .line 174
    .line 175
    invoke-direct {v2}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    iget-object v3, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    .line 179
    .line 180
    if-nez v3, :cond_9

    .line 181
    .line 182
    const-string p1, ","

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_9
    invoke-virtual {v3, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_d

    .line 202
    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    check-cast v3, Lorg/h2/value/Value;

    .line 208
    .line 209
    invoke-virtual {v3}, Lorg/h2/value/Value;->getType()I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    const/16 v5, 0x11

    .line 214
    .line 215
    if-ne v4, v5, :cond_a

    .line 216
    .line 217
    check-cast v3, Lorg/h2/value/ValueArray;

    .line 218
    .line 219
    invoke-virtual {v3}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    aget-object v3, v3, v1

    .line 224
    .line 225
    :cond_a
    invoke-virtual {v3}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    if-nez v3, :cond_b

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_b
    if-eqz p1, :cond_c

    .line 233
    .line 234
    invoke-virtual {v2, p1}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_c
    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_d
    invoke-virtual {v2}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    goto :goto_6

    .line 250
    :cond_e
    :goto_5
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 251
    .line 252
    return-object p1

    .line 253
    :cond_f
    :goto_6
    return-object v2

    .line 254
    :cond_10
    const p1, 0x15fc6

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lorg/h2/expression/Aggregate;->getSQL()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    throw p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget v0, p0, Lorg/h2/expression/Aggregate;->type:I

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lorg/h2/expression/Aggregate;->getMinMaxColumnIndex()Lorg/h2/index/Index;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-boolean v0, p0, Lorg/h2/expression/Aggregate;->distinct:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getNullable()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lorg/h2/expression/ExpressionVisitor;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/table/Table;->canGetRowCount()Z

    move-result p1

    return p1

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_9

    iget-object v4, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/command/dml/SelectOrderBy;

    iget-object v4, v4, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v4, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v4

    if-nez v4, :cond_8

    return v1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    return v2
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/command/dml/SelectOrderBy;

    iget-object v1, v1, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    :cond_2
    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 16
    .line 17
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getScale()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lorg/h2/expression/Aggregate;->scale:I

    .line 24
    .line 25
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getPrecision()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iput-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    .line 32
    .line 33
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    .line 34
    .line 35
    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getDisplaySize()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lorg/h2/expression/Aggregate;->displaySize:I

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lorg/h2/command/dml/SelectOrderBy;

    .line 60
    .line 61
    iget-object v2, v1, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iput-object v2, v1, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0, p1}, Lorg/h2/expression/Aggregate;->initOrder(Lorg/h2/engine/Session;)Lorg/h2/result/SortOrder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatSort:Lorg/h2/result/SortOrder;

    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    .line 85
    .line 86
    :cond_3
    iget p1, p0, Lorg/h2/expression/Aggregate;->type:I

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    const v1, 0x7fffffff

    .line 90
    .line 91
    .line 92
    const/4 v2, 0x5

    .line 93
    const v3, 0x15f9f

    .line 94
    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 98
    .line 99
    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v0, "type="

    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget v0, p0, Lorg/h2/expression/Aggregate;->type:I

    .line 108
    .line 109
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_4

    .line 113
    .line 114
    :pswitch_0
    const/16 p1, 0x11

    .line 115
    .line 116
    :goto_1
    iput p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 117
    .line 118
    iput v4, p0, Lorg/h2/expression/Aggregate;->scale:I

    .line 119
    .line 120
    iput v1, p0, Lorg/h2/expression/Aggregate;->displaySize:I

    .line 121
    .line 122
    int-to-long v0, v1

    .line 123
    iput-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    .line 124
    .line 125
    goto/16 :goto_4

    .line 126
    .line 127
    :pswitch_1
    const/4 p1, 0x4

    .line 128
    iput p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 129
    .line 130
    iput v4, p0, Lorg/h2/expression/Aggregate;->scale:I

    .line 131
    .line 132
    const-wide/16 v0, 0xa

    .line 133
    .line 134
    iput-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    .line 135
    .line 136
    const/16 p1, 0xb

    .line 137
    .line 138
    :goto_2
    iput p1, p0, Lorg/h2/expression/Aggregate;->displaySize:I

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :pswitch_2
    iget p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 142
    .line 143
    invoke-static {p1}, Lorg/h2/value/DataType;->supportsAdd(I)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_4

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_4
    invoke-virtual {p0}, Lorg/h2/expression/Aggregate;->getSQL()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    throw p1

    .line 159
    :pswitch_3
    iput v0, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 160
    .line 161
    const-wide/16 v0, 0x1

    .line 162
    .line 163
    iput-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    .line 164
    .line 165
    iput v2, p0, Lorg/h2/expression/Aggregate;->displaySize:I

    .line 166
    .line 167
    :goto_3
    iput v4, p0, Lorg/h2/expression/Aggregate;->scale:I

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :pswitch_4
    const/4 p1, 0x7

    .line 171
    iput p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 172
    .line 173
    const-wide/16 v0, 0x11

    .line 174
    .line 175
    iput-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    .line 176
    .line 177
    const/16 p1, 0x18

    .line 178
    .line 179
    iput p1, p0, Lorg/h2/expression/Aggregate;->displaySize:I

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :pswitch_5
    iget p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 183
    .line 184
    invoke-static {p1}, Lorg/h2/value/DataType;->supportsAdd(I)Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_5

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_5
    invoke-virtual {p0}, Lorg/h2/expression/Aggregate;->getSQL()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    throw p1

    .line 200
    :pswitch_6
    iget p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 201
    .line 202
    if-ne p1, v0, :cond_6

    .line 203
    .line 204
    iput v2, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_6
    invoke-static {p1}, Lorg/h2/value/DataType;->supportsAdd(I)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_7

    .line 212
    .line 213
    iget p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 214
    .line 215
    invoke-static {p1}, Lorg/h2/value/DataType;->getAddProofType(I)I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    iput p1, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_7
    invoke-virtual {p0}, Lorg/h2/expression/Aggregate;->getSQL()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {v3, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    throw p1

    .line 231
    :pswitch_7
    const/16 p1, 0xd

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :pswitch_8
    iput v2, p0, Lorg/h2/expression/Aggregate;->dataType:I

    .line 235
    .line 236
    iput v4, p0, Lorg/h2/expression/Aggregate;->scale:I

    .line 237
    .line 238
    const-wide/16 v0, 0x13

    .line 239
    .line 240
    iput-wide v0, p0, Lorg/h2/expression/Aggregate;->precision:J

    .line 241
    .line 242
    const/16 p1, 0x14

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :goto_4
    :pswitch_9
    return-object p0

    .line 246
    nop

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_0
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/command/dml/SelectOrderBy;

    iget-object v1, v1, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    :cond_2
    return-void
.end method

.method public setGroupConcatOrder(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    return-void
.end method

.method public setGroupConcatSeparator(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/expression/Aggregate;->groupConcatSeparator:Lorg/h2/expression/Expression;

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 5

    iget-object v0, p0, Lorg/h2/expression/Aggregate;->select:Lorg/h2/command/dml/Select;

    invoke-virtual {v0}, Lorg/h2/command/dml/Select;->getCurrentGroup()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/h2/expression/Aggregate;->select:Lorg/h2/command/dml/Select;

    invoke-virtual {v1}, Lorg/h2/command/dml/Select;->getCurrentGroupRowId()I

    move-result v1

    iget v2, p0, Lorg/h2/expression/Aggregate;->lastGroupRowId:I

    if-ne v2, v1, :cond_1

    return-void

    :cond_1
    iput v1, p0, Lorg/h2/expression/Aggregate;->lastGroupRowId:I

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/AggregateData;

    if-nez v1, :cond_2

    iget v1, p0, Lorg/h2/expression/Aggregate;->type:I

    invoke-static {v1}, Lorg/h2/expression/AggregateData;->create(I)Lorg/h2/expression/AggregateData;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/h2/expression/Aggregate;->on:Lorg/h2/expression/Expression;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    :goto_0
    iget v2, p0, Lorg/h2/expression/Aggregate;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v0, v2, :cond_5

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lorg/h2/value/Value;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    :goto_1
    if-ge v4, v2, :cond_4

    iget-object v0, p0, Lorg/h2/expression/Aggregate;->groupConcatOrderList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/command/dml/SelectOrderBy;

    add-int/lit8 v4, v4, 0x1

    iget-object v0, v0, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    aput-object v0, v3, v4

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lorg/h2/value/ValueArray;->get([Lorg/h2/value/Value;)Lorg/h2/value/ValueArray;

    move-result-object v0

    :cond_5
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    iget v2, p0, Lorg/h2/expression/Aggregate;->dataType:I

    iget-boolean v3, p0, Lorg/h2/expression/Aggregate;->distinct:Z

    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/h2/expression/AggregateData;->add(Lorg/h2/engine/Database;IZLorg/h2/value/Value;)V

    return-void
.end method

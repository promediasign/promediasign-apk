.class public Lorg/h2/command/dml/SelectUnion;
.super Lorg/h2/command/dml/Query;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/command/dml/SelectUnion$LazyResultUnion;
    }
.end annotation


# static fields
.field public static final EXCEPT:I = 0x2

.field public static final INTERSECT:I = 0x3

.field public static final UNION:I = 0x0

.field public static final UNION_ALL:I = 0x1


# instance fields
.field private checkInit:Z

.field private expressionArray:[Lorg/h2/expression/Expression;

.field private expressions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private isForUpdate:Z

.field private isPrepared:Z

.field private final left:Lorg/h2/command/dml/Query;

.field private orderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private right:Lorg/h2/command/dml/Query;

.field private sort:Lorg/h2/result/SortOrder;

.field private unionType:I


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;Lorg/h2/command/dml/Query;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/dml/Query;-><init>(Lorg/h2/engine/Session;)V

    iput-object p2, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    return-void
.end method

.method public static synthetic access$000(Lorg/h2/command/dml/SelectUnion;)Lorg/h2/command/dml/Query;
    .locals 0

    iget-object p0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/h2/command/dml/SelectUnion;)Lorg/h2/command/dml/Query;
    .locals 0

    iget-object p0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    return-object p0
.end method

.method private convert([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;
    .locals 4

    array-length v0, p1

    if-ne p2, v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-array v0, p2, [Lorg/h2/value/Value;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    aget-object v3, p1, v1

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getType()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addGlobalCondition(Lorg/h2/expression/Parameter;II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/command/dml/Query;->addParameter(Lorg/h2/expression/Parameter;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p2, "type="

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget p2, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    .line 25
    .line 26
    invoke-static {p1, p2}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/command/dml/Query;->addGlobalCondition(Lorg/h2/expression/Parameter;II)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/command/dml/Query;->addGlobalCondition(Lorg/h2/expression/Parameter;II)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_1
    return-void
.end method

.method public allowGlobalConditions()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->allowGlobalConditions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->allowGlobalConditions()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fireBeforeSelectTriggers()V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->fireBeforeSelectTriggers()V

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->fireBeforeSelectTriggers()V

    return-void
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getCost()D
    .locals 4

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getCost()D

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v2}, Lorg/h2/command/dml/Query;->getCost()D

    move-result-wide v2

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public getEmptyResult()Lorg/h2/result/LocalResult;
    .locals 4

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    new-instance v1, Lorg/h2/result/LocalResult;

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/dml/SelectUnion;->expressionArray:[Lorg/h2/expression/Expression;

    invoke-direct {v1, v2, v3, v0}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    return-object v1
.end method

.method public getExpressions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLeft()Lorg/h2/command/dml/Query;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x29

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-eq v2, v3, :cond_2

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    if-eq v2, v3, :cond_1

    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    if-eq v2, v3, :cond_0

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "type="

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v3, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    .line 43
    .line 44
    invoke-static {v2, v3}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const-string v2, "\nINTERSECT\n"

    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string v2, "\nEXCEPT\n"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const-string v2, "\nUNION ALL\n"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const-string v2, "\nUNION\n"

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :goto_1
    const/16 v2, 0x28

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    .line 69
    .line 70
    invoke-virtual {v2}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    new-array v2, v2, [Lorg/h2/expression/Expression;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, [Lorg/h2/expression/Expression;

    .line 93
    .line 94
    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->sort:Lorg/h2/result/SortOrder;

    .line 95
    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    const-string v2, "\nORDER BY "

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->sort:Lorg/h2/result/SortOrder;

    .line 104
    .line 105
    array-length v3, v1

    .line 106
    invoke-virtual {v2, v1, v3}, Lorg/h2/result/SortOrder;->getSQL([Lorg/h2/expression/Expression;I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    :cond_4
    iget-object v1, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    .line 114
    .line 115
    if-eqz v1, :cond_5

    .line 116
    .line 117
    const-string v1, "\nLIMIT "

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    .line 123
    .line 124
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v1}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    .line 136
    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    const-string v1, "\nOFFSET "

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    .line 145
    .line 146
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v1}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    :cond_5
    iget-object v1, p0, Lorg/h2/command/dml/Query;->sampleSizeExpr:Lorg/h2/expression/Expression;

    .line 158
    .line 159
    if-eqz v1, :cond_6

    .line 160
    .line 161
    const-string v1, "\nSAMPLE_SIZE "

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lorg/h2/command/dml/Query;->sampleSizeExpr:Lorg/h2/expression/Expression;

    .line 167
    .line 168
    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {v1}, Lorg/h2/util/StringUtils;->unEnclose(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    :cond_6
    iget-boolean v1, p0, Lorg/h2/command/dml/SelectUnion;->isForUpdate:Z

    .line 180
    .line 181
    if-eqz v1, :cond_7

    .line 182
    .line 183
    const-string v1, "\nFOR UPDATE"

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    return-object v0
.end method

.method public getRight()Lorg/h2/command/dml/Query;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    return-object v0
.end method

.method public getTables()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getTables()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getTables()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x42

    return v0
.end method

.method public getUnionType()I
    .locals 1

    iget v0, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    return v0
.end method

.method public hasOrder()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->orderList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->sort:Lorg/h2/result/SortOrder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public init()V
    .locals 5

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/command/dml/SelectUnion;->checkInit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/command/dml/SelectUnion;->checkInit:Z

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->init()V

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->init()V

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getExpressions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/Expression;

    iget-object v4, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x520a

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isReadOnly()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    return-void
.end method

.method public prepare()V
    .locals 15

    iget-boolean v0, p0, Lorg/h2/command/dml/SelectUnion;->isPrepared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/command/dml/SelectUnion;->checkInit:Z

    if-nez v0, :cond_1

    const-string v0, "not initialized"

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/command/dml/SelectUnion;->isPrepared:Z

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->prepare()V

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->prepare()V

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->getExpressions()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v2}, Lorg/h2/command/dml/Query;->getExpressions()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Expression;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/expression/Expression;

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getType()I

    move-result v6

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getType()I

    move-result v7

    invoke-static {v6, v7}, Lorg/h2/value/Value;->getHigherOrder(II)I

    move-result v10

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v6

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getPrecision()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getScale()I

    move-result v6

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getScale()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v6

    invoke-virtual {v5}, Lorg/h2/expression/Expression;->getDisplaySize()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    new-instance v5, Lorg/h2/table/Column;

    invoke-virtual {v4}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v9

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;IJII)V

    new-instance v4, Lorg/h2/expression/ExpressionColumn;

    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v6}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Lorg/h2/table/Column;)V

    iget-object v5, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lorg/h2/command/dml/SelectUnion;->orderList:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v5, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/command/dml/SelectUnion;->getColumnCount()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Lorg/h2/command/dml/Query;->initOrder(Lorg/h2/engine/Session;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLjava/util/ArrayList;)V

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->orderList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/h2/command/dml/Query;->prepareOrder(Ljava/util/ArrayList;I)Lorg/h2/result/SortOrder;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/SelectUnion;->sort:Lorg/h2/result/SortOrder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/command/dml/SelectUnion;->orderList:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/expression/Expression;

    iput-object v0, p0, Lorg/h2/command/dml/SelectUnion;->expressionArray:[Lorg/h2/expression/Expression;

    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->expressions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method public prepareJoinBatch()V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->prepareJoinBatch()V

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->prepareJoinBatch()V

    return-void
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 4

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->getColumnCount()I

    move-result v0

    new-instance v1, Lorg/h2/result/LocalResult;

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/command/dml/SelectUnion;->expressionArray:[Lorg/h2/expression/Expression;

    invoke-direct {v1, v2, v3, v0}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    invoke-virtual {v1}, Lorg/h2/result/LocalResult;->done()V

    return-object v1
.end method

.method public queryWithoutCache(ILorg/h2/result/ResultTarget;)Lorg/h2/result/ResultInterface;
    .locals 9

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    :goto_0
    const/4 v1, -0x1

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v1}, Lorg/h2/value/Value;->getInt()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :goto_1
    if-gez v1, :cond_2

    .line 26
    .line 27
    move v1, p1

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_2
    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    .line 42
    .line 43
    :cond_3
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 44
    .line 45
    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->optimizeInsertFromSelect:Z

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v4, 0x1

    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    iget v1, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    .line 61
    .line 62
    if-ne v1, v4, :cond_4

    .line 63
    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->sort:Lorg/h2/result/SortOrder;

    .line 67
    .line 68
    if-nez v1, :cond_4

    .line 69
    .line 70
    iget-boolean v1, p0, Lorg/h2/command/dml/Query;->distinct:Z

    .line 71
    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    if-nez p1, :cond_4

    .line 75
    .line 76
    iget-object p1, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    .line 77
    .line 78
    if-nez p1, :cond_4

    .line 79
    .line 80
    iget-object p1, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    .line 81
    .line 82
    if-nez p1, :cond_4

    .line 83
    .line 84
    iget-object p1, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    .line 85
    .line 86
    invoke-virtual {p1, v3, p2}, Lorg/h2/command/dml/Query;->query(ILorg/h2/result/ResultTarget;)Lorg/h2/result/ResultInterface;

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    .line 90
    .line 91
    invoke-virtual {p1, v3, p2}, Lorg/h2/command/dml/Query;->query(ILorg/h2/result/ResultTarget;)Lorg/h2/result/ResultInterface;

    .line 92
    .line 93
    .line 94
    return-object v2

    .line 95
    :cond_4
    iget-object p1, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    .line 96
    .line 97
    invoke-virtual {p1}, Lorg/h2/command/dml/Query;->getColumnCount()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 102
    .line 103
    invoke-virtual {v1}, Lorg/h2/engine/Session;->isLazyQueryExecution()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_7

    .line 108
    .line 109
    iget v1, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    .line 110
    .line 111
    if-ne v1, v4, :cond_7

    .line 112
    .line 113
    iget-boolean v1, p0, Lorg/h2/command/dml/Query;->distinct:Z

    .line 114
    .line 115
    if-nez v1, :cond_7

    .line 116
    .line 117
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->sort:Lorg/h2/result/SortOrder;

    .line 118
    .line 119
    if-nez v1, :cond_7

    .line 120
    .line 121
    iget-boolean v1, p0, Lorg/h2/command/dml/Query;->randomAccessResult:Z

    .line 122
    .line 123
    if-nez v1, :cond_7

    .line 124
    .line 125
    iget-boolean v1, p0, Lorg/h2/command/dml/SelectUnion;->isForUpdate:Z

    .line 126
    .line 127
    if-nez v1, :cond_7

    .line 128
    .line 129
    iget-object v1, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    .line 130
    .line 131
    if-nez v1, :cond_7

    .line 132
    .line 133
    invoke-virtual {p0}, Lorg/h2/command/dml/SelectUnion;->isReadOnly()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_7

    .line 138
    .line 139
    iget-object v1, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    .line 140
    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 144
    .line 145
    invoke-virtual {v1, v5}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    sget-object v5, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 150
    .line 151
    if-eq v1, v5, :cond_5

    .line 152
    .line 153
    invoke-virtual {v1}, Lorg/h2/value/Value;->getInt()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    :cond_5
    if-eqz v0, :cond_7

    .line 158
    .line 159
    new-instance p2, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;

    .line 160
    .line 161
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->expressionArray:[Lorg/h2/expression/Expression;

    .line 162
    .line 163
    invoke-direct {p2, p0, v1, p1}, Lorg/h2/command/dml/SelectUnion$LazyResultUnion;-><init>(Lorg/h2/command/dml/SelectUnion;[Lorg/h2/expression/Expression;I)V

    .line 164
    .line 165
    .line 166
    if-lez v0, :cond_6

    .line 167
    .line 168
    invoke-virtual {p2, v0}, Lorg/h2/result/LazyResult;->setLimit(I)V

    .line 169
    .line 170
    .line 171
    :cond_6
    return-object p2

    .line 172
    :cond_7
    new-instance v0, Lorg/h2/result/LocalResult;

    .line 173
    .line 174
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 175
    .line 176
    iget-object v5, p0, Lorg/h2/command/dml/SelectUnion;->expressionArray:[Lorg/h2/expression/Expression;

    .line 177
    .line 178
    invoke-direct {v0, v1, v5, p1}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->sort:Lorg/h2/result/SortOrder;

    .line 182
    .line 183
    if-eqz v1, :cond_8

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lorg/h2/result/LocalResult;->setSortOrder(Lorg/h2/result/SortOrder;)V

    .line 186
    .line 187
    .line 188
    :cond_8
    iget-boolean v1, p0, Lorg/h2/command/dml/Query;->distinct:Z

    .line 189
    .line 190
    if-eqz v1, :cond_9

    .line 191
    .line 192
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    .line 193
    .line 194
    invoke-virtual {v1, v4}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    .line 195
    .line 196
    .line 197
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    .line 198
    .line 199
    invoke-virtual {v1, v4}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->setDistinct()V

    .line 203
    .line 204
    .line 205
    :cond_9
    iget-boolean v1, p0, Lorg/h2/command/dml/Query;->randomAccessResult:Z

    .line 206
    .line 207
    if-eqz v1, :cond_a

    .line 208
    .line 209
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->setRandomAccess()V

    .line 210
    .line 211
    .line 212
    :cond_a
    iget v1, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    .line 213
    .line 214
    const-string v5, "type="

    .line 215
    .line 216
    const/4 v6, 0x3

    .line 217
    const/4 v7, 0x2

    .line 218
    if-eqz v1, :cond_c

    .line 219
    .line 220
    if-eq v1, v4, :cond_d

    .line 221
    .line 222
    if-eq v1, v7, :cond_c

    .line 223
    .line 224
    if-eq v1, v6, :cond_b

    .line 225
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget v8, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    .line 232
    .line 233
    invoke-static {v1, v8}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_b
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    .line 238
    .line 239
    invoke-virtual {v1, v4}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    .line 240
    .line 241
    .line 242
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    .line 243
    .line 244
    invoke-virtual {v1, v4}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_c
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    .line 249
    .line 250
    invoke-virtual {v1, v4}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    .line 251
    .line 252
    .line 253
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    .line 254
    .line 255
    invoke-virtual {v1, v4}, Lorg/h2/command/dml/Query;->setDistinct(Z)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->setDistinct()V

    .line 259
    .line 260
    .line 261
    :cond_d
    :goto_3
    iget-object v1, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    .line 262
    .line 263
    invoke-virtual {v1, v3}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    iget-object v8, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    .line 268
    .line 269
    invoke-virtual {v8, v3}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->reset()V

    .line 274
    .line 275
    .line 276
    invoke-interface {v3}, Lorg/h2/result/ResultInterface;->reset()V

    .line 277
    .line 278
    .line 279
    iget v8, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    .line 280
    .line 281
    if-eqz v8, :cond_13

    .line 282
    .line 283
    if-eq v8, v4, :cond_13

    .line 284
    .line 285
    if-eq v8, v7, :cond_11

    .line 286
    .line 287
    if-eq v8, v6, :cond_e

    .line 288
    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget v4, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    .line 295
    .line 296
    invoke-static {p1, v4}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_a

    .line 300
    .line 301
    :cond_e
    new-instance v4, Lorg/h2/result/LocalResult;

    .line 302
    .line 303
    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 304
    .line 305
    iget-object v6, p0, Lorg/h2/command/dml/SelectUnion;->expressionArray:[Lorg/h2/expression/Expression;

    .line 306
    .line 307
    invoke-direct {v4, v5, v6, p1}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4}, Lorg/h2/result/LocalResult;->setDistinct()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4}, Lorg/h2/result/LocalResult;->setRandomAccess()V

    .line 314
    .line 315
    .line 316
    :goto_4
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->next()Z

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    if-eqz v5, :cond_f

    .line 321
    .line 322
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    invoke-direct {p0, v5, p1}, Lorg/h2/command/dml/SelectUnion;->convert([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    invoke-virtual {v4, v5}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    .line 331
    .line 332
    .line 333
    goto :goto_4

    .line 334
    :cond_f
    :goto_5
    invoke-interface {v3}, Lorg/h2/result/ResultInterface;->next()Z

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    if-eqz v5, :cond_10

    .line 339
    .line 340
    invoke-interface {v3}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    invoke-direct {p0, v5, p1}, Lorg/h2/command/dml/SelectUnion;->convert([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    invoke-virtual {v4, v5}, Lorg/h2/result/LocalResult;->containsDistinct([Lorg/h2/value/Value;)Z

    .line 349
    .line 350
    .line 351
    move-result v6

    .line 352
    if-eqz v6, :cond_f

    .line 353
    .line 354
    invoke-virtual {v0, v5}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    .line 355
    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_10
    invoke-virtual {v4}, Lorg/h2/result/LocalResult;->close()V

    .line 359
    .line 360
    .line 361
    goto :goto_a

    .line 362
    :cond_11
    :goto_6
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->next()Z

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    if-eqz v4, :cond_12

    .line 367
    .line 368
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-direct {p0, v4, p1}, Lorg/h2/command/dml/SelectUnion;->convert([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    invoke-virtual {v0, v4}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    .line 377
    .line 378
    .line 379
    goto :goto_6

    .line 380
    :cond_12
    :goto_7
    invoke-interface {v3}, Lorg/h2/result/ResultInterface;->next()Z

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    if-eqz v4, :cond_15

    .line 385
    .line 386
    invoke-interface {v3}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    invoke-direct {p0, v4, p1}, Lorg/h2/command/dml/SelectUnion;->convert([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    invoke-virtual {v0, v4}, Lorg/h2/result/LocalResult;->removeDistinct([Lorg/h2/value/Value;)V

    .line 395
    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_13
    :goto_8
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->next()Z

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    if-eqz v4, :cond_14

    .line 403
    .line 404
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    invoke-direct {p0, v4, p1}, Lorg/h2/command/dml/SelectUnion;->convert([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    invoke-virtual {v0, v4}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    .line 413
    .line 414
    .line 415
    goto :goto_8

    .line 416
    :cond_14
    :goto_9
    invoke-interface {v3}, Lorg/h2/result/ResultInterface;->next()Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_15

    .line 421
    .line 422
    invoke-interface {v3}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    invoke-direct {p0, v4, p1}, Lorg/h2/command/dml/SelectUnion;->convert([Lorg/h2/value/Value;I)[Lorg/h2/value/Value;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    invoke-virtual {v0, v4}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    .line 431
    .line 432
    .line 433
    goto :goto_9

    .line 434
    :cond_15
    :goto_a
    iget-object p1, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    .line 435
    .line 436
    if-eqz p1, :cond_16

    .line 437
    .line 438
    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 439
    .line 440
    invoke-virtual {p1, v4}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    .line 445
    .line 446
    .line 447
    move-result p1

    .line 448
    invoke-virtual {v0, p1}, Lorg/h2/result/LocalResult;->setOffset(I)V

    .line 449
    .line 450
    .line 451
    :cond_16
    iget-object p1, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    .line 452
    .line 453
    if-eqz p1, :cond_17

    .line 454
    .line 455
    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 456
    .line 457
    invoke-virtual {p1, v4}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    sget-object v4, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    .line 462
    .line 463
    if-eq p1, v4, :cond_17

    .line 464
    .line 465
    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    .line 466
    .line 467
    .line 468
    move-result p1

    .line 469
    invoke-virtual {v0, p1}, Lorg/h2/result/LocalResult;->setLimit(I)V

    .line 470
    .line 471
    .line 472
    :cond_17
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->close()V

    .line 473
    .line 474
    .line 475
    invoke-interface {v3}, Lorg/h2/result/ResultInterface;->close()V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->done()V

    .line 479
    .line 480
    .line 481
    if-eqz p2, :cond_19

    .line 482
    .line 483
    :goto_b
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->next()Z

    .line 484
    .line 485
    .line 486
    move-result p1

    .line 487
    if-eqz p1, :cond_18

    .line 488
    .line 489
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->currentRow()[Lorg/h2/value/Value;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    invoke-interface {p2, p1}, Lorg/h2/result/ResultTarget;->addRow([Lorg/h2/value/Value;)V

    .line 494
    .line 495
    .line 496
    goto :goto_b

    .line 497
    :cond_18
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->close()V

    .line 498
    .line 499
    .line 500
    return-object v2

    .line 501
    :cond_19
    return-object v0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1, p2}, Lorg/h2/command/dml/Query;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    return-void
.end method

.method public setForUpdate(Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->setForUpdate(Z)V

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->setForUpdate(Z)V

    iput-boolean p1, p0, Lorg/h2/command/dml/SelectUnion;->isForUpdate:Z

    return-void
.end method

.method public setOrder(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/command/dml/SelectUnion;->orderList:Ljava/util/ArrayList;

    return-void
.end method

.method public setRight(Lorg/h2/command/dml/Query;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    return-void
.end method

.method public setSQL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/Prepared;->sqlStatement:Ljava/lang/String;

    return-void
.end method

.method public setUnionType(I)V
    .locals 0

    iput p1, p0, Lorg/h2/command/dml/SelectUnion;->unionType:I

    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->left:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->updateAggregate(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/command/dml/SelectUnion;->right:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, p1}, Lorg/h2/command/dml/Query;->updateAggregate(Lorg/h2/engine/Session;)V

    return-void
.end method

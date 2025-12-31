.class final Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/FormulaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleRangePart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;
    }
.end annotation


# instance fields
.field private final _rep:Ljava/lang/String;

.field private final _type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_rep:Ljava/lang/String;

    invoke-static {p2, p3}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;->get(ZZ)Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    return-void
.end method


# virtual methods
.method public getCellReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;->CELL:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_rep:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not applicable to this type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRep()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_rep:Ljava/lang/String;

    return-object v0
.end method

.method public isCell()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;->CELL:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isColumn()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;->COLUMN:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCompatibleForArea(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    iget-object p1, p1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRow()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;->ROW:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRowOrColumn()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;->CELL:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    .line 7
    .line 8
    const-string v2, " ["

    .line 9
    .line 10
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->y(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_rep:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "]"

    .line 16
    .line 17
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

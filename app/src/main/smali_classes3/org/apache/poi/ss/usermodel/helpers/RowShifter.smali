.class public abstract Lorg/apache/poi/ss/usermodel/helpers/RowShifter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final sheet:Lorg/apache/poi/ss/usermodel/Sheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    return-void
.end method

.method private removalNeeded(Lorg/apache/poi/ss/util/CellRangeAddress;III)Z
    .locals 3

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-lez p4, :cond_0

    new-instance p2, Lorg/apache/poi/ss/util/CellRangeAddress;

    add-int/lit8 v2, p3, 0x1

    add-int/2addr p3, p4

    sub-int p4, p3, v0

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-direct {p2, p4, p3, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    goto :goto_0

    :cond_0
    new-instance p3, Lorg/apache/poi/ss/util/CellRangeAddress;

    add-int/2addr p4, p2

    add-int/lit8 p2, p2, -0x1

    add-int/2addr v0, p4

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {p3, p4, p2, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    move-object p2, p3

    :goto_0
    invoke-virtual {p1, p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public shiftMergedRegions(III)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Sheet;->getNumMergedRegions()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    iget-object v5, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v5, v4}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2, p3}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->removalNeeded(Lorg/apache/poi/ss/util/CellRangeAddress;III)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_0
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, p1, :cond_2

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v6

    if-lt v6, p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v8

    if-le v8, p2, :cond_4

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v8

    if-gt v8, p2, :cond_3

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    :cond_4
    :goto_4
    if-eqz v6, :cond_6

    if-nez v7, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->containsRow(I)Z

    move-result v6

    if-nez v6, :cond_6

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->containsRow(I)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v5, v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setFirstRow(I)V

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v5, v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setLastRow(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Sheet;->removeMergedRegions(Ljava/util/Collection;)V

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ss/util/CellRangeAddress;

    iget-object p3, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {p3, p2}, Lorg/apache/poi/ss/usermodel/Sheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    goto :goto_6

    :cond_9
    return-object v0
.end method

.method public abstract updateConditionalFormatting(Lorg/apache/poi/ss/formula/FormulaShifter;)V
.end method

.method public abstract updateFormulas(Lorg/apache/poi/ss/formula/FormulaShifter;)V
.end method

.method public abstract updateHyperlinks(Lorg/apache/poi/ss/formula/FormulaShifter;)V
.end method

.method public abstract updateNamedRanges(Lorg/apache/poi/ss/formula/FormulaShifter;)V
.end method

.method public abstract updateRowFormulas(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end method

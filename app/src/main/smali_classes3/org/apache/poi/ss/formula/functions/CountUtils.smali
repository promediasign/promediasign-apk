.class final Lorg/apache/poi/ss/formula/functions/CountUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;,
        Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    }
.end annotation


# direct methods
.method public static countArg(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I
    .locals 1

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/apache/poi/ss/formula/ThreeDEval;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/ss/formula/ThreeDEval;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countMatchingCellsInArea(Lorg/apache/poi/ss/formula/ThreeDEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countMatchingCellsInRef(Lorg/apache/poi/ss/formula/eval/RefEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result p0

    return p0

    :cond_1
    invoke-interface {p1, p0}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Count requires 3D Evals, 2D ones aren\'t supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "eval must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static countMatchingCellsInArea(Lorg/apache/poi/ss/formula/ThreeDEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I
    .locals 10

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/SheetRange;->getFirstSheetIndex()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/SheetRange;->getLastSheetIndex()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-gt v0, v1, :cond_4

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v4

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_2

    invoke-interface {p0, v0, v6, v7}, Lorg/apache/poi/ss/formula/ThreeDEval;->getValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    instance-of v9, p1, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;

    if-eqz v9, :cond_0

    move-object v9, p1

    check-cast v9, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;

    invoke-interface {v9, p0, v6, v7}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;->matches(Lorg/apache/poi/ss/formula/TwoDEval;II)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p1, v8}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public static countMatchingCellsInRef(Lorg/apache/poi/ss/formula/eval/RefEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I
    .locals 4

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getLastSheetIndex()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-gt v0, v1, :cond_1

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

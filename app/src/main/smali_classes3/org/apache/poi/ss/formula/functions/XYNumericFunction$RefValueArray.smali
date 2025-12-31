.class final Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;
.super Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/XYNumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefValueArray"
.end annotation


# instance fields
.field private final _ref:Lorg/apache/poi/ss/formula/eval/RefEval;

.field private final _width:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;-><init>(I)V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;->_ref:Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;->_width:I

    return-void
.end method


# virtual methods
.method public getItemInternal(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;->_width:I

    rem-int/2addr p1, v0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;->_ref:Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;->_ref:Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

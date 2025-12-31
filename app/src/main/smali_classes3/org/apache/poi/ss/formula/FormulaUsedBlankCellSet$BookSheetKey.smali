.class public final Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookSheetKey"
.end annotation


# instance fields
.field private final _bookIndex:I

.field private final _sheetIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_bookIndex:I

    iput p2, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_sheetIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_bookIndex:I

    iget v2, p1, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_bookIndex:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_sheetIndex:I

    iget p1, p1, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_sheetIndex:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_bookIndex:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_sheetIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.class public Lorg/apache/poi/ss/usermodel/CellCopyPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONDENSE_ROWS_POLICY:Z = false

.field public static final DEFAULT_COPY_CELL_FORMULA_POLICY:Z = true

.field public static final DEFAULT_COPY_CELL_STYLE_POLICY:Z = true

.field public static final DEFAULT_COPY_CELL_VALUE_POLICY:Z = true

.field public static final DEFAULT_COPY_HYPERLINK_POLICY:Z = true

.field public static final DEFAULT_COPY_MERGED_REGIONS_POLICY:Z = true

.field public static final DEFAULT_COPY_ROW_HEIGHT_POLICY:Z = true

.field public static final DEFAULT_MERGE_HYPERLINK_POLICY:Z


# instance fields
.field private condenseRows:Z

.field private copyCellFormula:Z

.field private copyCellStyle:Z

.field private copyCellValue:Z

.field private copyHyperlink:Z

.field private copyMergedRegions:Z

.field private copyRowHeight:Z

.field private mergeHyperlink:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$000(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$100(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$200(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$300(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$400(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$500(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$600(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->access$700(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;Lorg/apache/poi/ss/usermodel/CellCopyPolicy$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;-><init>(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellStyle()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyCellFormula()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyHyperlink()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isMergeHyperlink()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyRowHeight()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCondenseRows()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyMergedRegions()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    return-void
.end method


# virtual methods
.method public createBuilder()Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;-><init>()V

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->cellValue(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->cellStyle(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->cellFormula(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyHyperlink(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->mergeHyperlink(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->rowHeight(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->condenseRows(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->mergedRegions(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isCondenseRows()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    return v0
.end method

.method public isCopyCellFormula()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    return v0
.end method

.method public isCopyCellStyle()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    return v0
.end method

.method public isCopyCellValue()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    return v0
.end method

.method public isCopyHyperlink()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    return v0
.end method

.method public isCopyMergedRegions()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    return v0
.end method

.method public isCopyRowHeight()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    return v0
.end method

.method public isMergeHyperlink()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    return v0
.end method

.method public setCondenseRows(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->condenseRows:Z

    return-void
.end method

.method public setCopyCellFormula(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellFormula:Z

    return-void
.end method

.method public setCopyCellStyle(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellStyle:Z

    return-void
.end method

.method public setCopyCellValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyCellValue:Z

    return-void
.end method

.method public setCopyHyperlink(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyHyperlink:Z

    return-void
.end method

.method public setCopyMergedRegions(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyMergedRegions:Z

    return-void
.end method

.method public setCopyRowHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->copyRowHeight:Z

    return-void
.end method

.method public setMergeHyperlink(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->mergeHyperlink:Z

    return-void
.end method

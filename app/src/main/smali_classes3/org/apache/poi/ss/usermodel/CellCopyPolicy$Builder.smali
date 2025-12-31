.class public Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/CellCopyPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellValue:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellStyle:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellFormula:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyHyperlink:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->mergeHyperlink:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyRowHeight:Z

    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->condenseRows:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyMergedRegions:Z

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellValue:Z

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellStyle:Z

    return p0
.end method

.method public static synthetic access$200(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellFormula:Z

    return p0
.end method

.method public static synthetic access$300(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyHyperlink:Z

    return p0
.end method

.method public static synthetic access$400(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->mergeHyperlink:Z

    return p0
.end method

.method public static synthetic access$500(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyRowHeight:Z

    return p0
.end method

.method public static synthetic access$600(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->condenseRows:Z

    return p0
.end method

.method public static synthetic access$700(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyMergedRegions:Z

    return p0
.end method


# virtual methods
.method public build()Lorg/apache/poi/ss/usermodel/CellCopyPolicy;
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;-><init>(Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;Lorg/apache/poi/ss/usermodel/CellCopyPolicy$1;)V

    return-object v0
.end method

.method public cellFormula(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellFormula:Z

    return-object p0
.end method

.method public cellStyle(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellStyle:Z

    return-object p0
.end method

.method public cellValue(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyCellValue:Z

    return-object p0
.end method

.method public condenseRows(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->condenseRows:Z

    return-object p0
.end method

.method public copyHyperlink(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyHyperlink:Z

    return-object p0
.end method

.method public mergeHyperlink(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->mergeHyperlink:Z

    return-object p0
.end method

.method public mergedRegions(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyMergedRegions:Z

    return-object p0
.end method

.method public rowHeight(Z)Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/CellCopyPolicy$Builder;->copyRowHeight:Z

    return-object p0
.end method

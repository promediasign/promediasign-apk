.class Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/util/cellwalk/CellWalkContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/cellwalk/CellWalk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleCellWalkContext"
.end annotation


# instance fields
.field public colNumber:I

.field public ordinalNumber:J

.field public rowNumber:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->ordinalNumber:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    iput v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/ss/util/cellwalk/CellWalk$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->colNumber:I

    return v0
.end method

.method public getOrdinalNumber()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->ordinalNumber:J

    return-wide v0
.end method

.method public getRowNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/cellwalk/CellWalk$SimpleCellWalkContext;->rowNumber:I

    return v0
.end method

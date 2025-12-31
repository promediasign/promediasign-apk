.class public final Lorg/apache/poi/ss/formula/PlainCellCache$Loc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/PlainCellCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Loc"
.end annotation


# instance fields
.field private final _bookSheetColumn:J

.field private final _rowIndex:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p4}, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->toBookSheetColumn(III)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    iput p3, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    iput p3, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    return-void
.end method

.method public static toBookSheetColumn(III)J
    .locals 5

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 p0, 0x30

    shl-long/2addr v0, p0

    int-to-long p0, p1

    and-long/2addr p0, v2

    const/16 v4, 0x20

    shl-long/2addr p0, v4

    add-long/2addr v0, p0

    int-to-long p0, p2

    and-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    iget-wide v2, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    iget-wide v4, p1, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    iget p1, p1, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBookIndex()I
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getColumnIndex()I
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getRowIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    return v0
.end method

.method public getSheetIndex()I
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_bookSheetColumn:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;->_rowIndex:I

    mul-int/lit8 v0, v0, 0x11

    add-int/2addr v0, v1

    return v0
.end method

.class Lorg/apache/poi/xssf/binary/XSSFBCellHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static length:I = 0x8


# instance fields
.field private colNum:I

.field private rowNum:I

.field private showPhonetic:Z

.field private styleIdx:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse([BIILorg/apache/poi/xssf/binary/XSSFBCellHeader;)V
    .locals 2

    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->get24BitInt([BI)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {p3, p2, v0, p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->reset(IIIZ)V

    return-void
.end method


# virtual methods
.method public getColNum()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->colNum:I

    return v0
.end method

.method public getStyleIdx()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->styleIdx:I

    return v0
.end method

.method public reset(IIIZ)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->rowNum:I

    iput p2, p0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->colNum:I

    iput p3, p0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->styleIdx:I

    iput-boolean p4, p0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->showPhonetic:Z

    return-void
.end method

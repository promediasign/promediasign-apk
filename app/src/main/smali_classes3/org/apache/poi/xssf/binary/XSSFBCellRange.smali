.class Lorg/apache/poi/xssf/binary/XSSFBCellRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final length:I = 0x10


# instance fields
.field firstCol:I

.field firstRow:I

.field lastCol:I

.field lastRow:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse([BILorg/apache/poi/xssf/binary/XSSFBCellRange;)Lorg/apache/poi/xssf/binary/XSSFBCellRange;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    invoke-direct {p2}, Lorg/apache/poi/xssf/binary/XSSFBCellRange;-><init>()V

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v0

    iput v0, p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->firstRow:I

    add-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v0

    iput v0, p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->lastRow:I

    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v0

    iput v0, p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->firstCol:I

    add-int/lit8 p1, p1, 0xc

    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result p0

    iput p0, p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->lastCol:I

    return-object p2
.end method

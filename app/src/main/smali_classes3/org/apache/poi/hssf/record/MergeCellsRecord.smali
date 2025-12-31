.class public final Lorg/apache/poi/hssf/record/MergeCellsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0xe5s


# instance fields
.field private final _numberOfRegions:I

.field private final _regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

.field private final _startIndex:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    new-array v1, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v4, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    iput v2, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    iput-object v1, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    iput p2, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    iput p3, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->clone()Lorg/apache/poi/hssf/record/MergeCellsRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/MergeCellsRecord;
    .locals 6

    .line 2
    iget v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    new-array v1, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    iget v5, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    add-int/2addr v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-direct {v3, v1, v2, v0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;II)V

    return-object v3
.end method

.method public getAreaAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    iget v1, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method public getDataSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getEncodedSize(I)I

    move-result v0

    return v0
.end method

.method public getNumAreas()S
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    int-to-short v0, v0

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0xe5

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    iget v2, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[MERGEDCELLS]\n     .numregions ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getNumAreas()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_numberOfRegions:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_regions:[Lorg/apache/poi/ss/util/CellRangeAddress;

    iget v4, p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;->_startIndex:I

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    const-string v4, "     .rowfrom ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "\n     .rowto   ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "\n     .colfrom ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "\n     .colto   ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "[MERGEDCELLS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

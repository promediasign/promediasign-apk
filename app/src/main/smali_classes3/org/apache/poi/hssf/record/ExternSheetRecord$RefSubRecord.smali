.class final Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/ExternSheetRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefSubRecord"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x6


# instance fields
.field private final _extBookIndex:I

.field private _firstSheetIndex:I

.field private _lastSheetIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_extBookIndex:I

    iput p2, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    iput p3, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;-><init>(III)V

    return-void
.end method


# virtual methods
.method public adjustIndex(I)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    return-void
.end method

.method public getExtBookIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_extBookIndex:I

    return v0
.end method

.method public getFirstSheetIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    return v0
.end method

.method public getLastSheetIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_extBookIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "extBook="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_extBookIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " firstSheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " lastSheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

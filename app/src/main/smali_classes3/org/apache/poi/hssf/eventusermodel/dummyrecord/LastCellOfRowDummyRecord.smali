.class public final Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;
.super Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;
.source "SourceFile"


# instance fields
.field private final lastColumnNumber:I

.field private final row:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;->row:I

    iput p2, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;->lastColumnNumber:I

    return-void
.end method


# virtual methods
.method public getLastColumnNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;->lastColumnNumber:I

    return v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;->row:I

    return v0
.end method

.method public bridge synthetic serialize(I[B)I
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;->serialize(I[B)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End-of-Row for Row="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at Column="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/LastCellOfRowDummyRecord;->lastColumnNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/DrawingSelectionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfficeArtRecordHeader"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x8


# instance fields
.field private final _length:I

.field private final _type:I

.field private final _verAndInstance:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_verAndInstance:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_type:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_length:I

    return-void
.end method


# virtual methods
.method public debugFormatAsString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "ver+inst="

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_verAndInstance:I

    .line 14
    .line 15
    const-string v2, " type="

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_type:I

    .line 21
    .line 22
    const-string v2, " len="

    .line 23
    .line 24
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_length:I

    .line 28
    .line 29
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_verAndInstance:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_type:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_length:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

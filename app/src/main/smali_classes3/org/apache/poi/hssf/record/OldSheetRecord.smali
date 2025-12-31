.class public final Lorg/apache/poi/hssf/record/OldSheetRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x85s


# instance fields
.field private codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

.field private field_1_position_of_BOF:I

.field private field_2_visibility:I

.field private field_3_type:I

.field private field_5_sheetname:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_1_position_of_BOF:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_2_visibility:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_3_type:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_5_sheetname:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->read([BII)I

    return-void
.end method


# virtual methods
.method public getPositionOfBof()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_1_position_of_BOF:I

    return v0
.end method

.method public getSheetname()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_5_sheetname:[B

    iget-object v1, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString([BLorg/apache/poi/hssf/record/CodepageRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x85

    return v0
.end method

.method public setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[BOUNDSHEET]\n    .bof        = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldSheetRecord;->getPositionOfBof()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    const-string v1, "\n    .visibility = "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_2_visibility:I

    .line 25
    .line 26
    const-string v2, "\n    .type       = "

    .line 27
    .line 28
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lorg/apache/poi/hssf/record/OldSheetRecord;->field_3_type:I

    .line 32
    .line 33
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->byteToHex(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    .line 39
    .line 40
    const-string v1, "\n    .sheetname  = "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldSheetRecord;->getSheetname()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    const-string v1, "\n[/BOUNDSHEET]\n"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method

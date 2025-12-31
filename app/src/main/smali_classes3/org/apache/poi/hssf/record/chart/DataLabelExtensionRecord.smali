.class public final Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x86as


# instance fields
.field private grbitFrt:I

.field private rt:I

.field private unused:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;->unused:[B

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;->rt:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;->grbitFrt:I

    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;->unused:[B

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x86a

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;->rt:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;->grbitFrt:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;->unused:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[DATALABEXT]\n    .rt      ="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;->rt:I

    .line 9
    .line 10
    const-string v2, "\n    .grbitFrt="

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;->grbitFrt:I

    .line 16
    .line 17
    const-string v2, "\n    .unused  ="

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/apache/poi/hssf/record/chart/DataLabelExtensionRecord;->unused:[B

    .line 23
    .line 24
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    const-string v1, "\n[/DATALABEXT]\n"

    .line 32
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

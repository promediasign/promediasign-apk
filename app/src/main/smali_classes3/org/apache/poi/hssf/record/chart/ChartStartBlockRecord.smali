.class public final Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x852s


# instance fields
.field private grbitFrt:S

.field private iObjectContext:S

.field private iObjectInstance1:S

.field private iObjectInstance2:S

.field private iObjectKind:S

.field private rt:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->clone()Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x852

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[STARTBLOCK]\n    .rt              ="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    .line 9
    .line 10
    const-string v2, "\n    .grbitFrt        ="

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    .line 16
    .line 17
    const-string v2, "\n    .iObjectKind     ="

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    .line 23
    .line 24
    const-string v2, "\n    .iObjectContext  ="

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    .line 30
    .line 31
    const-string v2, "\n    .iObjectInstance1="

    .line 32
    .line 33
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    .line 37
    .line 38
    const-string v2, "\n    .iObjectInstance2="

    .line 39
    .line 40
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    .line 44
    .line 45
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    const-string v1, "\n[/STARTBLOCK]\n"

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

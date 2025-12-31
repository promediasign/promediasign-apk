.class public final Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x853s


# instance fields
.field private grbitFrt:S

.field private iObjectKind:S

.field private rt:S

.field private unused:[B


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

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->rt:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->grbitFrt:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->iObjectKind:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->unused:[B

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->unused:[B

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->clone()Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->rt:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->rt:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->grbitFrt:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->grbitFrt:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->iObjectKind:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->iObjectKind:S

    iget-object v1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->unused:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->unused:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->unused:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x853

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->rt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->grbitFrt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->iObjectKind:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->unused:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[ENDBLOCK]\n    .rt         ="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->rt:S

    .line 9
    .line 10
    const-string v2, "\n    .grbitFrt   ="

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->grbitFrt:S

    .line 16
    .line 17
    const-string v2, "\n    .iObjectKind="

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->iObjectKind:S

    .line 23
    .line 24
    const-string v2, "\n    .unused     ="

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->unused:[B

    .line 30
    .line 31
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    const-string v1, "\n[/ENDBLOCK]\n"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method

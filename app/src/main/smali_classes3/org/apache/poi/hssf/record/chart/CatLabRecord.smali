.class public final Lorg/apache/poi/hssf/record/chart/CatLabRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x856s


# instance fields
.field private at:S

.field private grbit:S

.field private grbitFrt:S

.field private rt:S

.field private unused:Ljava/lang/Short;

.field private wOffset:S


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->rt:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbitFrt:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->wOffset:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->at:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbit:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->unused:Ljava/lang/Short;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->unused:Ljava/lang/Short;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x856

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->rt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbitFrt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->wOffset:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->at:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbit:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->unused:Ljava/lang/Short;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[CATLAB]\n    .rt      ="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->rt:S

    .line 9
    .line 10
    const-string v2, "\n    .grbitFrt="

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbitFrt:S

    .line 16
    .line 17
    const-string v2, "\n    .wOffset ="

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->wOffset:S

    .line 23
    .line 24
    const-string v2, "\n    .at      ="

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->at:S

    .line 30
    .line 31
    const-string v2, "\n    .grbit   ="

    .line 32
    .line 33
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->grbit:S

    .line 37
    .line 38
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    .line 44
    .line 45
    const/16 v1, 0xa

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->unused:Ljava/lang/Short;

    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    const-string v2, "    .unused  ="

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lorg/apache/poi/hssf/record/chart/CatLabRecord;->unused:Ljava/lang/Short;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    :cond_0
    const-string v1, "[/CATLAB]\n"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method

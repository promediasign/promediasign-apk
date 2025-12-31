.class public final Lorg/apache/poi/hssf/record/LabelRecord;
.super Lorg/apache/poi/hssf/record/Record;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/CellValueRecordInterface;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;

.field public static final sid:S = 0x204s


# instance fields
.field private field_1_row:I

.field private field_2_column:S

.field private field_3_xf_index:S

.field private field_4_string_len:S

.field private field_5_unicode_flag:B

.field private field_6_value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/LabelRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/LabelRecord;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_1_row:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_2_column:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_3_xf_index:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_5_unicode_flag:B

    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->isUnCompressedUnicode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lorg/apache/poi/hssf/record/LabelRecord;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LabelRecord data remains: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->clone()Lorg/apache/poi/hssf/record/LabelRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/LabelRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/LabelRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/LabelRecord;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_1_row:I

    iput v1, v0, Lorg/apache/poi/hssf/record/LabelRecord;->field_1_row:I

    iget-short v1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_2_column:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/LabelRecord;->field_2_column:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_3_xf_index:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/LabelRecord;->field_3_xf_index:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_5_unicode_flag:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/LabelRecord;->field_5_unicode_flag:B

    iget-object v1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    return-object v0
.end method

.method public getColumn()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_2_column:S

    return v0
.end method

.method public getRecordSize()I
    .locals 2

    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    const-string v1, "Label Records are supported READ ONLY...convert to LabelSST"

    invoke-direct {v0, v1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_1_row:I

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x204

    return v0
.end method

.method public getStringLength()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    return-object v0
.end method

.method public getXFIndex()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_3_xf_index:S

    return v0
.end method

.method public isUnCompressedUnicode()Z
    .locals 2

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_5_unicode_flag:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public serialize(I[B)I
    .locals 0

    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string p2, "Label Records are supported READ ONLY...convert to LabelSST"

    invoke-direct {p1, p2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColumn(S)V
    .locals 0

    return-void
.end method

.method public setRow(I)V
    .locals 0

    return-void
.end method

.method public setXFIndex(S)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[LABEL]\n    .row       = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->getRow()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    const-string v1, "\n    .column    = "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->getColumn()S

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    const-string v1, "\n    .xfindex   = "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->getXFIndex()S

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    const-string v1, "\n    .string_len= "

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    iget-short v1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    .line 57
    .line 58
    const-string v2, "\n    .unicode_flag= "

    .line 59
    .line 60
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_5_unicode_flag:B

    .line 64
    .line 65
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->byteToHex(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    const-string v1, "\n    .value       = "

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->getValue()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    const-string v1, "\n[/LABEL]\n"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0
.end method

.class public final Lorg/apache/poi/hssf/record/FormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;

.field public static final sid:S = 0x41es


# instance fields
.field private final field_1_index_code:I

.field private final field_3_hasMultibyte:Z

.field private final field_4_formatstring:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FormatRecord;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    iput-object p2, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    invoke-static {p2}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/record/FormatRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    iget v0, p1, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    iput v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    iget-boolean v0, p1, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    iget-object p1, p1, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    if-eqz v1, :cond_1

    invoke-static {p1, v0, v3}, Lorg/apache/poi/hssf/record/FormatRecord;->readStringCommon(Lorg/apache/poi/hssf/record/RecordInputStream;IZ)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, v2}, Lorg/apache/poi/hssf/record/FormatRecord;->readStringCommon(Lorg/apache/poi/hssf/record/RecordInputStream;IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-void
.end method

.method private static readStringCommon(Lorg/apache/poi/hssf/record/RecordInputStream;IZ)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p1, :cond_6

    .line 4
    .line 5
    const/high16 v2, 0x100000

    .line 6
    .line 7
    if-gt p1, v2, :cond_6

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    div-int/lit8 v2, v2, 0x2

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    .line 19
    .line 20
    .line 21
    if-ne p1, v2, :cond_1

    .line 22
    .line 23
    new-array p1, p1, [C

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    new-array p1, v2, [C

    .line 27
    .line 28
    :goto_1
    const/4 v2, 0x0

    .line 29
    :goto_2
    array-length v3, p1

    .line 30
    if-ge v2, v3, :cond_3

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    :goto_3
    int-to-char v3, v3

    .line 39
    goto :goto_4

    .line 40
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    goto :goto_3

    .line 45
    :goto_4
    aput-char v3, p1, v2

    .line 46
    .line 47
    add-int/2addr v2, v1

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-ne p2, v1, :cond_4

    .line 54
    .line 55
    array-length p2, p1

    .line 56
    add-int/2addr p2, v1

    .line 57
    new-array p2, p2, [C

    .line 58
    .line 59
    array-length v2, p1

    .line 60
    invoke-static {p1, v0, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    .line 62
    .line 63
    array-length p1, p1

    .line 64
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    int-to-char v2, v2

    .line 69
    aput-char v2, p2, p1

    .line 70
    .line 71
    move-object p1, p2

    .line 72
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-lez p2, :cond_5

    .line 77
    .line 78
    sget-object p2, Lorg/apache/poi/hssf/record/FormatRecord;->logger:Lorg/apache/poi/util/POILogger;

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v3, "FormatRecord has "

    .line 83
    .line 84
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v3, " unexplained bytes. Silently skipping"

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    new-array v1, v1, [Ljava/lang/Object;

    .line 104
    .line 105
    aput-object v2, v1, v0

    .line 106
    .line 107
    const/4 v0, 0x3

    .line 108
    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :goto_5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-lez p2, :cond_5

    .line 116
    .line 117
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    .line 118
    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_5
    new-instance p0, Ljava/lang/String;

    .line 122
    .line 123
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    const-string p2, "Bad requested string length ("

    .line 130
    .line 131
    const-string v0, ")"

    .line 132
    .line 133
    invoke-static {p1, p2, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->clone()Lorg/apache/poi/hssf/record/FormatRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/FormatRecord;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/FormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/FormatRecord;-><init>(Lorg/apache/poi/hssf/record/FormatRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_4_formatstring:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexCode()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_1_index_code:I

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x41e

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[FORMAT]\n    .indexcode       = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .isUnicode       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/FormatRecord;->field_3_hasMultibyte:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n    .formatstring    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormatRecord;->getFormatString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/FORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B

.field private static logger:Lorg/apache/poi/util/POILogger; = null

.field public static final sid:S = 0x9s


# instance fields
.field private field_1_unknown_int:I

.field private field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

.field private field_2_unknownFormulaData:[B

.field private field_3_unicode_flag:Z

.field private field_4_ole_classname:Ljava/lang/String;

.field private field_4_unknownByte:Ljava/lang/Byte;

.field private field_5_stream_id:Ljava/lang/Integer;

.field private field_6_unknown:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    sget-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x6ct
        0x6at
        0x16t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v3

    add-int/lit8 v4, p2, -0x2

    sub-int/2addr v4, v3

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v5

    iput v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    add-int/lit8 p2, p2, -0x8

    invoke-static {p1, v3}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    move-result-object v5

    sub-int/2addr p2, v3

    invoke-static {v5}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRefPtg([B)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    iput-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    goto :goto_0

    :cond_0
    iput-object v7, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    :goto_0
    add-int/lit8 v5, v4, 0x3

    const/4 v6, 0x4

    if-lt p2, v5, :cond_5

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v5

    if-ne v5, v2, :cond_4

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    if-eqz v2, :cond_2

    invoke-static {p1, v5}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v2, v5, 0x4

    goto :goto_2

    :cond_2
    invoke-static {p1, v5}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    add-int v2, v6, v5

    goto :goto_2

    :cond_3
    const-string v5, ""

    iput-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string p2, "Expected byte 0x03 here"

    invoke-direct {p1, p2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iput-object v7, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    const/4 v2, 0x0

    :goto_2
    sub-int/2addr p2, v2

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    add-int/lit8 p2, p2, -0x1

    iget-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-nez v3, :cond_6

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    :cond_6
    sub-int v2, p2, v4

    if-lez v2, :cond_7

    sget-object v3, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->logger:Lorg/apache/poi/util/POILogger;

    const-string v5, "Discarding "

    const-string v8, " unexpected padding bytes "

    .line 2
    invoke-static {v2, v5, v8}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v1

    const/4 v1, 0x7

    invoke-virtual {v3, v1, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    sub-int/2addr p2, v2

    :cond_7
    if-lt v4, v6, :cond_8

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    add-int/lit8 p2, p2, -0x4

    goto :goto_3

    :cond_8
    iput-object v7, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    :goto_3
    invoke-static {p1, p2}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    return-void
.end method

.method private getDataSize(I)I
    .locals 2

    .line 2
    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    add-int/lit8 v0, p1, 0x6

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    array-length p1, p1

    add-int/2addr v0, p1

    return v0
.end method

.method private getStreamIDOffset(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x6

    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 p1, p1, 0xa

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x2

    add-int v0, v1, p1

    goto :goto_0

    :cond_1
    add-int v0, p1, v1

    :cond_2
    :goto_0
    rem-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method

.method private static readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->EMPTY_BYTE_ARRAY:[B

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-array p1, p1, [B

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 11
    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v0, "Negative size ("

    .line 17
    .line 18
    const-string v1, ")"

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method private static readRefPtg([B)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2

    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result p0

    const/16 v1, 0x24

    if-eq p0, v1, :cond_3

    const/16 v1, 0x25

    if-eq p0, v1, :cond_2

    const/16 v1, 0x3a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3b

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :cond_3
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->clone()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;
    .locals 0

    .line 2
    return-object p0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->clone()Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    array-length v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getStreamIDOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getDataSize(I)I

    move-result v0

    return v0
.end method

.method public getOLEClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getStreamId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getStreamIDOffset(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getDataSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x9

    .line 22
    .line 23
    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 33
    .line 34
    .line 35
    iget v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    .line 36
    .line 37
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    .line 45
    .line 46
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v2, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    add-int/lit8 v2, v0, 0xc

    .line 54
    .line 55
    iget-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/4 v2, 0x3

    .line 61
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v3, v0, 0xf

    .line 74
    .line 75
    if-lez v2, :cond_4

    .line 76
    .line 77
    iget-boolean v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    .line 78
    .line 79
    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v0, v0, 0x10

    .line 83
    .line 84
    iget-boolean v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    .line 85
    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    iget-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v3, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 91
    .line 92
    .line 93
    mul-int/lit8 v2, v2, 0x2

    .line 94
    .line 95
    add-int/2addr v2, v0

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    iget-object v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v3, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 100
    .line 101
    .line 102
    add-int/2addr v2, v0

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    move v2, v3

    .line 105
    :goto_2
    add-int/lit8 v0, v2, -0x6

    .line 106
    .line 107
    sub-int v0, v1, v0

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    const/4 v3, 0x1

    .line 112
    if-ne v0, v3, :cond_6

    .line 113
    .line 114
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    .line 115
    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    goto :goto_3

    .line 120
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    :goto_3
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    const-string v0, "Bad padding calculation ("

    .line 131
    .line 132
    const-string v3, ", "

    .line 133
    .line 134
    const-string v4, ")"

    .line 135
    .line 136
    invoke-static {v0, v1, v3, v2, v4}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1

    .line 144
    :cond_7
    :goto_4
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    .line 145
    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 153
    .line 154
    .line 155
    :cond_8
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    .line 156
    .line 157
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public setOleClassname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    return-void
.end method

.method public setStorageId(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    return-void
.end method

.method public setUnknownFormulaData([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[ftPictFmla]\n    .f2unknown     = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v2, :cond_0

    const-string v2, "    .f3unknown     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const-string v2, "    .formula       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "    .unicodeFlag   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, "\n    .oleClassname  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    if-eqz v2, :cond_2

    const-string v2, "    .f4unknown   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    const-string v2, "    .streamId      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    array-length v2, v2

    if-lez v2, :cond_4

    const-string v2, "    .f7unknown     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v1, "[/ftPictFmla]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

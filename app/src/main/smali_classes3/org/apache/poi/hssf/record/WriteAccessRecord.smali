.class public final Lorg/apache/poi/hssf/record/WriteAccessRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final PADDING:[B

.field public static final sid:S = 0x5cs


# instance fields
.field private field_1_username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x70

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->PADDING:[B

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    const/16 v1, 0x70

    if-gt v0, v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v2

    if-gt v0, v1, :cond_3

    and-int/lit16 v1, v2, 0xfe

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_1

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    :goto_1
    if-lez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v1

    add-int/lit8 v3, v1, 0x3

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/4 v0, 0x2

    invoke-static {v3, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putByte([BII)V

    const/4 v0, 0x3

    invoke-virtual {p1, v3, v0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BII)V

    new-instance p1, Ljava/lang/String;

    sget-object v0, Lorg/apache/poi/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v3, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->setUsername(Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected data size (112) but got ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x5c

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0x70

    sget-object v1, Lorg/apache/poi/hssf/record/WriteAccessRecord;->PADDING:[B

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([BII)V

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    mul-int v1, v1, v0

    add-int/lit8 v1, v1, 0x3

    rsub-int/lit8 v0, v1, 0x70

    if-ltz v0, :cond_1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name is too long: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[WRITEACCESS]\n    .name = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;->field_1_username:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "\n[/WRITEACCESS]\n"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

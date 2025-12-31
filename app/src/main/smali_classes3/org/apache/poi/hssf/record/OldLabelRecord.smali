.class public final Lorg/apache/poi/hssf/record/OldLabelRecord;
.super Lorg/apache/poi/hssf/record/OldCellRecord;
.source "SourceFile"


# static fields
.field public static final biff2_sid:S = 0x4s

.field public static final biff345_sid:S = 0x204s

.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

.field private field_4_string_len:S

.field private final field_5_bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/OldLabelRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/OldLabelRecord;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/apache/poi/hssf/record/OldCellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;Z)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    int-to-short v1, v1

    :goto_1
    iput-short v1, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_4_string_len:S

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    goto :goto_1

    :goto_2
    iget-short v1, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_4_string_len:S

    new-array v2, v1, [B

    iput-object v2, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_5_bytes:[B

    invoke-virtual {p1, v2, v3, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->read([BII)I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Lorg/apache/poi/hssf/record/OldLabelRecord;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "LabelRecord data remains: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const/4 p1, 0x3

    invoke-virtual {v1, p1, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public appendValueText(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "    .string_len= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_4_string_len:S

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    .value       = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldLabelRecord;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "OLD LABEL"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 2

    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    const-string v1, "Old Label Records are supported READ ONLY"

    invoke-direct {v0, v1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringLength()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_4_string_len:S

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_5_bytes:[B

    iget-object v1, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString([BLorg/apache/poi/hssf/record/CodepageRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serialize(I[B)I
    .locals 0

    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string p2, "Old Label Records are supported READ ONLY"

    invoke-direct {p1, p2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    return-void
.end method

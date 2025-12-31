.class public final Lorg/apache/poi/hssf/record/NameCommentRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x894s


# instance fields
.field private final field_1_record_type:S

.field private final field_2_frt_cell_ref_flag:S

.field private final field_3_reserved:J

.field private field_6_name_text:Ljava/lang/String;

.field private field_7_comment_text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_2_frt_cell_ref_flag:S

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_3_reserved:J

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_2_frt_cell_ref_flag:S

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_3_reserved:J

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, v1}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    goto :goto_3

    :cond_1
    invoke-static {p1, v1}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_3
    return-void
.end method


# virtual methods
.method public getCommentText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x12

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getNameText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordType()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x894

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-short v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_2_frt_cell_ref_flag:S

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-wide v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_3_reserved:J

    invoke-interface {p1, v2, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_1
    return-void
.end method

.method public setCommentText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    return-void
.end method

.method public setNameText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[NAMECMT]\n    .record type            = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-short v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    .line 9
    .line 10
    const-string v2, "\n    .frt cell ref flag      = "

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iget-short v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_2_frt_cell_ref_flag:S

    .line 16
    .line 17
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->byteToHex(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    const-string v1, "\n    .reserved               = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_3_reserved:J

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    const-string v1, "\n    .name length            = "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    const-string v1, "\n    .comment length         = "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    const-string v1, "\n    .name                   = "

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    const-string v1, "\n    .comment                = "

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    .line 78
    .line 79
    const-string v2, "\n[/NAMECMT]\n"

    .line 80
    .line 81
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method

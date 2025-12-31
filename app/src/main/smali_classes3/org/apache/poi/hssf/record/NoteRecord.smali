.class public final Lorg/apache/poi/hssf/record/NoteRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DEFAULT_PADDING:Ljava/lang/Byte;

.field public static final EMPTY_ARRAY:[Lorg/apache/poi/hssf/record/NoteRecord;

.field public static final NOTE_HIDDEN:S = 0x0s

.field public static final NOTE_VISIBLE:S = 0x2s

.field public static final sid:S = 0x1cs


# instance fields
.field private field_1_row:I

.field private field_2_col:I

.field private field_3_flags:S

.field private field_4_shapeid:I

.field private field_5_hasMultibyte:Z

.field private field_6_author:Ljava/lang/String;

.field private field_7_padding:Ljava/lang/Byte;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/poi/hssf/record/NoteRecord;

    sput-object v1, Lorg/apache/poi/hssf/record/NoteRecord;->EMPTY_ARRAY:[Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/NoteRecord;->DEFAULT_PADDING:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    sget-object v0, Lorg/apache/poi/hssf/record/NoteRecord;->DEFAULT_PADDING:Ljava/lang/Byte;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public authorIsMultibyte()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NoteRecord;->clone()Lorg/apache/poi/hssf/record/NoteRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/NoteRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NoteRecord;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    iput v1, v0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    iget v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    iput v1, v0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    iget-short v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    iget v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    iput v1, v0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    return v0
.end method

.method public getDataSize()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0xb

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public getFlags()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    return v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    return v0
.end method

.method public getShapeId()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    :cond_1
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    return-void
.end method

.method public setColumn(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    return-void
.end method

.method public setFlags(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    return-void
.end method

.method public setRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    return-void
.end method

.method public setShapeId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[NOTE]\n    .row    = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const-string v1, "\n    .col    = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    const-string v1, "\n    .flags  = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    iget-short v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    const-string v1, "\n    .shapeid= "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    const-string v1, "\n    .author = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    .line 49
    .line 50
    const-string v2, "\n[/NOTE]\n"

    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

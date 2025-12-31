.class public final Lorg/apache/poi/hssf/record/StyleRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final isBuiltinFlag:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x293s

.field private static final styleIndexMask:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_xf_index:I

.field private field_2_builtin_style:I

.field private field_3_outline_style_level:I

.field private field_3_stringHasMultibyte:Z

.field private field_4_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xfff

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->styleIndexMask:Lorg/apache/poi/util/BitField;

    const v0, 0x8000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_2_builtin_style:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_outline_style_level:I

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    if-nez v0, :cond_1

    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    goto :goto_2

    :cond_1
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "Ran out of data reading style record"

    invoke-direct {p1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    if-eqz v2, :cond_4

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_2
    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x293

    return v0
.end method

.method public getXFIndex()I
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->styleIndexMask:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public isBuiltin()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_2_builtin_style:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_outline_style_level:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    return-void
.end method

.method public setBuiltinStyle(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    iput p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_2_builtin_style:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    sget-object p1, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    iget v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    return-void
.end method

.method public setOutlineStyleLevel(I)V
    .locals 0

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_outline_style_level:I

    return-void
.end method

.method public setXFIndex(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->styleIndexMask:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[STYLE]\n    .xf_index_raw ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        .type     ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "built-in"

    goto :goto_0

    :cond_0
    const-string v1, "user-defined"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        .xf_index ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->getXFIndex()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "    .builtin_style="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_2_builtin_style:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n    .outline_level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_outline_style_level:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v2, "    .name        ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    const-string v1, "[/STYLE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

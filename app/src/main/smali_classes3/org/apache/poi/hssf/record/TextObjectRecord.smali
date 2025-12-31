.class public final Lorg/apache/poi/hssf/record/TextObjectRecord;
.super Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.source "SourceFile"


# static fields
.field public static final HORIZONTAL_TEXT_ALIGNMENT_CENTERED:S = 0x2s

.field public static final HORIZONTAL_TEXT_ALIGNMENT_JUSTIFIED:S = 0x4s

.field public static final HORIZONTAL_TEXT_ALIGNMENT_LEFT_ALIGNED:S = 0x1s

.field public static final HORIZONTAL_TEXT_ALIGNMENT_RIGHT_ALIGNED:S = 0x3s

.field private static final HorizontalTextAlignment:Lorg/apache/poi/util/BitField;

.field public static final TEXT_ORIENTATION_NONE:S = 0x0s

.field public static final TEXT_ORIENTATION_ROT_LEFT:S = 0x3s

.field public static final TEXT_ORIENTATION_ROT_RIGHT:S = 0x2s

.field public static final TEXT_ORIENTATION_TOP_TO_BOTTOM:S = 0x1s

.field public static final VERTICAL_TEXT_ALIGNMENT_BOTTOM:S = 0x3s

.field public static final VERTICAL_TEXT_ALIGNMENT_CENTER:S = 0x2s

.field public static final VERTICAL_TEXT_ALIGNMENT_JUSTIFY:S = 0x4s

.field public static final VERTICAL_TEXT_ALIGNMENT_TOP:S = 0x1s

.field private static final VerticalTextAlignment:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1b6s

.field private static final textLocked:Lorg/apache/poi/util/BitField;


# instance fields
.field private _linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

.field private _text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

.field private _unknownPostFormulaByte:Ljava/lang/Byte;

.field private _unknownPreFormulaInt:I

.field private field_1_options:I

.field private field_2_textOrientation:I

.field private field_3_reserved4:I

.field private field_4_reserved5:I

.field private field_5_reserved6:I

.field private field_8_reserved7:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->HorizontalTextAlignment:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x70

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->VerticalTextAlignment:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x200

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->textLocked:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 6

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    const/16 v4, 0xb

    if-lt v2, v4, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPreFormulaInt:I

    invoke-static {v2, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->readTokens(ILorg/apache/poi/util/LittleEndianInput;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    aget-object v2, v2, v4

    check-cast v2, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    iput-object v2, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Read "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v2

    const-string v2, " tokens but expected exactly 1"

    .line 2
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "Not enough remaining data for a link formula"

    invoke-direct {p1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iput-object v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    if-gtz v2, :cond_6

    if-lez v0, :cond_4

    invoke-static {p1, v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->readRawString(Lorg/apache/poi/hssf/record/RecordInputStream;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    :goto_1
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    if-lez v1, :cond_5

    invoke-static {p1, v2, v1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->processFontRuns(Lorg/apache/poi/hssf/record/RecordInputStream;Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;I)V

    :cond_5
    return-void

    :cond_6
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unused "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes at end of record"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFormattingDataLength()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->numFormattingRuns()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static processFontRuns(Lorg/apache/poi/hssf/record/RecordInputStream;Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;I)V
    .locals 4

    .line 1
    rem-int/lit8 v0, p2, 0x8

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    div-int/lit8 p2, p2, 0x8

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-ge v0, p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {p1, v1, v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->applyFont(IIS)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void

    .line 32
    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    .line 33
    .line 34
    const-string p1, "Bad format run data length "

    .line 35
    .line 36
    const-string v0, ")"

    .line 37
    .line 38
    invoke-static {p2, p1, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method private static readRawString(Lorg/apache/poi/hssf/record/RecordInputStream;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private serializeTXORecord(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getFormattingDataLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPreFormulaInt:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    :cond_0
    return-void
.end method

.method private serializeTrailingRecords(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinue()V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeStringData(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinue()V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-static {p1, v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->writeFormatData(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;)V

    return-void
.end method

.method private static writeFormatData(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->numFormattingRuns()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getIndexOfFormattingRun(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getFontOfFormattingRun(I)S

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/record/TextObjectRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    iput v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    iput v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    iput v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    iput v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    iput v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    iput v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    if-eqz v1, :cond_0

    iget v2, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPreFormulaInt:I

    iput v2, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPreFormulaInt:I

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    :cond_0
    return-object v0
.end method

.method public getHorizontalTextAlignment()I
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->HorizontalTextAlignment:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getLinkRefPtg()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1b6

    return v0
.end method

.method public getStr()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    return-object v0
.end method

.method public getTextOrientation()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    return v0
.end method

.method public getVerticalTextAlignment()I
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->VerticalTextAlignment:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public isTextLocked()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->textLocked:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->serializeTXORecord(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->serializeTrailingRecords(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    :cond_0
    return-void
.end method

.method public setHorizontalTextAlignment(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->HorizontalTextAlignment:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    return-void
.end method

.method public setStr(Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    return-void
.end method

.method public setTextLocked(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->textLocked:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    return-void
.end method

.method public setTextOrientation(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    return-void
.end method

.method public setVerticalTextAlignment(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->VerticalTextAlignment:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[TXO]\n    .options        = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    .line 9
    .line 10
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const-string v1, "\n         .isHorizontal = "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getHorizontalTextAlignment()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    const-string v1, "\n         .isVertical   = "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getVerticalTextAlignment()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    const-string v1, "\n         .textLocked   = "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->isTextLocked()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    const-string v1, "\n    .textOrientation= "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getTextOrientation()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    const-string v1, "\n    .reserved4      = "

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    .line 73
    .line 74
    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    .line 75
    .line 76
    const-string v2, "\n    .reserved5      = "

    .line 77
    .line 78
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    .line 82
    .line 83
    const-string v2, "\n    .reserved6      = "

    .line 84
    .line 85
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    .line 89
    .line 90
    const-string v2, "\n    .textLength     = "

    .line 91
    .line 92
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 96
    .line 97
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    .line 107
    .line 108
    const-string v1, "\n    .reserved7      = "

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    .line 114
    .line 115
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    .line 121
    .line 122
    const-string v1, "\n    .string = "

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 130
    .line 131
    .line 132
    const/16 v1, 0xa

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    .line 136
    .line 137
    const/4 v2, 0x0

    .line 138
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 139
    .line 140
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->numFormattingRuns()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-ge v2, v3, :cond_0

    .line 145
    .line 146
    const-string v3, "    .textrun = "

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    .line 150
    .line 151
    iget-object v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 152
    .line 153
    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getFontOfFormattingRun(I)S

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    .line 162
    .line 163
    add-int/lit8 v2, v2, 0x1

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_0
    const-string v1, "[/TXO]\n"

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    return-object v0
.end method

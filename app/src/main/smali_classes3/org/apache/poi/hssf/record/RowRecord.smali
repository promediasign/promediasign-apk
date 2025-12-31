.class public final Lorg/apache/poi/hssf/record/RowRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final ENCODED_SIZE:I = 0x14

.field private static final badFontHeight:Lorg/apache/poi/util/BitField;

.field private static final bottomBorder:Lorg/apache/poi/util/BitField;

.field private static final colapsed:Lorg/apache/poi/util/BitField;

.field private static final formatted:Lorg/apache/poi/util/BitField;

.field private static final outlineLevel:Lorg/apache/poi/util/BitField;

.field private static final phoeneticGuide:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x208s

.field private static final topBorder:Lorg/apache/poi/util/BitField;

.field private static final xfIndex:Lorg/apache/poi/util/BitField;

.field private static final zeroHeight:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_row_number:I

.field private field_2_first_col:I

.field private field_3_last_col:I

.field private field_4_height:S

.field private field_5_optimize:S

.field private field_6_reserved:S

.field private field_7_option_flags:I

.field private field_8_option_flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->outlineLevel:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->colapsed:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->zeroHeight:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->badFontHeight:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->formatted:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xfff

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->xfIndex:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x1000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->topBorder:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x2000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->bottomBorder:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x4000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->phoeneticGuide:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    const/16 p1, 0xff

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    const/4 p1, 0x0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    const/16 p1, 0x100

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    const/16 p1, 0xf

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->setEmpty()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid row number ("

    const-string v2, ")"

    .line 1
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid row number "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    const-string v2, " found in InputStream"

    .line 8
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/RowRecord;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(I)V

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    iput v1, v0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    iput v1, v0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    iget-short v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    iput v1, v0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    iput v1, v0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    return-object v0
.end method

.method public getBadFontHeight()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->badFontHeight:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getBottomBorder()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->bottomBorder:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getColapsed()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->colapsed:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getFirstCol()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    return v0
.end method

.method public getFormatted()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->formatted:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getHeight()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    return v0
.end method

.method public getLastCol()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    return v0
.end method

.method public getOptimize()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    return v0
.end method

.method public getOptionFlags()S
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    int-to-short v0, v0

    return v0
.end method

.method public getOptionFlags2()S
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    int-to-short v0, v0

    return v0
.end method

.method public getOutlineLevel()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->outlineLevel:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getPhoeneticGuide()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->phoeneticGuide:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getRowNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x208

    return v0
.end method

.method public getTopBorder()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->topBorder:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getXFIndex()S
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->xfIndex:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getZeroHeight()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->zeroHeight:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v0

    :goto_0
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v1

    :goto_1
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getHeight()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptimize()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptionFlags()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptionFlags2()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setBadFontHeight(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->badFontHeight:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    return-void
.end method

.method public setBottomBorder(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->bottomBorder:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    return-void
.end method

.method public setColapsed(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->colapsed:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    return-void
.end method

.method public setEmpty()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    return-void
.end method

.method public setFirstCol(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    return-void
.end method

.method public setFormatted(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->formatted:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    return-void
.end method

.method public setHeight(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    return-void
.end method

.method public setLastCol(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    return-void
.end method

.method public setOptimize(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    return-void
.end method

.method public setOutlineLevel(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->outlineLevel:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    return-void
.end method

.method public setPhoeneticGuide(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->phoeneticGuide:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    return-void
.end method

.method public setRowNumber(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    return-void
.end method

.method public setTopBorder(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->topBorder:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    return-void
.end method

.method public setXFIndex(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->xfIndex:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    return-void
.end method

.method public setZeroHeight(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->zeroHeight:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[ROW]\n    .rownumber      = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .firstcol       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .lastcol        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .height         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getHeight()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .optimize       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptimize()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .reserved       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .optionflags    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptionFlags()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n        .outlinelvl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n        .colapsed   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getColapsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n        .zeroheight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getZeroHeight()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n        .badfontheig= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getBadFontHeight()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n        .formatted  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getFormatted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n    .optionsflags2  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptionFlags2()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n        .xfindex       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getXFIndex()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n        .topBorder     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getTopBorder()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n        .bottomBorder  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getBottomBorder()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n        .phoeneticGuide= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getPhoeneticGuide()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n[/ROW]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

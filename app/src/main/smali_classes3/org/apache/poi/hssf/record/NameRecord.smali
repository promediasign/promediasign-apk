.class public final Lorg/apache/poi/hssf/record/NameRecord;
.super Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/NameRecord$Option;
    }
.end annotation


# static fields
.field public static final BUILTIN_AUTO_ACTIVATE:B = 0xat

.field public static final BUILTIN_AUTO_CLOSE:B = 0x3t

.field public static final BUILTIN_AUTO_DEACTIVATE:B = 0xbt

.field public static final BUILTIN_AUTO_OPEN:B = 0x2t

.field public static final BUILTIN_CONSOLIDATE_AREA:B = 0x1t

.field public static final BUILTIN_CRITERIA:B = 0x5t

.field public static final BUILTIN_DATABASE:B = 0x4t

.field public static final BUILTIN_DATA_FORM:B = 0x9t

.field public static final BUILTIN_FILTER_DB:B = 0xdt

.field public static final BUILTIN_PRINT_AREA:B = 0x6t

.field public static final BUILTIN_PRINT_TITLE:B = 0x7t

.field public static final BUILTIN_RECORDER:B = 0x8t

.field public static final BUILTIN_SHEET_TITLE:B = 0xct

.field public static final sid:S = 0x18s


# instance fields
.field private field_11_nameIsMultibyte:Z

.field private field_12_built_in_code:B

.field private field_12_name_text:Ljava/lang/String;

.field private field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

.field private field_14_custom_menu_text:Ljava/lang/String;

.field private field_15_description_text:Ljava/lang/String;

.field private field_16_help_topic_text:Ljava/lang/String;

.field private field_17_status_bar_text:Ljava/lang/String;

.field private field_1_option_flag:S

.field private field_2_keyboard_shortcut:B

.field private field_5_externSheetIndex_plus1:S

.field private field_6_sheetNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(BI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameRecord;-><init>()V

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_built_in_code:B

    iget-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    or-int/lit8 p1, p1, 0x20

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setOptionFlag(S)V

    iput p2, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 7

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readAllContinuedRemainder()[B

    move-result-object p1

    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([B)V

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_2_keyboard_shortcut:B

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result p1

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_5_externSheetIndex_plus1:S

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v2

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v3

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v4

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v5

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_built_in_code:B

    goto :goto_2

    :cond_1
    iget-boolean v6, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    if-eqz v6, :cond_2

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    add-int v6, v2, v3

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    sub-int/2addr p1, v6

    invoke-static {v1, v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v0, v2}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    invoke-static {v0, v5}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    return-void
.end method

.method private getNameRawSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method private getNameTextLength()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private static translateBuiltInName(B)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "_FilterDatabase"

    return-object p0

    :pswitch_1
    const-string p0, "Sheet_Title"

    return-object p0

    :pswitch_2
    const-string p0, "Auto_Deactivate"

    return-object p0

    :pswitch_3
    const-string p0, "Auto_Activate"

    return-object p0

    :pswitch_4
    const-string p0, "Data_Form"

    return-object p0

    :pswitch_5
    const-string p0, "Recorder"

    return-object p0

    :pswitch_6
    const-string p0, "Print_Titles"

    return-object p0

    :pswitch_7
    const-string p0, "Print_Area"

    return-object p0

    :pswitch_8
    const-string p0, "Criteria"

    return-object p0

    :pswitch_9
    const-string p0, "Database"

    return-object p0

    :pswitch_a
    const-string p0, "Auto_Close"

    return-object p0

    :pswitch_b
    const-string p0, "Auto_Open"

    return-object p0

    :pswitch_c
    const-string p0, "Consolidate_Area"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBuiltInName()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_built_in_code:B

    return v0
.end method

.method public getCustomMenuText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSize()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameRawSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getDescriptionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    return-object v0
.end method

.method public getExternSheetNumber()I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-ne v1, v3, :cond_1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-ne v1, v3, :cond_2

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v0

    return v0

    :cond_2
    return v2
.end method

.method public getFnGroup()B
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit16 v0, v0, 0xfc0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    return v0
.end method

.method public getHelpTopicText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardShortcut()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_2_keyboard_shortcut:B

    return v0
.end method

.method public getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getNameText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getBuiltInName()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/NameRecord;->translateBuiltInName(B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getOptionFlag()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    return v0
.end method

.method public getSheetNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    return-object v0
.end method

.method public hasFormula()Z
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    invoke-static {v0}, Lorg/apache/poi/hssf/record/NameRecord$Option;->isFormula(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuiltInName()Z
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCommandName()Z
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComplexFunction()Z
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFunctionName()Z
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHiddenName()Z
    .locals 2

    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMacro()Z
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getOptionFlag()S

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getKeyboardShortcut()B

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameTextLength()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    iget-object v4, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/Formula;->getEncodedTokenSize()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget-short v4, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_5_externSheetIndex_plus1:S

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v4, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    invoke-virtual {p1, v3}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_built_in_code:B

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    if-eqz v1, :cond_1

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeArrayConstantData(Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getCustomMenuText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getDescriptionText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getHelpTopicText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getStatusBarText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public setCustomMenuText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    return-void
.end method

.method public setDescriptionText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    return-void
.end method

.method public setFunction(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    or-int/lit8 p1, p1, 0x2

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    goto :goto_1

    :cond_0
    iget-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 p1, p1, -0x3

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setHelpTopicText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    or-int/lit8 p1, p1, 0x1

    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    goto :goto_1

    :cond_0
    iget-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    and-int/lit8 p1, p1, -0x2

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setKeyboardShortcut(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_2_keyboard_shortcut:B

    return-void
.end method

.method public setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public setNameText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_12_name_text:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    return-void
.end method

.method public setOptionFlag(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    return-void
.end method

.method public setSheetNumber(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    return-void
.end method

.method public setStatusBarText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[NAME]\n    .option flags           = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-short v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_1_option_flag:S

    .line 9
    .line 10
    const-string v2, "\n    .keyboard shortcut      = "

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_2_keyboard_shortcut:B

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
    const-string v1, "\n    .length of the name     = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameTextLength()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    const-string v1, "\n    .extSheetIx(1-based, 0=Global)= "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    iget-short v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_5_externSheetIndex_plus1:S

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    const-string v1, "\n    .sheetTabIx             = "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_6_sheetNumber:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    const-string v1, "\n    .Menu text length       = "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    const-string v1, "\n    .Description text length= "

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    const-string v1, "\n    .Help topic text length = "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 96
    .line 97
    .line 98
    const-string v1, "\n    .Status bar text length = "

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    .line 111
    .line 112
    const-string v1, "\n    .NameIsMultibyte        = "

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    .line 116
    .line 117
    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_11_nameIsMultibyte:Z

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 120
    .line 121
    .line 122
    const-string v1, "\n    .Name (Unicode text)    = "

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    .line 133
    .line 134
    const-string v1, "\n    .Formula (nTokens="

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_13_name_definition:Lorg/apache/poi/ss/formula/Formula;

    .line 140
    .line 141
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    array-length v2, v1

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 147
    .line 148
    .line 149
    const-string v2, "):\n"

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    .line 153
    .line 154
    array-length v2, v1

    .line 155
    const/4 v3, 0x0

    .line 156
    :goto_0
    if-ge v3, v2, :cond_0

    .line 157
    .line 158
    aget-object v4, v1, v3

    .line 159
    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v6, "       "

    .line 163
    .line 164
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getRVAType()C

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    .line 183
    .line 184
    const-string v4, "\n"

    .line 185
    .line 186
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    .line 188
    .line 189
    add-int/lit8 v3, v3, 0x1

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_0
    const-string v1, "    .Menu text       = "

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    .line 196
    .line 197
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_14_custom_menu_text:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    .line 201
    .line 202
    const-string v1, "\n    .Description text= "

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    .line 206
    .line 207
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_15_description_text:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    .line 211
    .line 212
    const-string v1, "\n    .Help topic text = "

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    .line 216
    .line 217
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_16_help_topic_text:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    .line 221
    .line 222
    const-string v1, "\n    .Status bar text = "

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    .line 226
    .line 227
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameRecord;->field_17_status_bar_text:Ljava/lang/String;

    .line 228
    .line 229
    const-string v2, "\n[/NAME]\n"

    .line 230
    .line 231
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    return-object v0
.end method

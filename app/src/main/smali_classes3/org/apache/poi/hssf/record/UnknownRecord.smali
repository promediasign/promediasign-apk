.class public final Lorg/apache/poi/hssf/record/UnknownRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final BITMAP_00E9:I = 0xe9

.field public static final CODENAME_1BA:I = 0x1ba

.field public static final HEADER_FOOTER_089C:I = 0x89c

.field public static final LABELRANGES_015F:I = 0x15f

.field public static final PHONETICPR_00EF:I = 0xef

.field public static final PLS_004D:I = 0x4d

.field public static final PLV_MAC:I = 0x8c8

.field public static final PRINTSIZE_0033:I = 0x33

.field public static final QUICKTIP_0800:I = 0x800

.field public static final SCL_00A0:I = 0xa0

.field public static final SHEETEXT_0862:I = 0x862

.field public static final SHEETPROTECTION_0867:I = 0x867

.field public static final SHEETPR_0081:I = 0x81

.field public static final SORT_0090:I = 0x90

.field public static final STANDARDWIDTH_0099:I = 0x99


# instance fields
.field private _rawData:[B

.field private _sid:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    const v0, 0xffff

    and-int/2addr p1, v0

    iput p1, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_sid:I

    iput-object p2, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_sid:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    return-void
.end method

.method public static getBiffName(I)Ljava/lang/String;
    .locals 2

    const-string v0, "SHAPEPROPSSTREAM"

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/UnknownRecord;->isObservedButUnknown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    const-string p0, "CHARTLINEFORMAT"

    return-object p0

    :sswitch_1
    const-string p0, "CHARTDATAFORMAT"

    return-object p0

    :sswitch_2
    const-string p0, "UNITS"

    return-object p0

    :sswitch_3
    const-string p0, "PLV{Mac Excel}"

    return-object p0

    :sswitch_4
    const-string p0, "CRTLAYOUT12A"

    return-object p0

    :sswitch_5
    const-string p0, "RICHTEXTSTREAM"

    return-object p0

    :sswitch_6
    const-string p0, "TEXTPROPSSTREAM"

    return-object p0

    :sswitch_7
    return-object v0

    :sswitch_8
    const-string p0, "FORCEFULLCALCULATION"

    return-object p0

    :sswitch_9
    return-object v0

    :sswitch_a
    const-string p0, "CRTMLFRTCONTINUE"

    return-object p0

    :sswitch_b
    const-string p0, "CRTMLFRT"

    return-object p0

    :sswitch_c
    const-string p0, "CRTLAYOUT12"

    return-object p0

    :sswitch_d
    const-string p0, "HEADERFOOTER"

    return-object p0

    :sswitch_e
    const-string p0, "COMPRESSPICTURES"

    return-object p0

    :sswitch_f
    const-string p0, "MTRSETTINGS"

    return-object p0

    :sswitch_10
    const-string p0, "GUIDTYPELIB"

    return-object p0

    :sswitch_11
    const-string p0, "THEME"

    return-object p0

    :sswitch_12
    const-string p0, "STYLEEXT"

    return-object p0

    :sswitch_13
    const-string p0, "DXF"

    return-object p0

    :sswitch_14
    const-string p0, "COMPAT12"

    return-object p0

    :sswitch_15
    const-string p0, "PLV"

    return-object p0

    :sswitch_16
    const-string p0, "CONTINUEFRT12"

    return-object p0

    :sswitch_17
    const-string p0, "XFEXT"

    return-object p0

    :sswitch_18
    const-string p0, "XFCRC"

    return-object p0

    :sswitch_19
    const-string p0, "CFEX"

    return-object p0

    :sswitch_1a
    const-string p0, "SHARED FEATURE v12"

    return-object p0

    :sswitch_1b
    const-string p0, "DCONN"

    return-object p0

    :sswitch_1c
    const-string p0, "DROPDOWNOBJIDS"

    return-object p0

    :sswitch_1d
    const-string p0, "SHARED FEATURE v11"

    return-object p0

    :sswitch_1e
    const-string p0, "CELLWATCH"

    return-object p0

    :sswitch_1f
    const-string p0, "DATALABEXTCONTENTS"

    return-object p0

    :sswitch_20
    const-string p0, "SHEETPROTECTION"

    return-object p0

    :sswitch_21
    const-string p0, "SXADDL"

    return-object p0

    :sswitch_22
    const-string p0, "BOOKEXT"

    return-object p0

    :sswitch_23
    const-string p0, "SHEETEXT"

    return-object p0

    :sswitch_24
    const-string p0, "CONTINUEFRT"

    return-object p0

    :sswitch_25
    const-string p0, "SXVIEWEX9"

    return-object p0

    :sswitch_26
    const-string p0, "TXTQUERY"

    return-object p0

    :sswitch_27
    const-string p0, "DBQUERYEXT"

    return-object p0

    :sswitch_28
    const-string p0, "QSISXTAG"

    return-object p0

    :sswitch_29
    const-string p0, "QUICKTIP"

    return-object p0

    :sswitch_2a
    const-string p0, "EXCEL9FILE"

    return-object p0

    :sswitch_2b
    const-string p0, "CODENAME"

    return-object p0

    :sswitch_2c
    const-string p0, "QSI"

    return-object p0

    :sswitch_2d
    const-string p0, "USERBVIEW"

    return-object p0

    :sswitch_2e
    const-string p0, "LABELRANGES"

    return-object p0

    :sswitch_2f
    const-string p0, "SXEX"

    return-object p0

    :sswitch_30
    const-string p0, "PHONETICPR"

    return-object p0

    :sswitch_31
    const-string p0, "BITMAP"

    return-object p0

    :sswitch_32
    const-string p0, "OLESIZE"

    return-object p0

    :sswitch_33
    const-string p0, "PARAMQRY"

    return-object p0

    :sswitch_34
    const-string p0, "OBPROJ"

    return-object p0

    :sswitch_35
    const-string p0, "SXLI"

    return-object p0

    :sswitch_36
    const-string p0, "SXIVD"

    return-object p0

    :sswitch_37
    const-string p0, "SXVI"

    return-object p0

    :sswitch_38
    const-string p0, "SCENMAN"

    return-object p0

    :sswitch_39
    const-string p0, "SCL"

    return-object p0

    :sswitch_3a
    const-string p0, "STANDARDWIDTH"

    return-object p0

    :sswitch_3b
    const-string p0, "LHRECORD"

    return-object p0

    :sswitch_3c
    const-string p0, "SORT"

    return-object p0

    :sswitch_3d
    const-string p0, "SHEETPR"

    return-object p0

    :sswitch_3e
    const-string p0, "IMDATA"

    return-object p0

    :sswitch_3f
    const-string p0, "DCON"

    return-object p0

    :sswitch_40
    const-string p0, "PLS"

    return-object p0

    :sswitch_41
    const-string p0, "PRINTSIZE"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_41
        0x4d -> :sswitch_40
        0x50 -> :sswitch_3f
        0x7f -> :sswitch_3e
        0x81 -> :sswitch_3d
        0x90 -> :sswitch_3c
        0x94 -> :sswitch_3b
        0x99 -> :sswitch_3a
        0xa0 -> :sswitch_39
        0xae -> :sswitch_38
        0xb2 -> :sswitch_37
        0xb4 -> :sswitch_36
        0xb5 -> :sswitch_35
        0xd3 -> :sswitch_34
        0xdc -> :sswitch_33
        0xde -> :sswitch_32
        0xe9 -> :sswitch_31
        0xef -> :sswitch_30
        0xf1 -> :sswitch_2f
        0x15f -> :sswitch_2e
        0x1a9 -> :sswitch_2d
        0x1ad -> :sswitch_2c
        0x1ba -> :sswitch_2b
        0x1c0 -> :sswitch_2a
        0x800 -> :sswitch_29
        0x802 -> :sswitch_28
        0x803 -> :sswitch_27
        0x805 -> :sswitch_26
        0x810 -> :sswitch_25
        0x812 -> :sswitch_24
        0x862 -> :sswitch_23
        0x863 -> :sswitch_22
        0x864 -> :sswitch_21
        0x867 -> :sswitch_20
        0x86b -> :sswitch_1f
        0x86c -> :sswitch_1e
        0x872 -> :sswitch_1d
        0x874 -> :sswitch_1c
        0x876 -> :sswitch_1b
        0x878 -> :sswitch_1a
        0x87b -> :sswitch_19
        0x87c -> :sswitch_18
        0x87d -> :sswitch_17
        0x87f -> :sswitch_16
        0x88b -> :sswitch_15
        0x88c -> :sswitch_14
        0x88d -> :sswitch_13
        0x892 -> :sswitch_12
        0x896 -> :sswitch_11
        0x897 -> :sswitch_10
        0x89a -> :sswitch_f
        0x89b -> :sswitch_e
        0x89c -> :sswitch_d
        0x89d -> :sswitch_c
        0x89e -> :sswitch_b
        0x89f -> :sswitch_a
        0x8a1 -> :sswitch_9
        0x8a3 -> :sswitch_8
        0x8a4 -> :sswitch_7
        0x8a5 -> :sswitch_6
        0x8a6 -> :sswitch_5
        0x8a7 -> :sswitch_4
        0x8c8 -> :sswitch_3
        0x1001 -> :sswitch_2
        0x1006 -> :sswitch_1
        0x1007 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isObservedButUnknown(I)Z
    .locals 1

    const/16 v0, 0x33

    if-eq p0, v0, :cond_0

    const/16 v0, 0x34

    if-eq p0, v0, :cond_0

    const/16 v0, 0x104a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x104b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x104e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x104f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x105c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x105d

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    :sswitch_0
    const/4 p0, 0x1

    return p0

    :sswitch_data_0
    .sparse-switch
        0x1bd -> :sswitch_0
        0x1c2 -> :sswitch_0
        0x1014 -> :sswitch_0
        0x101d -> :sswitch_0
        0x101e -> :sswitch_0
        0x101f -> :sswitch_0
        0x1020 -> :sswitch_0
        0x1021 -> :sswitch_0
        0x1022 -> :sswitch_0
        0x103a -> :sswitch_0
        0x1041 -> :sswitch_0
        0x1051 -> :sswitch_0
        0x105f -> :sswitch_0
        0x1060 -> :sswitch_0
        0x1062 -> :sswitch_0
        0x1063 -> :sswitch_0
        0x1064 -> :sswitch_0
        0x1065 -> :sswitch_0
        0x1066 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1009
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1017
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1024
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1032
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1043
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    array-length v0, v0

    return v0
.end method

.method public getSid()S
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_sid:I

    int-to-short v0, v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_sid:I

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/poi/hssf/record/UnknownRecord;->getBiffName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "UNKNOWNRECORD"

    .line 10
    .line 11
    :cond_0
    const-string v1, "["

    .line 12
    .line 13
    const-string v2, "] (0x"

    .line 14
    .line 15
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget v3, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_sid:I

    .line 25
    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, ")\n"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    .line 52
    .line 53
    array-length v2, v2

    .line 54
    if-lez v2, :cond_1

    .line 55
    .line 56
    const-string v2, "  rawData="

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lorg/apache/poi/hssf/record/UnknownRecord;->_rawData:[B

    .line 62
    .line 63
    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    const-string v2, "\n"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    :cond_1
    const-string v2, "[/"

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    const-string v0, "]\n"

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method

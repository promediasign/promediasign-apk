.class public Lorg/apache/poi/util/CodePageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CP_037:I = 0x25

.field public static final CP_EUC_JP:I = 0xcadc

.field public static final CP_EUC_KR:I = 0xcaed

.field public static final CP_GB18030:I = 0xd698

.field public static final CP_GB2312:I = 0xcec8

.field public static final CP_GBK:I = 0x3a8

.field public static final CP_ISO_2022_JP1:I = 0xc42c

.field public static final CP_ISO_2022_JP2:I = 0xc42d

.field public static final CP_ISO_2022_JP3:I = 0xc42e

.field public static final CP_ISO_2022_KR:I = 0xc431

.field public static final CP_ISO_8859_1:I = 0x6faf

.field public static final CP_ISO_8859_2:I = 0x6fb0

.field public static final CP_ISO_8859_3:I = 0x6fb1

.field public static final CP_ISO_8859_4:I = 0x6fb2

.field public static final CP_ISO_8859_5:I = 0x6fb3

.field public static final CP_ISO_8859_6:I = 0x6fb4

.field public static final CP_ISO_8859_7:I = 0x6fb5

.field public static final CP_ISO_8859_8:I = 0x6fb6

.field public static final CP_ISO_8859_9:I = 0x6fb7

.field public static final CP_JOHAB:I = 0x551

.field public static final CP_KOI8_R:I = 0x5182

.field public static final CP_MAC_ARABIC:I = 0x2714

.field public static final CP_MAC_CENTRAL_EUROPE:I = 0x272d

.field public static final CP_MAC_CHINESE_SIMPLE:I = 0x2718

.field public static final CP_MAC_CHINESE_TRADITIONAL:I = 0x2712

.field public static final CP_MAC_CROATIAN:I = 0x2762

.field public static final CP_MAC_CYRILLIC:I = 0x2717

.field public static final CP_MAC_GREEK:I = 0x2716

.field public static final CP_MAC_HEBREW:I = 0x2715

.field public static final CP_MAC_ICELAND:I = 0x275f

.field public static final CP_MAC_JAPAN:I = 0x2711

.field public static final CP_MAC_KOREAN:I = 0x2713

.field public static final CP_MAC_ROMAN:I = 0x2710

.field public static final CP_MAC_ROMANIA:I = 0x271a

.field public static final CP_MAC_ROMAN_BIFF23:I = 0x8000

.field public static final CP_MAC_THAI:I = 0x2725

.field public static final CP_MAC_TURKISH:I = 0x2761

.field public static final CP_MAC_UKRAINE:I = 0x2721

.field public static final CP_MS949:I = 0x3b5

.field public static final CP_SJIS:I = 0x3a4

.field public static final CP_UNICODE:I = 0x4b0

.field public static final CP_US_ACSII:I = 0x4e9f

.field public static final CP_US_ASCII2:I = 0xfde8

.field public static final CP_UTF16:I = 0x4b0

.field public static final CP_UTF16_BE:I = 0x4b1

.field public static final CP_UTF8:I = 0xfde9

.field public static final CP_WINDOWS_1250:I = 0x4e2

.field public static final CP_WINDOWS_1251:I = 0x4e3

.field public static final CP_WINDOWS_1252:I = 0x4e4

.field public static final CP_WINDOWS_1252_BIFF23:I = 0x8001

.field public static final CP_WINDOWS_1253:I = 0x4e5

.field public static final CP_WINDOWS_1254:I = 0x4e6

.field public static final CP_WINDOWS_1255:I = 0x4e7

.field public static final CP_WINDOWS_1256:I = 0x4e8

.field public static final CP_WINDOWS_1257:I = 0x4e9

.field public static final CP_WINDOWS_1258:I = 0x4ea

.field public static final DOUBLE_BYTE_CHARSETS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/util/StringUtil;->BIG5:Ljava/nio/charset/Charset;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/CodePageUtil;->DOUBLE_BYTE_CHARSETS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static codepageToEncoding(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static codepageToEncoding(IZ)Ljava/lang/String;
    .locals 3

    if-lez p0, :cond_16

    const/16 v0, 0x4b0

    if-eq p0, v0, :cond_15

    const/16 v0, 0x4b1

    if-eq p0, v0, :cond_14

    const/16 v0, 0x2761

    if-eq p0, v0, :cond_13

    const/16 v0, 0x2762

    if-eq p0, v0, :cond_12

    const-string v0, "SJIS"

    const-string v1, "EUC-KR"

    sparse-switch p0, :sswitch_data_0

    const-string v2, "Cp1255"

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    const-string p1, "cp"

    .line 2
    invoke-static {p0, p1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_0
    const-string p0, "UTF-8"

    return-object p0

    :pswitch_1
    const-string p0, "ISO-2022-JP"

    return-object p0

    :pswitch_2
    if-eqz p1, :cond_0

    const-string p0, "ISO8859_9"

    return-object p0

    :cond_0
    const-string p0, "ISO-8859-9"

    return-object p0

    :pswitch_3
    if-eqz p1, :cond_1

    const-string p0, "ISO8859_8"

    return-object p0

    :cond_1
    const-string p0, "ISO-8859-8"

    return-object p0

    :pswitch_4
    if-eqz p1, :cond_2

    const-string p0, "ISO8859_7"

    return-object p0

    :cond_2
    const-string p0, "ISO-8859-7"

    return-object p0

    :pswitch_5
    if-eqz p1, :cond_3

    const-string p0, "ISO8859_6"

    return-object p0

    :cond_3
    const-string p0, "ISO-8859-6"

    return-object p0

    :pswitch_6
    if-eqz p1, :cond_4

    const-string p0, "ISO8859_5"

    return-object p0

    :cond_4
    const-string p0, "ISO-8859-5"

    return-object p0

    :pswitch_7
    if-eqz p1, :cond_5

    const-string p0, "ISO8859_4"

    return-object p0

    :cond_5
    const-string p0, "ISO-8859-4"

    return-object p0

    :pswitch_8
    if-eqz p1, :cond_6

    const-string p0, "ISO8859_3"

    return-object p0

    :cond_6
    const-string p0, "ISO-8859-3"

    return-object p0

    :pswitch_9
    if-eqz p1, :cond_7

    const-string p0, "ISO8859_2"

    return-object p0

    :cond_7
    const-string p0, "ISO-8859-2"

    return-object p0

    :pswitch_a
    if-eqz p1, :cond_8

    const-string p0, "ISO8859_1"

    return-object p0

    :cond_8
    const-string p0, "ISO-8859-1"

    return-object p0

    :pswitch_b
    const-string p0, "EUC_CN"

    return-object p0

    :pswitch_c
    const-string p0, "MacCyrillic"

    return-object p0

    :pswitch_d
    const-string p0, "MacGreek"

    return-object p0

    :pswitch_e
    const-string p0, "MacHebrew"

    return-object p0

    :pswitch_f
    const-string p0, "MacArabic"

    return-object p0

    :pswitch_10
    return-object v1

    :pswitch_11
    const-string p0, "Big5"

    return-object p0

    :pswitch_12
    return-object v0

    :pswitch_13
    const-string p0, "MacRoman"

    return-object p0

    :pswitch_14
    if-eqz p1, :cond_9

    const-string p0, "Cp1258"

    return-object p0

    :cond_9
    const-string p0, "windows-1258"

    return-object p0

    :pswitch_15
    if-eqz p1, :cond_a

    const-string p0, "Cp1257"

    return-object p0

    :cond_a
    const-string p0, "windows-1257"

    return-object p0

    :pswitch_16
    if-eqz p1, :cond_b

    return-object v2

    :cond_b
    const-string p0, "windows-1256"

    return-object p0

    :pswitch_17
    if-eqz p1, :cond_c

    return-object v2

    :cond_c
    const-string p0, "windows-1255"

    return-object p0

    :pswitch_18
    if-eqz p1, :cond_d

    const-string p0, "Cp1254"

    return-object p0

    :cond_d
    const-string p0, "windows-1254"

    return-object p0

    :pswitch_19
    if-eqz p1, :cond_e

    const-string p0, "Cp1253"

    return-object p0

    :cond_e
    const-string p0, "windows-1253"

    return-object p0

    :pswitch_1a
    if-eqz p1, :cond_f

    const-string p0, "Cp1252"

    return-object p0

    :cond_f
    const-string p0, "windows-1252"

    return-object p0

    :pswitch_1b
    if-eqz p1, :cond_10

    const-string p0, "Cp1251"

    return-object p0

    :cond_10
    const-string p0, "windows-1251"

    return-object p0

    :pswitch_1c
    if-eqz p1, :cond_11

    const-string p0, "Cp1250"

    return-object p0

    :cond_11
    const-string p0, "windows-1250"

    return-object p0

    :sswitch_0
    const-string p0, "GB18030"

    return-object p0

    :sswitch_1
    const-string p0, "GB2312"

    return-object p0

    :sswitch_2
    return-object v1

    :sswitch_3
    const-string p0, "EUC-JP"

    return-object p0

    :sswitch_4
    const-string p0, "ISO-2022-KR"

    return-object p0

    :sswitch_5
    const-string p0, "KOI8-R"

    return-object p0

    :pswitch_1d
    :sswitch_6
    const-string p0, "US-ASCII"

    return-object p0

    :sswitch_7
    const-string p0, "MacIceland"

    return-object p0

    :sswitch_8
    const-string p0, "MacCentralEurope"

    return-object p0

    :sswitch_9
    const-string p0, "MacThai"

    return-object p0

    :sswitch_a
    const-string p0, "MacUkraine"

    return-object p0

    :sswitch_b
    const-string p0, "MacRomania"

    return-object p0

    :sswitch_c
    const-string p0, "johab"

    return-object p0

    :sswitch_d
    const-string p0, "ms949"

    return-object p0

    :sswitch_e
    const-string p0, "GBK"

    return-object p0

    :sswitch_f
    return-object v0

    :sswitch_10
    const-string p0, "cp037"

    return-object p0

    :cond_12
    const-string p0, "MacCroatian"

    return-object p0

    :cond_13
    const-string p0, "MacTurkish"

    return-object p0

    :cond_14
    const-string p0, "UTF-16BE"

    return-object p0

    :cond_15
    const-string p0, "UTF-16LE"

    return-object p0

    :cond_16
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    const-string v0, "Codepage number may not be "

    .line 4
    invoke-static {p0, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {p1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_10
        0x3a4 -> :sswitch_f
        0x3a8 -> :sswitch_e
        0x3b5 -> :sswitch_d
        0x551 -> :sswitch_c
        0x271a -> :sswitch_b
        0x2721 -> :sswitch_a
        0x2725 -> :sswitch_9
        0x272d -> :sswitch_8
        0x275f -> :sswitch_7
        0x4e9f -> :sswitch_6
        0x5182 -> :sswitch_5
        0xc431 -> :sswitch_4
        0xcadc -> :sswitch_3
        0xcaed -> :sswitch_2
        0xcec8 -> :sswitch_1
        0xd698 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4e2
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2710
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6faf
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8000
        :pswitch_13
        :pswitch_1a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc42c
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xfde8
        :pswitch_1d
        :pswitch_0
    .end packed-switch
.end method

.method public static cp950ToString([BII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lorg/apache/poi/util/LittleEndianCP950Reader;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/poi/util/LittleEndianCP950Reader;-><init>([BII)V

    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianCP950Reader;->read()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/util/LittleEndianCP950Reader;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBytesInCodePage(Ljava/lang/String;I)[B
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getStringFromCodePage([BI)Ljava/lang/String;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringFromCodePage([BIII)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {p3}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

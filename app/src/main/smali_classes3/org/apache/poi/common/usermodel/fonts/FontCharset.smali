.class public final enum Lorg/apache/poi/common/usermodel/fonts/FontCharset;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/usermodel/fonts/FontCharset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum ARABIC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum BALTIC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum CHINESEBIG5:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum DEFAULT:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum EASTEUROPE:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum GB2312:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum GREEK:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum HANGUL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum HEBREW:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum JOHAB:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum MAC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum OEM:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum RUSSIAN:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum SHIFTJIS:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum SYMBOL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum THAI_:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum TURKISH:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum VIETNAMESE:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field private static _table:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private nativeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v1, "ANSI"

    const/4 v2, 0x0

    const-string v3, "Cp1252"

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v4, "DEFAULT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v3}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->DEFAULT:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v4, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/4 v6, 0x2

    const-string v7, ""

    const-string v8, "SYMBOL"

    invoke-direct {v4, v8, v6, v6, v7}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->SYMBOL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v7, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v8, 0x4d

    const-string v9, "MacRoman"

    const-string v10, "MAC"

    const/4 v11, 0x3

    invoke-direct {v7, v10, v11, v8, v9}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->MAC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v8, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v9, 0x80

    const-string v10, "Shift_JIS"

    const-string v12, "SHIFTJIS"

    const/4 v13, 0x4

    invoke-direct {v8, v12, v13, v9, v10}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->SHIFTJIS:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v9, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v10, 0x81

    const-string v12, "cp949"

    const-string v14, "HANGUL"

    const/4 v15, 0x5

    invoke-direct {v9, v14, v15, v10, v12}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->HANGUL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v10, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v12, 0x82

    const-string v14, "x-Johab"

    const-string v15, "JOHAB"

    const/4 v13, 0x6

    invoke-direct {v10, v15, v13, v12, v14}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->JOHAB:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v12, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/4 v14, 0x7

    const/16 v15, 0x86

    const-string v13, "GB2312"

    invoke-direct {v12, v13, v14, v15, v13}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->GB2312:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v13, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v15, 0x88

    const-string v14, "Big5"

    const-string v11, "CHINESEBIG5"

    const/16 v6, 0x8

    invoke-direct {v13, v11, v6, v15, v14}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->CHINESEBIG5:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v11, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v14, 0xa1

    const-string v15, "Cp1253"

    const-string v6, "GREEK"

    const/16 v5, 0x9

    invoke-direct {v11, v6, v5, v14, v15}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->GREEK:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v14, 0xa2

    const-string v15, "Cp1254"

    const-string v5, "TURKISH"

    const/16 v2, 0xa

    invoke-direct {v6, v5, v2, v14, v15}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->TURKISH:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v14, 0xa3

    const-string v15, "Cp1258"

    const-string v2, "VIETNAMESE"

    move-object/from16 v16, v6

    const/16 v6, 0xb

    invoke-direct {v5, v2, v6, v14, v15}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->VIETNAMESE:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v14, 0xb1

    const-string v15, "Cp1255"

    const-string v6, "HEBREW"

    move-object/from16 v17, v5

    const/16 v5, 0xc

    invoke-direct {v2, v6, v5, v14, v15}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->HEBREW:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v14, 0xb2

    const-string v15, "Cp1256"

    const-string v5, "ARABIC"

    move-object/from16 v18, v2

    const/16 v2, 0xd

    invoke-direct {v6, v5, v2, v14, v15}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ARABIC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v14, 0xba

    const-string v15, "Cp1257"

    const-string v2, "BALTIC"

    move-object/from16 v19, v6

    const/16 v6, 0xe

    invoke-direct {v5, v2, v6, v14, v15}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->BALTIC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v14, 0xcc

    const-string v15, "Cp1251"

    const-string v6, "RUSSIAN"

    move-object/from16 v20, v5

    const/16 v5, 0xf

    invoke-direct {v2, v6, v5, v14, v15}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->RUSSIAN:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v14, 0xde

    const-string v15, "x-windows-874"

    const-string v5, "THAI_"

    move-object/from16 v21, v2

    const/16 v2, 0x10

    invoke-direct {v6, v5, v2, v14, v15}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->THAI_:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v14, 0xee

    const-string v15, "Cp1250"

    const-string v2, "EASTEUROPE"

    move-object/from16 v22, v6

    const/16 v6, 0x11

    invoke-direct {v5, v2, v6, v14, v15}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->EASTEUROPE:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    new-instance v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v14, 0x12

    const/16 v15, 0xff

    const-string v6, "OEM"

    invoke-direct {v2, v6, v14, v15, v3}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->OEM:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v3, 0x13

    new-array v3, v3, [Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/4 v6, 0x0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v7, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v11, v3, v0

    const/16 v0, 0xa

    aput-object v16, v3, v0

    const/16 v0, 0xb

    aput-object v17, v3, v0

    const/16 v0, 0xc

    aput-object v18, v3, v0

    const/16 v0, 0xd

    aput-object v19, v3, v0

    const/16 v0, 0xe

    aput-object v20, v3, v0

    const/16 v0, 0xf

    aput-object v21, v3, v0

    const/16 v0, 0x10

    aput-object v22, v3, v0

    const/16 v0, 0x11

    aput-object v5, v3, v0

    aput-object v2, v3, v14

    sput-object v3, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->_table:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->values()[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->_table:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-virtual {v3}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->getNativeId()I

    move-result v5

    aput-object v3, v4, v5

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->nativeId:I

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    :try_start_0
    invoke-static {p4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->charset:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-class p1, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-static {p1}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object p1

    const-string p2, "Unsupported charset: "

    invoke-virtual {p2, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 2

    .line 1
    if-ltz p0, :cond_1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->_table:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 1

    .line 2
    const-class v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-virtual {v0}, [Lorg/apache/poi/common/usermodel/fonts/FontCharset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    return-object v0
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getNativeId()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->nativeId:I

    return v0
.end method

.class public final enum Lorg/apache/poi/ss/usermodel/FontCharset;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/FontCharset;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/apache/poi/util/Removal;
    version = "4.0"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum ANSI:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum ARABIC:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum BALTIC:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum CHINESEBIG5:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum DEFAULT:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum EASTEUROPE:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum GB2312:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum GREEK:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum HANGEUL:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum HEBREW:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum JOHAB:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum MAC:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum OEM:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum RUSSIAN:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum SHIFTJIS:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum SYMBOL:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum THAI:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum TURKISH:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum VIETNAMESE:Lorg/apache/poi/ss/usermodel/FontCharset;

.field private static _table:[Lorg/apache/poi/ss/usermodel/FontCharset;


# instance fields
.field private charset:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "ANSI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->ANSI:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v1, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v3, "DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/FontCharset;->DEFAULT:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v3, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v5, "SYMBOL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/FontCharset;->SYMBOL:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v5, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/4 v7, 0x3

    const/16 v8, 0x4d

    const-string v9, "MAC"

    invoke-direct {v5, v9, v7, v8}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/FontCharset;->MAC:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v8, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/4 v9, 0x4

    const/16 v10, 0x80

    const-string v11, "SHIFTJIS"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/ss/usermodel/FontCharset;->SHIFTJIS:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v10, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/4 v11, 0x5

    const/16 v12, 0x81

    const-string v13, "HANGEUL"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/ss/usermodel/FontCharset;->HANGEUL:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v12, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/4 v13, 0x6

    const/16 v14, 0x82

    const-string v15, "JOHAB"

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/poi/ss/usermodel/FontCharset;->JOHAB:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v14, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/4 v15, 0x7

    const/16 v13, 0x86

    const-string v11, "GB2312"

    invoke-direct {v14, v11, v15, v13}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/poi/ss/usermodel/FontCharset;->GB2312:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v11, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v13, 0x8

    const/16 v15, 0x88

    const-string v9, "CHINESEBIG5"

    invoke-direct {v11, v9, v13, v15}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/poi/ss/usermodel/FontCharset;->CHINESEBIG5:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v9, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v15, 0x9

    const/16 v13, 0xa1

    const-string v7, "GREEK"

    invoke-direct {v9, v7, v15, v13}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/poi/ss/usermodel/FontCharset;->GREEK:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v7, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v13, 0xa

    const/16 v15, 0xa2

    const-string v6, "TURKISH"

    invoke-direct {v7, v6, v13, v15}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/FontCharset;->TURKISH:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v6, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v15, 0xb

    const/16 v13, 0xa3

    const-string v4, "VIETNAMESE"

    invoke-direct {v6, v4, v15, v13}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/ss/usermodel/FontCharset;->VIETNAMESE:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v4, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v13, 0xc

    const/16 v15, 0xb1

    const-string v2, "HEBREW"

    invoke-direct {v4, v2, v13, v15}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontCharset;->HEBREW:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v2, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v15, 0xd

    const/16 v13, 0xb2

    move-object/from16 v16, v4

    const-string v4, "ARABIC"

    invoke-direct {v2, v4, v15, v13}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->ARABIC:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v4, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v13, 0xe

    const/16 v15, 0xba

    move-object/from16 v17, v2

    const-string v2, "BALTIC"

    invoke-direct {v4, v2, v13, v15}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontCharset;->BALTIC:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v2, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v15, 0xf

    const/16 v13, 0xcc

    move-object/from16 v18, v4

    const-string v4, "RUSSIAN"

    invoke-direct {v2, v4, v15, v13}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->RUSSIAN:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v4, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v13, 0x10

    const/16 v15, 0xde

    move-object/from16 v19, v2

    const-string v2, "THAI"

    invoke-direct {v4, v2, v13, v15}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontCharset;->THAI:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v2, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v15, 0x11

    const/16 v13, 0xee

    move-object/from16 v20, v4

    const-string v4, "EASTEUROPE"

    invoke-direct {v2, v4, v15, v13}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->EASTEUROPE:Lorg/apache/poi/ss/usermodel/FontCharset;

    new-instance v4, Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v13, 0x12

    const/16 v15, 0xff

    move-object/from16 v21, v2

    const-string v2, "OEM"

    invoke-direct {v4, v2, v13, v15}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/FontCharset;->OEM:Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v2, 0x13

    new-array v2, v2, [Lorg/apache/poi/ss/usermodel/FontCharset;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v14, v2, v0

    const/16 v0, 0x8

    aput-object v11, v2, v0

    const/16 v0, 0x9

    aput-object v9, v2, v0

    const/16 v0, 0xa

    aput-object v7, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    aput-object v4, v2, v13

    sput-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->$VALUES:[Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/apache/poi/ss/usermodel/FontCharset;

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->_table:[Lorg/apache/poi/ss/usermodel/FontCharset;

    invoke-static {}, Lorg/apache/poi/ss/usermodel/FontCharset;->values()[Lorg/apache/poi/ss/usermodel/FontCharset;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lorg/apache/poi/ss/usermodel/FontCharset;->_table:[Lorg/apache/poi/ss/usermodel/FontCharset;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/FontCharset;->getValue()I

    move-result v5

    aput-object v3, v4, v5

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/ss/usermodel/FontCharset;->charset:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/usermodel/FontCharset;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->_table:[Lorg/apache/poi/ss/usermodel/FontCharset;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FontCharset;
    .locals 1

    .line 2
    const-class v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/FontCharset;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/FontCharset;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->$VALUES:[Lorg/apache/poi/ss/usermodel/FontCharset;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/FontCharset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/FontCharset;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/usermodel/FontCharset;->charset:I

    return v0
.end method

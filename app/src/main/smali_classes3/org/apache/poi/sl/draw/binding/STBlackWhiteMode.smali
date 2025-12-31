.class public final enum Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlEnum;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "ST_BlackWhiteMode"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

.field public static final enum AUTO:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "auto"
    .end annotation
.end field

.field public static final enum BLACK:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "black"
    .end annotation
.end field

.field public static final enum BLACK_GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "blackGray"
    .end annotation
.end field

.field public static final enum BLACK_WHITE:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "blackWhite"
    .end annotation
.end field

.field public static final enum CLR:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "clr"
    .end annotation
.end field

.field public static final enum GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "gray"
    .end annotation
.end field

.field public static final enum GRAY_WHITE:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "grayWhite"
    .end annotation
.end field

.field public static final enum HIDDEN:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "hidden"
    .end annotation
.end field

.field public static final enum INV_GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "invGray"
    .end annotation
.end field

.field public static final enum LT_GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "ltGray"
    .end annotation
.end field

.field public static final enum WHITE:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "white"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const/4 v1, 0x0

    const-string v2, "clr"

    const-string v3, "CLR"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->CLR:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    new-instance v2, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const/4 v3, 0x1

    const-string v4, "auto"

    const-string v5, "AUTO"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->AUTO:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    new-instance v4, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const/4 v5, 0x2

    const-string v6, "gray"

    const-string v7, "GRAY"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    new-instance v6, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const/4 v7, 0x3

    const-string v8, "ltGray"

    const-string v9, "LT_GRAY"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->LT_GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    new-instance v8, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const/4 v9, 0x4

    const-string v10, "invGray"

    const-string v11, "INV_GRAY"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->INV_GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    new-instance v10, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const/4 v11, 0x5

    const-string v12, "grayWhite"

    const-string v13, "GRAY_WHITE"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->GRAY_WHITE:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    new-instance v12, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const/4 v13, 0x6

    const-string v14, "blackGray"

    const-string v15, "BLACK_GRAY"

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->BLACK_GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    new-instance v14, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const/4 v15, 0x7

    const-string v13, "blackWhite"

    const-string v11, "BLACK_WHITE"

    invoke-direct {v14, v11, v15, v13}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->BLACK_WHITE:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    new-instance v11, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const/16 v13, 0x8

    const-string v15, "black"

    const-string v9, "BLACK"

    invoke-direct {v11, v9, v13, v15}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->BLACK:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    new-instance v9, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const/16 v15, 0x9

    const-string v13, "white"

    const-string v7, "WHITE"

    invoke-direct {v9, v7, v15, v13}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->WHITE:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    new-instance v7, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const/16 v13, 0xa

    const-string v15, "hidden"

    const-string v5, "HIDDEN"

    invoke-direct {v7, v5, v13, v15}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->HIDDEN:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const/16 v5, 0xb

    new-array v5, v5, [Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    aput-object v0, v5, v1

    aput-object v2, v5, v3

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v14, v5, v0

    const/16 v0, 0x8

    aput-object v11, v5, v0

    const/16 v0, 0x9

    aput-object v9, v5, v0

    aput-object v7, v5, v13

    sput-object v5, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->values()[Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->value:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlEnum;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "ST_SchemeColorVal"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

.field public static final enum ACCENT_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "accent1"
    .end annotation
.end field

.field public static final enum ACCENT_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "accent2"
    .end annotation
.end field

.field public static final enum ACCENT_3:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "accent3"
    .end annotation
.end field

.field public static final enum ACCENT_4:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "accent4"
    .end annotation
.end field

.field public static final enum ACCENT_5:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "accent5"
    .end annotation
.end field

.field public static final enum ACCENT_6:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "accent6"
    .end annotation
.end field

.field public static final enum BG_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "bg1"
    .end annotation
.end field

.field public static final enum BG_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "bg2"
    .end annotation
.end field

.field public static final enum DK_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "dk1"
    .end annotation
.end field

.field public static final enum DK_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "dk2"
    .end annotation
.end field

.field public static final enum FOL_HLINK:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "folHlink"
    .end annotation
.end field

.field public static final enum HLINK:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "hlink"
    .end annotation
.end field

.field public static final enum LT_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "lt1"
    .end annotation
.end field

.field public static final enum LT_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "lt2"
    .end annotation
.end field

.field public static final enum PH_CLR:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "phClr"
    .end annotation
.end field

.field public static final enum TX_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "tx1"
    .end annotation
.end field

.field public static final enum TX_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "tx2"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/4 v1, 0x0

    const-string v2, "bg1"

    const-string v3, "BG_1"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->BG_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v2, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/4 v3, 0x1

    const-string v4, "tx1"

    const-string v5, "TX_1"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->TX_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v4, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/4 v5, 0x2

    const-string v6, "bg2"

    const-string v7, "BG_2"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->BG_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v6, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/4 v7, 0x3

    const-string v8, "tx2"

    const-string v9, "TX_2"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->TX_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v8, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/4 v9, 0x4

    const-string v10, "accent1"

    const-string v11, "ACCENT_1"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->ACCENT_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v10, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/4 v11, 0x5

    const-string v12, "accent2"

    const-string v13, "ACCENT_2"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->ACCENT_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v12, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/4 v13, 0x6

    const-string v14, "accent3"

    const-string v15, "ACCENT_3"

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->ACCENT_3:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v14, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/4 v15, 0x7

    const-string v13, "accent4"

    const-string v11, "ACCENT_4"

    invoke-direct {v14, v11, v15, v13}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->ACCENT_4:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v11, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/16 v13, 0x8

    const-string v15, "accent5"

    const-string v9, "ACCENT_5"

    invoke-direct {v11, v9, v13, v15}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->ACCENT_5:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v9, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/16 v15, 0x9

    const-string v13, "accent6"

    const-string v7, "ACCENT_6"

    invoke-direct {v9, v7, v15, v13}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->ACCENT_6:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v7, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/16 v13, 0xa

    const-string v15, "hlink"

    const-string v5, "HLINK"

    invoke-direct {v7, v5, v13, v15}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->HLINK:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v5, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/16 v15, 0xb

    const-string v13, "folHlink"

    const-string v3, "FOL_HLINK"

    invoke-direct {v5, v3, v15, v13}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->FOL_HLINK:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v3, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/16 v13, 0xc

    const-string v15, "phClr"

    const-string v1, "PH_CLR"

    invoke-direct {v3, v1, v13, v15}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->PH_CLR:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v1, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/16 v15, 0xd

    const-string v13, "dk1"

    move-object/from16 v16, v3

    const-string v3, "DK_1"

    invoke-direct {v1, v3, v15, v13}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->DK_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v3, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/16 v13, 0xe

    const-string v15, "lt1"

    move-object/from16 v17, v1

    const-string v1, "LT_1"

    invoke-direct {v3, v1, v13, v15}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->LT_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v1, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/16 v15, 0xf

    const-string v13, "dk2"

    move-object/from16 v18, v3

    const-string v3, "DK_2"

    invoke-direct {v1, v3, v15, v13}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->DK_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    new-instance v3, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/16 v13, 0x10

    const-string v15, "lt2"

    move-object/from16 v19, v1

    const-string v1, "LT_2"

    invoke-direct {v3, v1, v13, v15}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->LT_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/16 v1, 0x11

    new-array v1, v1, [Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/4 v15, 0x0

    aput-object v0, v1, v15

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v4, v1, v0

    const/4 v0, 0x3

    aput-object v6, v1, v0

    const/4 v0, 0x4

    aput-object v8, v1, v0

    const/4 v0, 0x5

    aput-object v10, v1, v0

    const/4 v0, 0x6

    aput-object v12, v1, v0

    const/4 v0, 0x7

    aput-object v14, v1, v0

    const/16 v0, 0x8

    aput-object v11, v1, v0

    const/16 v0, 0x9

    aput-object v9, v1, v0

    const/16 v0, 0xa

    aput-object v7, v1, v0

    const/16 v0, 0xb

    aput-object v5, v1, v0

    const/16 v0, 0xc

    aput-object v16, v1, v0

    const/16 v0, 0xd

    aput-object v17, v1, v0

    const/16 v0, 0xe

    aput-object v18, v1, v0

    const/16 v0, 0xf

    aput-object v19, v1, v0

    aput-object v3, v1, v13

    sput-object v1, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

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

    iput-object p3, p0, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->values()[Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->value:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->value:Ljava/lang/String;

    return-object v0
.end method

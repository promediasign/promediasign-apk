.class public final enum Lorg/apache/poi/sl/draw/binding/STRectAlignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/draw/binding/STRectAlignment;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlEnum;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "ST_RectAlignment"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/draw/binding/STRectAlignment;

.field public static final enum B:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "b"
    .end annotation
.end field

.field public static final enum BL:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "bl"
    .end annotation
.end field

.field public static final enum BR:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "br"
    .end annotation
.end field

.field public static final enum CTR:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "ctr"
    .end annotation
.end field

.field public static final enum L:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "l"
    .end annotation
.end field

.field public static final enum R:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "r"
    .end annotation
.end field

.field public static final enum T:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "t"
    .end annotation
.end field

.field public static final enum TL:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "tl"
    .end annotation
.end field

.field public static final enum TR:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "tr"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const/4 v1, 0x0

    const-string v2, "tl"

    const-string v3, "TL"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->TL:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    new-instance v2, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const/4 v3, 0x1

    const-string v4, "t"

    const-string v5, "T"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->T:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    new-instance v4, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const/4 v5, 0x2

    const-string v6, "tr"

    const-string v7, "TR"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->TR:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    new-instance v6, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const/4 v7, 0x3

    const-string v8, "l"

    const-string v9, "L"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->L:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    new-instance v8, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const/4 v9, 0x4

    const-string v10, "ctr"

    const-string v11, "CTR"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->CTR:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    new-instance v10, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const/4 v11, 0x5

    const-string v12, "r"

    const-string v13, "R"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->R:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    new-instance v12, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const/4 v13, 0x6

    const-string v14, "bl"

    const-string v15, "BL"

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->BL:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    new-instance v14, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const/4 v15, 0x7

    const-string v13, "b"

    const-string v11, "B"

    invoke-direct {v14, v11, v15, v13}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->B:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    new-instance v11, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const/16 v13, 0x8

    const-string v15, "br"

    const-string v9, "BR"

    invoke-direct {v11, v9, v13, v15}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->BR:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const/16 v9, 0x9

    new-array v9, v9, [Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    aput-object v0, v9, v1

    aput-object v2, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    const/4 v0, 0x4

    aput-object v8, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    const/4 v0, 0x7

    aput-object v14, v9, v0

    aput-object v11, v9, v13

    sput-object v9, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STRectAlignment;

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

    iput-object p3, p0, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->values()[Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->value:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/draw/binding/STRectAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->value:Ljava/lang/String;

    return-object v0
.end method

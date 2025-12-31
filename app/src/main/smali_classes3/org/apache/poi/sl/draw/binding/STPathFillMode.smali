.class public final enum Lorg/apache/poi/sl/draw/binding/STPathFillMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/draw/binding/STPathFillMode;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlEnum;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "ST_PathFillMode"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/draw/binding/STPathFillMode;

.field public static final enum DARKEN:Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "darken"
    .end annotation
.end field

.field public static final enum DARKEN_LESS:Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "darkenLess"
    .end annotation
.end field

.field public static final enum LIGHTEN:Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "lighten"
    .end annotation
.end field

.field public static final enum LIGHTEN_LESS:Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "lightenLess"
    .end annotation
.end field

.field public static final enum NONE:Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "none"
    .end annotation
.end field

.field public static final enum NORM:Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "norm"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    const/4 v1, 0x0

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->NONE:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    new-instance v2, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    const/4 v3, 0x1

    const-string v4, "norm"

    const-string v5, "NORM"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->NORM:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    new-instance v4, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    const/4 v5, 0x2

    const-string v6, "lighten"

    const-string v7, "LIGHTEN"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->LIGHTEN:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    new-instance v6, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    const/4 v7, 0x3

    const-string v8, "lightenLess"

    const-string v9, "LIGHTEN_LESS"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->LIGHTEN_LESS:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    new-instance v8, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    const/4 v9, 0x4

    const-string v10, "darken"

    const-string v11, "DARKEN"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->DARKEN:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    new-instance v10, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    const/4 v11, 0x5

    const-string v12, "darkenLess"

    const-string v13, "DARKEN_LESS"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->DARKEN_LESS:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    const/4 v12, 0x6

    new-array v12, v12, [Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    aput-object v0, v12, v1

    aput-object v2, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STPathFillMode;

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

    iput-object p3, p0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->values()[Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->value:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/draw/binding/STPathFillMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->value:Ljava/lang/String;

    return-object v0
.end method

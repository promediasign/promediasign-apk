.class public final enum Lorg/apache/poi/sl/usermodel/RectAlign;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/RectAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum BOTTOM:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum BOTTOM_LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum BOTTOM_RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum CENTER:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum TOP:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum TOP_LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum TOP_RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;


# instance fields
.field private final dir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v1, 0x0

    const-string v2, "tl"

    const-string v3, "TOP_LEFT"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/RectAlign;->TOP_LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v2, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v3, 0x1

    const-string v4, "t"

    const-string v5, "TOP"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/RectAlign;->TOP:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v4, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v5, 0x2

    const-string v6, "tr"

    const-string v7, "TOP_RIGHT"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/sl/usermodel/RectAlign;->TOP_RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v6, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v7, 0x3

    const-string v8, "l"

    const-string v9, "LEFT"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/RectAlign;->LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v8, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v9, 0x4

    const-string v10, "ctr"

    const-string v11, "CENTER"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/RectAlign;->CENTER:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v10, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v11, 0x5

    const-string v12, "r"

    const-string v13, "RIGHT"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/sl/usermodel/RectAlign;->RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v12, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v13, 0x6

    const-string v14, "bl"

    const-string v15, "BOTTOM_LEFT"

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/RectAlign;->BOTTOM_LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v14, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/4 v15, 0x7

    const-string v13, "b"

    const-string v11, "BOTTOM"

    invoke-direct {v14, v11, v15, v13}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lorg/apache/poi/sl/usermodel/RectAlign;->BOTTOM:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v11, Lorg/apache/poi/sl/usermodel/RectAlign;

    const/16 v13, 0x8

    const-string v15, "br"

    const-string v9, "BOTTOM_RIGHT"

    invoke-direct {v11, v9, v13, v15}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/sl/usermodel/RectAlign;->BOTTOM_RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

    const/16 v9, 0x9

    new-array v9, v9, [Lorg/apache/poi/sl/usermodel/RectAlign;

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

    sput-object v9, Lorg/apache/poi/sl/usermodel/RectAlign;->$VALUES:[Lorg/apache/poi/sl/usermodel/RectAlign;

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

    iput-object p3, p0, Lorg/apache/poi/sl/usermodel/RectAlign;->dir:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/RectAlign;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/RectAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/RectAlign;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/RectAlign;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/RectAlign;->$VALUES:[Lorg/apache/poi/sl/usermodel/RectAlign;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/RectAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/RectAlign;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/usermodel/RectAlign;->dir:Ljava/lang/String;

    return-object v0
.end method

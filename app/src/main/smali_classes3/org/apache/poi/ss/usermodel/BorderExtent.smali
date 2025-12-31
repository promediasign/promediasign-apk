.class public final enum Lorg/apache/poi/ss/usermodel/BorderExtent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/BorderExtent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/BorderExtent;

.field public static final enum ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

.field public static final enum BOTTOM:Lorg/apache/poi/ss/usermodel/BorderExtent;

.field public static final enum HORIZONTAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

.field public static final enum INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

.field public static final enum INSIDE_HORIZONTAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

.field public static final enum INSIDE_VERTICAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

.field public static final enum LEFT:Lorg/apache/poi/ss/usermodel/BorderExtent;

.field public static final enum NONE:Lorg/apache/poi/ss/usermodel/BorderExtent;

.field public static final enum OUTSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

.field public static final enum OUTSIDE_HORIZONTAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

.field public static final enum OUTSIDE_VERTICAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

.field public static final enum RIGHT:Lorg/apache/poi/ss/usermodel/BorderExtent;

.field public static final enum TOP:Lorg/apache/poi/ss/usermodel/BorderExtent;

.field public static final enum VERTICAL:Lorg/apache/poi/ss/usermodel/BorderExtent;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderExtent;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BorderExtent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->NONE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    new-instance v1, Lorg/apache/poi/ss/usermodel/BorderExtent;

    const-string v3, "ALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/BorderExtent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/BorderExtent;->ALL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    new-instance v3, Lorg/apache/poi/ss/usermodel/BorderExtent;

    const-string v5, "INSIDE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/ss/usermodel/BorderExtent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    new-instance v5, Lorg/apache/poi/ss/usermodel/BorderExtent;

    const-string v7, "OUTSIDE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/ss/usermodel/BorderExtent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/BorderExtent;->OUTSIDE:Lorg/apache/poi/ss/usermodel/BorderExtent;

    new-instance v7, Lorg/apache/poi/ss/usermodel/BorderExtent;

    const-string v9, "TOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/poi/ss/usermodel/BorderExtent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/BorderExtent;->TOP:Lorg/apache/poi/ss/usermodel/BorderExtent;

    new-instance v9, Lorg/apache/poi/ss/usermodel/BorderExtent;

    const-string v11, "BOTTOM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/poi/ss/usermodel/BorderExtent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/poi/ss/usermodel/BorderExtent;->BOTTOM:Lorg/apache/poi/ss/usermodel/BorderExtent;

    new-instance v11, Lorg/apache/poi/ss/usermodel/BorderExtent;

    const-string v13, "LEFT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/poi/ss/usermodel/BorderExtent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/poi/ss/usermodel/BorderExtent;->LEFT:Lorg/apache/poi/ss/usermodel/BorderExtent;

    new-instance v13, Lorg/apache/poi/ss/usermodel/BorderExtent;

    const-string v15, "RIGHT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/poi/ss/usermodel/BorderExtent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/poi/ss/usermodel/BorderExtent;->RIGHT:Lorg/apache/poi/ss/usermodel/BorderExtent;

    new-instance v15, Lorg/apache/poi/ss/usermodel/BorderExtent;

    const-string v14, "HORIZONTAL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/apache/poi/ss/usermodel/BorderExtent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/poi/ss/usermodel/BorderExtent;->HORIZONTAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    new-instance v14, Lorg/apache/poi/ss/usermodel/BorderExtent;

    const-string v12, "INSIDE_HORIZONTAL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/apache/poi/ss/usermodel/BorderExtent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE_HORIZONTAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    new-instance v12, Lorg/apache/poi/ss/usermodel/BorderExtent;

    const-string v10, "OUTSIDE_HORIZONTAL"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/apache/poi/ss/usermodel/BorderExtent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/poi/ss/usermodel/BorderExtent;->OUTSIDE_HORIZONTAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    new-instance v10, Lorg/apache/poi/ss/usermodel/BorderExtent;

    const-string v8, "VERTICAL"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/apache/poi/ss/usermodel/BorderExtent;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/poi/ss/usermodel/BorderExtent;->VERTICAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    new-instance v8, Lorg/apache/poi/ss/usermodel/BorderExtent;

    const-string v6, "INSIDE_VERTICAL"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/apache/poi/ss/usermodel/BorderExtent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/poi/ss/usermodel/BorderExtent;->INSIDE_VERTICAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    new-instance v6, Lorg/apache/poi/ss/usermodel/BorderExtent;

    const-string v4, "OUTSIDE_VERTICAL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/apache/poi/ss/usermodel/BorderExtent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/ss/usermodel/BorderExtent;->OUTSIDE_VERTICAL:Lorg/apache/poi/ss/usermodel/BorderExtent;

    const/16 v4, 0xe

    new-array v4, v4, [Lorg/apache/poi/ss/usermodel/BorderExtent;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lorg/apache/poi/ss/usermodel/BorderExtent;->$VALUES:[Lorg/apache/poi/ss/usermodel/BorderExtent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderExtent;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/BorderExtent;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/BorderExtent;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderExtent;->$VALUES:[Lorg/apache/poi/ss/usermodel/BorderExtent;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/BorderExtent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/BorderExtent;

    return-object v0
.end method

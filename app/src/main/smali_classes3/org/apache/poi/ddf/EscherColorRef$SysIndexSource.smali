.class public final enum Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ddf/EscherColorRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SysIndexSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum CURRENT_OR_LAST_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum FILL_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum FILL_OR_LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum LINE_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum LINE_OR_FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

.field public static final enum SHADOW_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v1, 0x0

    const/16 v2, 0xf0

    const-string v3, "FILL_COLOR"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    new-instance v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v3, 0x1

    const/16 v4, 0xf1

    const-string v5, "LINE_OR_FILL_COLOR"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_OR_FILL_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    new-instance v4, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v5, 0x2

    const/16 v6, 0xf2

    const-string v7, "LINE_COLOR"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    new-instance v6, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v7, 0x3

    const/16 v8, 0xf3

    const-string v9, "SHADOW_COLOR"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->SHADOW_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    new-instance v8, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v9, 0x4

    const/16 v10, 0xf4

    const-string v11, "CURRENT_OR_LAST_COLOR"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->CURRENT_OR_LAST_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    new-instance v10, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v11, 0x5

    const/16 v12, 0xf5

    const-string v13, "FILL_BACKGROUND_COLOR"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->FILL_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    new-instance v12, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v13, 0x6

    const/16 v14, 0xf6

    const-string v15, "LINE_BACKGROUND_COLOR"

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->LINE_BACKGROUND_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    new-instance v14, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/4 v15, 0x7

    const/16 v13, 0xf7

    const-string v11, "FILL_OR_LINE_COLOR"

    invoke-direct {v14, v11, v15, v13}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->FILL_OR_LINE_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    const/16 v11, 0x8

    new-array v11, v11, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    aput-object v0, v11, v1

    aput-object v2, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    aput-object v8, v11, v9

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    aput-object v14, v11, v15

    sput-object v11, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->$VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

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

    iput p3, p0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->value:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    .locals 1

    const-class v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->$VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    invoke-virtual {v0}, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    return-object v0
.end method

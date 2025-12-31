.class public final enum Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ddf/EscherColorRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SysIndexProcedure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum ADD_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum DARKEN_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum INVERT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum INVERT_HIGHBIT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum LIGHTEN_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum REVERSE_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum SUB_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

.field public static final enum THRESHOLD:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;


# instance fields
.field private mask:Lorg/apache/poi/util/BitField;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v1, "DARKEN_COLOR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->DARKEN_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    new-instance v1, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v4, "LIGHTEN_COLOR"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->LIGHTEN_COLOR:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    new-instance v4, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v6, "ADD_GRAY_LEVEL"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->ADD_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    new-instance v6, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v8, "SUB_GRAY_LEVEL"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->SUB_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    new-instance v8, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v10, "REVERSE_GRAY_LEVEL"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->REVERSE_GRAY_LEVEL:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    new-instance v10, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v12, "THRESHOLD"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->THRESHOLD:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    new-instance v12, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const-string v14, "INVERT_AFTER"

    const/16 v15, 0x20

    invoke-direct {v12, v14, v13, v15}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    new-instance v14, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const/4 v15, 0x7

    const/16 v13, 0x40

    const-string v11, "INVERT_HIGHBIT_AFTER"

    invoke-direct {v14, v11, v15, v13}, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->INVERT_HIGHBIT_AFTER:Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    const/16 v11, 0x8

    new-array v11, v11, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    aput-object v8, v11, v9

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    aput-object v14, v11, v15

    sput-object v11, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->$VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

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

    new-instance p1, Lorg/apache/poi/util/BitField;

    invoke-direct {p1, p3}, Lorg/apache/poi/util/BitField;-><init>(I)V

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->mask:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;)Lorg/apache/poi/util/BitField;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->mask:Lorg/apache/poi/util/BitField;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
    .locals 1

    const-class v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->$VALUES:[Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    invoke-virtual {v0}, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    return-object v0
.end method

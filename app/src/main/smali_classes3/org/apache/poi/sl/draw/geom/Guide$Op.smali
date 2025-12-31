.class final enum Lorg/apache/poi/sl/draw/geom/Guide$Op;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/geom/Guide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/draw/geom/Guide$Op;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum abs:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum adddiv:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum addsub:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum at2:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum cat2:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum cos:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum ifelse:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum max:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum min:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum mod:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum muldiv:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum pin:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum sat2:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum sin:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum sqrt:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum tan:Lorg/apache/poi/sl/draw/geom/Guide$Op;

.field public static final enum val:Lorg/apache/poi/sl/draw/geom/Guide$Op;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v1, "muldiv"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/sl/draw/geom/Guide$Op;->muldiv:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v1, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v3, "addsub"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/sl/draw/geom/Guide$Op;->addsub:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v3, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v5, "adddiv"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/sl/draw/geom/Guide$Op;->adddiv:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v5, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v7, "ifelse"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/sl/draw/geom/Guide$Op;->ifelse:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v7, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v9, "val"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/sl/draw/geom/Guide$Op;->val:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v9, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v11, "abs"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/poi/sl/draw/geom/Guide$Op;->abs:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v11, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v13, "sqrt"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/poi/sl/draw/geom/Guide$Op;->sqrt:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v13, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v15, "max"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/poi/sl/draw/geom/Guide$Op;->max:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v15, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v14, "min"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/poi/sl/draw/geom/Guide$Op;->min:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v14, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v12, "at2"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/poi/sl/draw/geom/Guide$Op;->at2:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v12, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v10, "sin"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/poi/sl/draw/geom/Guide$Op;->sin:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v10, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v8, "cos"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/poi/sl/draw/geom/Guide$Op;->cos:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v8, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v6, "tan"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/poi/sl/draw/geom/Guide$Op;->tan:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v6, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v4, "cat2"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/sl/draw/geom/Guide$Op;->cat2:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v4, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v2, "sat2"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/sl/draw/geom/Guide$Op;->sat2:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v2, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v6, "pin"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/sl/draw/geom/Guide$Op;->pin:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    new-instance v6, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const-string v4, "mod"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/apache/poi/sl/draw/geom/Guide$Op;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/sl/draw/geom/Guide$Op;->mod:Lorg/apache/poi/sl/draw/geom/Guide$Op;

    const/16 v4, 0x11

    new-array v4, v4, [Lorg/apache/poi/sl/draw/geom/Guide$Op;

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

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lorg/apache/poi/sl/draw/geom/Guide$Op;->$VALUES:[Lorg/apache/poi/sl/draw/geom/Guide$Op;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide$Op;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/geom/Guide$Op;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/draw/geom/Guide$Op;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/draw/geom/Guide$Op;->$VALUES:[Lorg/apache/poi/sl/draw/geom/Guide$Op;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/draw/geom/Guide$Op;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/draw/geom/Guide$Op;

    return-object v0
.end method

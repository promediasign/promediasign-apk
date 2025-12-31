.class public final enum Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/StrokeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineDash"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum DASH:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum DASH_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum LG_DASH:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum LG_DASH_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum LG_DASH_DOT_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum SOLID:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum SYS_DASH:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum SYS_DASH_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum SYS_DASH_DOT_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

.field public static final enum SYS_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;


# instance fields
.field public final nativeId:I

.field public final ooxmlId:I

.field public final pattern:[I


# direct methods
.method static constructor <clinit>()V
    .locals 31

    new-instance v6, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "SOLID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SOLID:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/4 v1, 0x1

    filled-new-array {v1, v1}, [I

    move-result-object v12

    const-string v8, "DOT"

    const/4 v9, 0x1

    const/4 v10, 0x6

    const/4 v11, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/4 v3, 0x3

    const/4 v4, 0x4

    filled-new-array {v3, v4}, [I

    move-result-object v18

    const-string v14, "DASH"

    const/4 v15, 0x2

    const/16 v16, 0x7

    const/16 v17, 0x3

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->DASH:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v5, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/4 v11, 0x5

    filled-new-array {v4, v3, v1, v3}, [I

    move-result-object v12

    const-string v8, "DASH_DOT"

    const/4 v9, 0x3

    const/16 v10, 0x9

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->DASH_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v7, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/16 v8, 0x8

    filled-new-array {v8, v3}, [I

    move-result-object v18

    const-string v14, "LG_DASH"

    const/4 v15, 0x4

    const/16 v16, 0x8

    const/16 v17, 0x4

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->LG_DASH:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v9, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/16 v23, 0x6

    filled-new-array {v8, v3, v1, v3}, [I

    move-result-object v24

    const-string v20, "LG_DASH_DOT"

    const/16 v21, 0x5

    const/16 v22, 0xa

    move-object/from16 v19, v9

    invoke-direct/range {v19 .. v24}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v9, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->LG_DASH_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v16, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/4 v15, 0x6

    new-array v14, v15, [I

    fill-array-data v14, :array_0

    const-string v11, "LG_DASH_DOT_DOT"

    const/4 v12, 0x6

    const/16 v13, 0xb

    const/16 v17, 0x7

    move-object/from16 v10, v16

    move-object/from16 v18, v14

    move/from16 v14, v17

    const/4 v8, 0x6

    move-object/from16 v15, v18

    invoke-direct/range {v10 .. v15}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v16, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->LG_DASH_DOT_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v10, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/4 v11, 0x2

    filled-new-array {v11, v11}, [I

    move-result-object v24

    const-string v20, "SYS_DASH"

    const/16 v21, 0x7

    const/16 v22, 0x2

    const/16 v23, 0x8

    move-object/from16 v19, v10

    invoke-direct/range {v19 .. v24}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v10, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SYS_DASH:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v12, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/16 v29, 0x9

    filled-new-array {v1, v1}, [I

    move-result-object v30

    const-string v26, "SYS_DOT"

    const/16 v27, 0x8

    const/16 v28, 0x3

    move-object/from16 v25, v12

    invoke-direct/range {v25 .. v30}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SYS_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v13, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/16 v22, 0xa

    filled-new-array {v11, v11, v1, v1}, [I

    move-result-object v23

    const-string v19, "SYS_DASH_DOT"

    const/16 v20, 0x9

    const/16 v21, 0x4

    move-object/from16 v18, v13

    invoke-direct/range {v18 .. v23}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v13, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SYS_DASH_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-instance v14, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    new-array v15, v8, [I

    fill-array-data v15, :array_1

    const-string v25, "SYS_DASH_DOT_DOT"

    const/16 v26, 0xa

    const/16 v27, 0x5

    const/16 v28, 0xb

    move-object/from16 v24, v14

    move-object/from16 v29, v15

    invoke-direct/range {v24 .. v29}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;-><init>(Ljava/lang/String;III[I)V

    sput-object v14, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SYS_DASH_DOT_DOT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/16 v15, 0xb

    new-array v15, v15, [Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    const/16 v18, 0x0

    aput-object v6, v15, v18

    aput-object v0, v15, v1

    aput-object v2, v15, v11

    aput-object v5, v15, v3

    aput-object v7, v15, v4

    const/4 v0, 0x5

    aput-object v9, v15, v0

    aput-object v16, v15, v8

    const/4 v0, 0x7

    aput-object v10, v15, v0

    const/16 v0, 0x8

    aput-object v12, v15, v0

    const/16 v0, 0x9

    aput-object v13, v15, v0

    const/16 v0, 0xa

    aput-object v14, v15, v0

    sput-object v15, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->$VALUES:[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x3
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method private varargs constructor <init>(Ljava/lang/String;III[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->nativeId:I

    iput p4, p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->ooxmlId:I

    if-eqz p5, :cond_0

    array-length p1, p5

    if-nez p1, :cond_1

    :cond_0
    const/4 p5, 0x0

    :cond_1
    iput-object p5, p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->pattern:[I

    return-void
.end method

.method public static fromNativeId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->values()[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->values()[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->ooxmlId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->$VALUES:[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    return-object v0
.end method

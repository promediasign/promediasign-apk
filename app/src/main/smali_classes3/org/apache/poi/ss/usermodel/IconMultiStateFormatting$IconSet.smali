.class public final enum Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field protected static final DEFAULT_ICONSET:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GREY_3_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GREY_4_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GREY_5_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYRB_4_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_3_ARROW:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_3_FLAGS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_3_SHAPES:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_3_SYMBOLS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_3_SYMBOLS_CIRCLE:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_3_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_3_TRAFFIC_LIGHTS_BOX:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_4_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYYYR_5_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum QUARTERS_5:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum RATINGS_4:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum RATINGS_5:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum RB_4_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;


# instance fields
.field public final id:I

.field public final name:Ljava/lang/String;

.field public final num:I


# direct methods
.method static constructor <clinit>()V
    .locals 33

    new-instance v6, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const/4 v4, 0x3

    const-string v5, "3Arrows"

    const-string v1, "GYR_3_ARROW"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_ARROW:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const/4 v11, 0x3

    const-string v12, "3ArrowsGray"

    const-string v8, "GREY_3_ARROWS"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GREY_3_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const/16 v17, 0x3

    const-string v18, "3Flags"

    const-string v14, "GYR_3_FLAGS"

    const/4 v15, 0x2

    const/16 v16, 0x2

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_FLAGS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v2, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const-string v12, "3TrafficLights1"

    const-string v8, "GYR_3_TRAFFIC_LIGHTS"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v3, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const-string v18, "3TrafficLights2"

    const-string v14, "GYR_3_TRAFFIC_LIGHTS_BOX"

    const/4 v15, 0x4

    const/16 v16, 0x4

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_TRAFFIC_LIGHTS_BOX:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v4, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const-string v12, "3Signs"

    const-string v8, "GYR_3_SHAPES"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_SHAPES:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v5, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const-string v18, "3Symbols"

    const-string v14, "GYR_3_SYMBOLS_CIRCLE"

    const/4 v15, 0x6

    const/16 v16, 0x6

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_SYMBOLS_CIRCLE:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v13, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const-string v12, "3Symbols2"

    const-string v8, "GYR_3_SYMBOLS"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v13, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_SYMBOLS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v7, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const/16 v18, 0x4

    const-string v19, "4Arrows"

    const-string v15, "GYR_4_ARROWS"

    const/16 v16, 0x8

    const/16 v17, 0x8

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_4_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v8, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const/16 v24, 0x4

    const-string v25, "4ArrowsGray"

    const-string v21, "GREY_4_ARROWS"

    const/16 v22, 0x9

    const/16 v23, 0x9

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GREY_4_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v9, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const-string v19, "4RedToBlack"

    const-string v15, "RB_4_TRAFFIC_LIGHTS"

    const/16 v16, 0xa

    const/16 v17, 0xa

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->RB_4_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v10, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const-string v25, "4Rating"

    const-string v21, "RATINGS_4"

    const/16 v22, 0xb

    const/16 v23, 0xb

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->RATINGS_4:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v11, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const-string v19, "4TrafficLights"

    const-string v15, "GYRB_4_TRAFFIC_LIGHTS"

    const/16 v16, 0xc

    const/16 v17, 0xc

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYRB_4_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v12, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const/16 v24, 0x5

    const-string v25, "5Arrows"

    const-string v21, "GYYYR_5_ARROWS"

    const/16 v22, 0xd

    const/16 v23, 0xd

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYYYR_5_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v20, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const/16 v18, 0x5

    const-string v19, "5ArrowsGray"

    const-string v15, "GREY_5_ARROWS"

    const/16 v16, 0xe

    const/16 v17, 0xe

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v20, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GREY_5_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v14, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const/16 v25, 0x5

    const-string v26, "5Rating"

    const-string v22, "RATINGS_5"

    const/16 v23, 0xf

    const/16 v24, 0xf

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v14, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->RATINGS_5:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v15, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const/16 v31, 0x5

    const-string v32, "5Quarters"

    const-string v28, "QUARTERS_5"

    const/16 v29, 0x10

    const/16 v30, 0x10

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v15, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->QUARTERS_5:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object/from16 v16, v15

    const/16 v15, 0x11

    new-array v15, v15, [Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const/16 v17, 0x0

    aput-object v6, v15, v17

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v16, v15, v0

    sput-object v15, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->$VALUES:[Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    sput-object v2, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->DEFAULT_ICONSET:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->id:I

    iput p4, p0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    iput-object p5, p0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->name:Ljava/lang/String;

    return-void
.end method

.method public static byId(I)Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    .locals 1

    invoke-static {}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->values()[Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static byName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    .locals 5

    invoke-static {}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->values()[Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->$VALUES:[Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

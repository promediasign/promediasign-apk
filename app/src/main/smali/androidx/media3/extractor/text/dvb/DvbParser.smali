.class public final Landroidx/media3/extractor/text/dvb/DvbParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;,
        Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;,
        Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;,
        Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;,
        Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;,
        Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;,
        Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;,
        Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    }
.end annotation


# static fields
.field private static final defaultMap2To4:[B

.field private static final defaultMap2To8:[B

.field private static final defaultMap4To8:[B


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final canvas:Landroid/graphics/Canvas;

.field private final defaultClutDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

.field private final defaultDisplayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

.field private final defaultPaint:Landroid/graphics/Paint;

.field private final fillRegionPaint:Landroid/graphics/Paint;

.field private final subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To4:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To8:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap4To8:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    new-instance v2, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    const/4 v8, 0x0

    const/16 v9, 0x23f

    const/16 v4, 0x2cf

    const/16 v5, 0x23f

    const/4 v6, 0x0

    const/16 v7, 0x2cf

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    iput-object v2, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultDisplayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    new-instance v2, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v3

    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v4

    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    iput-object v2, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultClutDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    new-instance v1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    invoke-direct {v1, p1, v0}, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;-><init>(II)V

    iput-object v1, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    return-void
.end method

.method private static buildClutMapTable(IILandroidx/media3/common/util/ParsableBitArray;)[B
    .locals 3

    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static generateDefault2BitClutEntries()[I
    .locals 4

    const/high16 v0, -0x1000000

    const v1, -0x808081

    const/4 v2, 0x0

    const/4 v3, -0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method private static generateDefault4BitClutEntries()[I
    .locals 9

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_7

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    const/16 v4, 0xff

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    const/16 v6, 0xff

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_2

    const/16 v7, 0xff

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    invoke-static {v5, v4, v6, v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_7

    :cond_3
    and-int/lit8 v4, v3, 0x1

    const/16 v6, 0x7f

    if-eqz v4, :cond_4

    const/16 v4, 0x7f

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_5

    const/16 v7, 0x7f

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    invoke-static {v5, v4, v7, v6}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method private static generateDefault8BitClutEntries()[I
    .locals 11

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_20

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    const/16 v4, 0xff

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    const/16 v6, 0xff

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    const/16 v7, 0x3f

    invoke-static {v7, v4, v6, v5}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_3
    and-int/lit16 v6, v3, 0x88

    const/16 v7, 0xaa

    const/16 v8, 0x55

    if-eqz v6, :cond_19

    const/16 v9, 0x7f

    if-eq v6, v4, :cond_12

    const/16 v4, 0x80

    const/16 v7, 0x2b

    if-eq v6, v4, :cond_b

    const/16 v4, 0x88

    if-eq v6, v4, :cond_4

    goto/16 :goto_1c

    :cond_4
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_5

    const/16 v4, 0x2b

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_6

    const/16 v6, 0x55

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_7

    const/16 v6, 0x2b

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_8

    const/16 v9, 0x55

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    :goto_7
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_9

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_8
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_a

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    :goto_9
    add-int/2addr v7, v8

    invoke-static {v5, v4, v6, v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_b
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_c

    const/16 v4, 0x2b

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    :goto_a
    add-int/2addr v4, v9

    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_d

    const/16 v6, 0x55

    goto :goto_b

    :cond_d
    const/4 v6, 0x0

    :goto_b
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_e

    const/16 v6, 0x2b

    goto :goto_c

    :cond_e
    const/4 v6, 0x0

    :goto_c
    add-int/2addr v6, v9

    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_f

    const/16 v10, 0x55

    goto :goto_d

    :cond_f
    const/4 v10, 0x0

    :goto_d
    add-int/2addr v6, v10

    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_10

    goto :goto_e

    :cond_10
    const/4 v7, 0x0

    :goto_e
    add-int/2addr v7, v9

    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_11

    goto :goto_f

    :cond_11
    const/4 v8, 0x0

    :goto_f
    add-int/2addr v7, v8

    invoke-static {v5, v4, v6, v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_12
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_13

    const/16 v4, 0x55

    goto :goto_10

    :cond_13
    const/4 v4, 0x0

    :goto_10
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_14

    const/16 v5, 0xaa

    goto :goto_11

    :cond_14
    const/4 v5, 0x0

    :goto_11
    add-int/2addr v4, v5

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_15

    const/16 v5, 0x55

    goto :goto_12

    :cond_15
    const/4 v5, 0x0

    :goto_12
    and-int/lit8 v6, v3, 0x20

    if-eqz v6, :cond_16

    const/16 v6, 0xaa

    goto :goto_13

    :cond_16
    const/4 v6, 0x0

    :goto_13
    add-int/2addr v5, v6

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_17

    goto :goto_14

    :cond_17
    const/4 v8, 0x0

    :goto_14
    and-int/lit8 v6, v3, 0x40

    if-eqz v6, :cond_18

    goto :goto_15

    :cond_18
    const/4 v7, 0x0

    :goto_15
    add-int/2addr v8, v7

    invoke-static {v9, v4, v5, v8}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_1c

    :cond_19
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1a

    const/16 v4, 0x55

    goto :goto_16

    :cond_1a
    const/4 v4, 0x0

    :goto_16
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_1b

    const/16 v6, 0xaa

    goto :goto_17

    :cond_1b
    const/4 v6, 0x0

    :goto_17
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1c

    const/16 v6, 0x55

    goto :goto_18

    :cond_1c
    const/4 v6, 0x0

    :goto_18
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_1d

    const/16 v9, 0xaa

    goto :goto_19

    :cond_1d
    const/4 v9, 0x0

    :goto_19
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_1e

    goto :goto_1a

    :cond_1e
    const/4 v8, 0x0

    :goto_1a
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_1f

    goto :goto_1b

    :cond_1f
    const/4 v7, 0x0

    :goto_1b
    add-int/2addr v8, v7

    invoke-static {v5, v4, v6, v8}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_20
    return-object v1
.end method

.method private static getColor(IIII)I
    .locals 0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method private static paint2BitPixelCodeString(Landroidx/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 13

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v9, 0x0

    move/from16 v10, p3

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v11, v2

    :goto_1
    const/4 v12, 0x1

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v6, 0x3

    if-eqz v4, :cond_1

    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v6

    :goto_2
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    move v11, v2

    move v12, v4

    move v4, v3

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_2

    move v11, v2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_6

    if-eq v4, v5, :cond_5

    if-eq v4, v3, :cond_4

    if-eq v4, v6, :cond_3

    move v11, v2

    const/4 v4, 0x0

    :goto_3
    const/4 v12, 0x0

    goto :goto_4

    :cond_3
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    goto :goto_2

    :cond_4
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    goto :goto_2

    :cond_5
    move v11, v2

    const/4 v4, 0x0

    const/4 v12, 0x2

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    const/4 v11, 0x1

    goto :goto_3

    :goto_4
    if-eqz v12, :cond_8

    if-eqz v8, :cond_8

    if-eqz p2, :cond_7

    aget-byte v4, p2, v4

    :cond_7
    aget v2, p1, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v10

    int-to-float v4, v1

    add-int v2, v10, v12

    int-to-float v6, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v7, v2

    move-object/from16 v2, p6

    move v5, v6

    move v6, v7

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    add-int/2addr v10, v12

    if-eqz v11, :cond_9

    return v10

    :cond_9
    move v2, v11

    goto :goto_0
.end method

.method private static paint4BitPixelCodeString(Landroidx/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 13

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v9, 0x0

    move/from16 v10, p3

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v11, v2

    :goto_1
    const/4 v12, 0x1

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v6, 0x3

    if-nez v4, :cond_2

    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v3, 0x2

    move v11, v2

    move v12, v3

    const/4 v4, 0x0

    goto :goto_4

    :cond_1
    const/4 v4, 0x0

    const/4 v11, 0x1

    :goto_2
    const/4 v12, 0x0

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v7, 0x2

    if-nez v4, :cond_3

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v3

    :goto_3
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    move v11, v2

    move v12, v4

    move v4, v3

    goto :goto_4

    :cond_3
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_7

    if-eq v4, v5, :cond_6

    if-eq v4, v7, :cond_5

    if-eq v4, v6, :cond_4

    move v11, v2

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x9

    goto :goto_3

    :cond_6
    move v11, v2

    const/4 v4, 0x0

    const/4 v12, 0x2

    goto :goto_4

    :cond_7
    move v11, v2

    const/4 v4, 0x0

    goto :goto_1

    :goto_4
    if-eqz v12, :cond_9

    if-eqz v8, :cond_9

    if-eqz p2, :cond_8

    aget-byte v4, p2, v4

    :cond_8
    aget v2, p1, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v10

    int-to-float v4, v1

    add-int v2, v10, v12

    int-to-float v6, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v7, v2

    move-object/from16 v2, p6

    move v5, v6

    move v6, v7

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    add-int/2addr v10, v12

    if-eqz v11, :cond_a

    return v10

    :cond_a
    move v2, v11

    goto :goto_0
.end method

.method private static paint8BitPixelCodeString(Landroidx/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 13

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v9, 0x0

    move/from16 v10, p3

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v11, v2

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v6, 0x7

    if-nez v4, :cond_2

    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-eqz v3, :cond_1

    move v11, v2

    move v12, v3

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    move v11, v2

    move v12, v4

    move v4, v3

    :goto_1
    if-eqz v12, :cond_4

    if-eqz v8, :cond_4

    if-eqz p2, :cond_3

    aget-byte v4, p2, v4

    :cond_3
    aget v2, p1, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v10

    int-to-float v4, v1

    add-int v2, v10, v12

    int-to-float v6, v2

    add-int/lit8 v2, v1, 0x1

    int-to-float v7, v2

    move-object/from16 v2, p6

    move v5, v6

    move v6, v7

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    add-int/2addr v10, v12

    if-eqz v11, :cond_5

    return v10

    :cond_5
    move v2, v11

    goto :goto_0
.end method

.method private static paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 14

    move/from16 v0, p2

    new-instance v8, Landroidx/media3/common/util/ParsableBitArray;

    move-object v1, p0

    invoke-direct {v8, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    const/4 v9, 0x0

    move/from16 v4, p3

    move/from16 v10, p4

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    :goto_0
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    packed-switch v2, :pswitch_data_0

    const/4 v3, 0x4

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x10

    invoke-static {v2, v1, v8}, Landroidx/media3/extractor/text/dvb/DvbParser;->buildClutMapTable(IILandroidx/media3/common/util/ParsableBitArray;)[B

    move-result-object v12

    goto :goto_0

    :pswitch_1
    invoke-static {v3, v1, v8}, Landroidx/media3/extractor/text/dvb/DvbParser;->buildClutMapTable(IILandroidx/media3/common/util/ParsableBitArray;)[B

    move-result-object v11

    goto :goto_0

    :pswitch_2
    invoke-static {v3, v3, v8}, Landroidx/media3/extractor/text/dvb/DvbParser;->buildClutMapTable(IILandroidx/media3/common/util/ParsableBitArray;)[B

    move-result-object v13

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x0

    move-object v1, v8

    move-object v2, p1

    move v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->paint8BitPixelCodeString(Landroidx/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    goto :goto_0

    :pswitch_4
    if-ne v0, v3, :cond_1

    if-nez v12, :cond_0

    sget-object v1, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap4To8:[B

    goto :goto_1

    :cond_0
    move-object v1, v12

    :goto_1
    move-object v3, v1

    goto :goto_2

    :cond_1
    move-object v3, v9

    :goto_2
    move-object v1, v8

    move-object v2, p1

    move v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->paint4BitPixelCodeString(Landroidx/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    :goto_3
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    goto :goto_0

    :pswitch_5
    if-ne v0, v3, :cond_3

    if-nez v11, :cond_2

    sget-object v1, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To8:[B

    goto :goto_4

    :cond_2
    move-object v1, v11

    :goto_4
    move-object v3, v1

    goto :goto_5

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    if-nez v13, :cond_4

    sget-object v1, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To4:[B

    goto :goto_4

    :cond_4
    move-object v1, v13

    goto :goto_4

    :cond_5
    move-object v3, v9

    :goto_5
    move-object v1, v8

    move-object v2, p1

    move v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->paint2BitPixelCodeString(Landroidx/media3/common/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v4

    goto :goto_3

    :cond_6
    add-int/lit8 v10, v10, 0x2

    move/from16 v4, p3

    goto :goto_0

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static paintPixelDataSubBlocks(Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object p1, p1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p1, p1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Landroidx/media3/extractor/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    add-int/lit8 v4, p4, 0x1

    invoke-static/range {v0 .. v6}, Landroidx/media3/extractor/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void
.end method

.method private parse(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/text/CuesWithTiming;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    invoke-static {v1, v2}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseSubtitlingSegment(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    if-nez v2, :cond_1

    new-instance v1, Landroidx/media3/extractor/text/CuesWithTiming;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    return-object v1

    :cond_1
    iget-object v1, v1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultDisplayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    :goto_1
    iget-object v3, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget v4, v1, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v4, v3, :cond_3

    iget v3, v1, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_4

    :cond_3
    iget v3, v1, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v3, v3, 0x1

    iget v4, v1, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->regions:Landroid/util/SparseArray;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    iget-object v5, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v8, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v8, v8, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;

    iget v8, v5, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    iget v9, v1, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    add-int/2addr v8, v9

    iget v5, v5, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    iget v9, v1, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    add-int/2addr v5, v9

    iget v9, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v9, v8

    iget v10, v1, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v10, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v10, v5

    iget v11, v1, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v11, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v11, v8, v5, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v9, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v9, v9, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v10, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    if-nez v9, :cond_5

    iget-object v9, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v9, v9, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v10, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    if-nez v9, :cond_5

    iget-object v9, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultClutDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    :cond_5
    iget-object v15, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v14, v10, :cond_9

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;

    iget-object v12, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v12, v12, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    if-nez v12, :cond_6

    iget-object v12, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v12, v12, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    goto :goto_4

    :cond_6
    move-object v10, v12

    :goto_4
    if-eqz v10, :cond_8

    iget-boolean v12, v10, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    :goto_5
    move-object/from16 v16, v12

    goto :goto_6

    :cond_7
    iget-object v12, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    goto :goto_5

    :goto_6
    iget v12, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->depth:I

    iget v13, v11, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    add-int/2addr v13, v8

    iget v11, v11, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    add-int v17, v5, v11

    iget-object v11, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v11

    move-object v11, v9

    move/from16 v19, v14

    move/from16 v14, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    invoke-static/range {v10 .. v16}, Landroidx/media3/extractor/text/dvb/DvbParser;->paintPixelDataSubBlocks(Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_7

    :cond_8
    move/from16 v19, v14

    move-object/from16 v17, v15

    :goto_7
    add-int/lit8 v14, v19, 0x1

    move-object/from16 v15, v17

    goto :goto_3

    :cond_9
    iget-boolean v10, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    if-eqz v10, :cond_c

    iget v10, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_a

    iget-object v9, v9, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    iget v10, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    aget v9, v9, v10

    goto :goto_8

    :cond_a
    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    iget-object v9, v9, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    iget v10, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    aget v9, v9, v10

    goto :goto_8

    :cond_b
    iget-object v9, v9, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    iget v10, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    aget v9, v9, v10

    :goto_8
    iget-object v10, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v11, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    int-to-float v12, v8

    int-to-float v13, v5

    iget v9, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v9, v8

    int-to-float v14, v9

    iget v9, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    add-int/2addr v9, v5

    int-to-float v15, v9

    iget-object v9, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_c
    new-instance v9, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v9}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    iget-object v10, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    iget v11, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    iget v12, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    invoke-static {v10, v8, v5, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v9

    int-to-float v8, v8

    iget v10, v1, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    invoke-virtual {v9, v8}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v8

    int-to-float v5, v5

    iget v9, v1, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v9, v9

    div-float/2addr v5, v9

    invoke-virtual {v8, v5, v3}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v5

    iget v8, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    int-to-float v8, v8

    iget v9, v1, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v5, v8}, Landroidx/media3/common/text/Cue$Builder;->setSize(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v5

    iget v7, v7, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    int-to-float v7, v7

    iget v8, v1, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroidx/media3/common/text/Cue$Builder;->setBitmapHeight(F)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v3, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_d
    new-instance v1, Landroidx/media3/extractor/text/CuesWithTiming;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    return-object v1
.end method

.method private static parseClutDefinition(Landroidx/media3/common/util/ParsableBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    .locals 24

    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v3, 0x2

    add-int/lit8 v4, p1, -0x2

    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v5

    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v6

    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v7

    :goto_0
    if-lez v4, :cond_4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_0

    move-object v10, v5

    goto :goto_1

    :cond_0
    and-int/lit8 v10, v9, 0x40

    if-eqz v10, :cond_1

    move-object v10, v6

    goto :goto_1

    :cond_1
    move-object v10, v7

    :goto_1
    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    add-int/lit8 v4, v4, -0x6

    goto :goto_2

    :cond_2
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    shl-int/2addr v11, v3

    const/4 v12, 0x4

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    shl-int/2addr v13, v12

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    shl-int/lit8 v12, v14, 0x4

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    shl-int/lit8 v9, v14, 0x6

    add-int/lit8 v4, v4, -0x4

    move/from16 v23, v13

    move v13, v9

    move v9, v11

    move/from16 v11, v23

    :goto_2
    const/16 v15, 0xff

    if-nez v9, :cond_3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xff

    :cond_3
    and-int/2addr v13, v15

    rsub-int v13, v13, 0xff

    int-to-byte v13, v13

    move/from16 p1, v4

    int-to-double v3, v9

    add-int/lit8 v11, v11, -0x80

    move/from16 v16, v2

    int-to-double v1, v11

    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v17, v17, v1

    move-object v11, v10

    add-double v9, v17, v3

    double-to-int v9, v9

    add-int/lit8 v12, v12, -0x80

    int-to-double v14, v12

    const-wide v19, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v19, v19, v14

    sub-double v19, v3, v19

    const-wide v21, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v1, v1, v21

    sub-double v1, v19, v1

    double-to-int v1, v1

    const-wide v19, 0x3ffc5a1cac083127L    # 1.772

    mul-double v14, v14, v19

    add-double/2addr v14, v3

    double-to-int v2, v14

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-static {v9, v3, v4}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v9

    invoke-static {v1, v3, v4}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v1

    invoke-static {v2, v3, v4}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v2

    invoke-static {v13, v9, v1, v2}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v1

    aput v1, v11, v8

    move/from16 v4, p1

    move/from16 v2, v16

    const/16 v1, 0x8

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_4
    move/from16 v16, v2

    new-instance v0, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move/from16 v1, v16

    invoke-direct {v0, v1, v5, v6, v7}, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    return-object v0
.end method

.method private static parseDisplayDefinition(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;
    .locals 9

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    move v8, p0

    move v6, v2

    move v7, v5

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move v6, v3

    move v8, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    new-instance p0, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    return-object p0
.end method

.method private static parseObjectData(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    .locals 6

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    sget-object v5, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    if-ne v2, v4, :cond_0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v4, 0x0

    if-lez v2, :cond_1

    new-array v5, v2, [B

    invoke-virtual {p0, v5, v4, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBytes([BII)V

    :cond_1
    if-lez v0, :cond_2

    new-array v2, v0, [B

    invoke-virtual {p0, v2, v4, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBytes([BII)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v5

    :goto_1
    new-instance p0, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    invoke-direct {p0, v1, v3, v5, v2}, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;-><init>(IZ[B[B)V

    return-object p0
.end method

.method private static parsePageComposition(Landroidx/media3/common/util/ParsableBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    .locals 9

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    sub-int/2addr p1, v3

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    if-lez p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 p1, p1, -0x6

    new-instance v8, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;

    invoke-direct {v8, v7, v6}, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;-><init>(II)V

    invoke-virtual {v3, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    invoke-direct {p0, v1, v2, v4, v3}, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;-><init>(IIILandroid/util/SparseArray;)V

    return-object p0
.end method

.method private static parseRegionComposition(Landroidx/media3/common/util/ParsableBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;
    .locals 25

    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v15, p1, -0xa

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    if-lez v15, :cond_2

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v19

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v20

    move/from16 v24, v14

    const/4 v14, 0x4

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v21

    add-int/lit8 v5, v15, -0x6

    const/4 v14, 0x1

    if-eq v6, v14, :cond_1

    const/4 v14, 0x2

    if-ne v6, v14, :cond_0

    :goto_1
    const/16 v5, 0x8

    goto :goto_2

    :cond_0
    const/4 v15, 0x0

    move v15, v5

    const/16 v22, 0x0

    const/16 v23, 0x0

    goto :goto_3

    :cond_1
    const/4 v14, 0x2

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v16

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v17

    add-int/lit8 v15, v15, -0x8

    move/from16 v22, v16

    move/from16 v23, v17

    :goto_3
    new-instance v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;

    move-object/from16 v17, v5

    move/from16 v18, v6

    invoke-direct/range {v17 .. v23}, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;-><init>(IIIIII)V

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v14, v24

    const/4 v2, 0x4

    const/4 v5, 0x2

    const/16 v6, 0x10

    goto :goto_0

    :cond_2
    move/from16 v24, v14

    new-instance v0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;

    move-object v2, v0

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move/from16 v12, v24

    move-object v13, v1

    invoke-direct/range {v2 .. v13}, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v0
.end method

.method private static parseSubtitlingSegment(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;)V
    .locals 6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/lit8 v4, v1, 0x8

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v5

    if-le v4, v5, :cond_0

    const-string p1, "DvbParser"

    const-string v0, "Data field length exceeds limit"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    :cond_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_5

    invoke-static {p0}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseDisplayDefinition(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    move-result-object v0

    iput-object v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    goto/16 :goto_3

    :pswitch_1
    iget v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_1

    invoke-static {p0}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseObjectData(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    :goto_0
    iget v1, v0, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->id:I

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    iget v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v0, :cond_5

    invoke-static {p0}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseObjectData(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_2

    invoke-static {p0, v1}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseClutDefinition(Landroidx/media3/common/util/ParsableBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    :goto_2
    iget v1, v0, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->id:I

    goto :goto_1

    :cond_2
    iget v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v2, v0, :cond_5

    invoke-static {p0, v1}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseClutDefinition(Landroidx/media3/common/util/ParsableBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    goto :goto_2

    :pswitch_3
    iget-object v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    iget v4, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v4, :cond_5

    if-eqz v0, :cond_5

    invoke-static {p0, v1}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseRegionComposition(Landroidx/media3/common/util/ParsableBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;

    move-result-object v1

    iget v0, v0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    if-nez v0, :cond_3

    iget-object v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v2, v1, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->mergeFrom(Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;)V

    :cond_3
    iget-object p1, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v0, v1, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :pswitch_4
    iget v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v2, v0, :cond_5

    iget-object v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    invoke-static {p0, v1}, Landroidx/media3/extractor/text/dvb/DvbParser;->parsePageComposition(Landroidx/media3/common/util/ParsableBitArray;I)Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    move-result-object v1

    iget v2, v1, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    if-eqz v2, :cond_4

    iput-object v1, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    iget-object v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    iget v0, v0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->version:I

    iget v2, v1, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->version:I

    if-eq v0, v2, :cond_5

    iput-object v1, p1, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance p4, Landroidx/media3/common/util/ParsableBitArray;

    add-int/2addr p3, p2

    invoke-direct {p4, p1, p3}, Landroidx/media3/common/util/ParsableBitArray;-><init>([BI)V

    invoke-virtual {p4, p2}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    invoke-direct {p0, p4}, Landroidx/media3/extractor/text/dvb/DvbParser;->parse(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/text/CuesWithTiming;

    move-result-object p1

    invoke-interface {p5, p1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic parse([BLandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 0

    .line 3
    invoke-static {p0, p1, p2, p3}, LS/a;->a(Landroidx/media3/extractor/text/SubtitleParser;[BLandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method public final synthetic parseToLegacySubtitle([BII)Landroidx/media3/extractor/text/Subtitle;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, LS/a;->b(Landroidx/media3/extractor/text/SubtitleParser;[BII)Landroidx/media3/extractor/text/Subtitle;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    invoke-virtual {v0}, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->reset()V

    return-void
.end method

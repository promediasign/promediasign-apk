.class public Ljava/awt/Color;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BLACK:Ljava/awt/Color;

.field public static final BLUE:Ljava/awt/Color;

.field public static final CYAN:Ljava/awt/Color;

.field public static final DARK_GRAY:Ljava/awt/Color;

.field public static final GRAY:Ljava/awt/Color;

.field public static final GREEN:Ljava/awt/Color;

.field public static final LIGHT_GRAY:Ljava/awt/Color;

.field public static final MAGENTA:Ljava/awt/Color;

.field public static final ORANGE:Ljava/awt/Color;

.field public static final PINK:Ljava/awt/Color;

.field public static final RED:Ljava/awt/Color;

.field public static final WHITE:Ljava/awt/Color;

.field public static final YELLOW:Ljava/awt/Color;

.field public static final black:Ljava/awt/Color;

.field public static final blue:Ljava/awt/Color;

.field public static final cyan:Ljava/awt/Color;

.field public static final darkGray:Ljava/awt/Color;

.field public static final gray:Ljava/awt/Color;

.field public static final green:Ljava/awt/Color;

.field public static final lightGray:Ljava/awt/Color;

.field public static final magenta:Ljava/awt/Color;

.field public static final orange:Ljava/awt/Color;

.field public static final pink:Ljava/awt/Color;

.field public static final red:Ljava/awt/Color;

.field private static final serialVersionUID:J = 0x1a51783108f3375L

.field public static final white:Ljava/awt/Color;

.field public static final yellow:Ljava/awt/Color;


# instance fields
.field private falpha:F

.field private frgbvalue:[F

.field private fvalue:[F

.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/awt/Color;

    const/16 v1, 0xff

    invoke-direct {v0, v1, v1, v1}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->white:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    const/16 v2, 0xc0

    invoke-direct {v0, v2, v2, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->lightGray:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->LIGHT_GRAY:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    const/16 v2, 0x80

    invoke-direct {v0, v2, v2, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->gray:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->GRAY:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    const/16 v2, 0x40

    invoke-direct {v0, v2, v2, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->darkGray:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->DARK_GRAY:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->black:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v1, v2, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->RED:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    const/16 v3, 0xaf

    invoke-direct {v0, v1, v3, v3}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->pink:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->PINK:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v3, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->orange:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->ORANGE:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v1, v1, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->YELLOW:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v2, v1, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->green:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->GREEN:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v1, v2, v1}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->magenta:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->MAGENTA:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v2, v1, v1}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->cyan:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->CYAN:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v2, v2, v1}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->blue:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->BLUE:Ljava/awt/Color;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 7

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    mul-float v2, p2, v0

    float-to-double v5, v2

    add-double/2addr v5, v3

    double-to-int v2, v5

    mul-float v0, v0, p3

    float-to-double v5, v0

    add-double/2addr v5, v3

    double-to-int v0, v5

    invoke-direct {p0, v1, v2, v0}, Ljava/awt/Color;-><init>(III)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p3, v0}, Ljava/awt/Color;->testColorValueRange(FFFF)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Ljava/awt/Color;->frgbvalue:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    iput v0, p0, Ljava/awt/Color;->falpha:F

    iput-object v1, p0, Ljava/awt/Color;->fvalue:[F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 8

    .line 2
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    mul-float v2, p2, v0

    float-to-double v5, v2

    add-double/2addr v5, v3

    double-to-int v2, v5

    mul-float v5, p3, v0

    float-to-double v5, v5

    add-double/2addr v5, v3

    double-to-int v5, v5

    mul-float v0, v0, p4

    float-to-double v6, v0

    add-double/2addr v6, v3

    double-to-int v0, v6

    invoke-direct {p0, v1, v2, v5, v0}, Ljava/awt/Color;-><init>(IIII)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Ljava/awt/Color;->frgbvalue:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    iput p4, p0, Ljava/awt/Color;->falpha:F

    iput-object v0, p0, Ljava/awt/Color;->fvalue:[F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/awt/Color;->frgbvalue:[F

    iput-object v0, p0, Ljava/awt/Color;->fvalue:[F

    const/4 v0, 0x0

    iput v0, p0, Ljava/awt/Color;->falpha:F

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Ljava/awt/Color;->value:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 4
    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/Color;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/awt/Color;->frgbvalue:[F

    iput-object v0, p0, Ljava/awt/Color;->fvalue:[F

    const/4 v0, 0x0

    iput v0, p0, Ljava/awt/Color;->falpha:F

    and-int/lit16 v0, p4, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Ljava/awt/Color;->value:I

    invoke-static {p1, p2, p3, p4}, Ljava/awt/Color;->testColorValueRange(IIII)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/awt/Color;->frgbvalue:[F

    iput-object v0, p0, Ljava/awt/Color;->fvalue:[F

    const/4 v0, 0x0

    iput v0, p0, Ljava/awt/Color;->falpha:F

    if-eqz p2, :cond_0

    :goto_0
    iput p1, p0, Ljava/awt/Color;->value:I

    goto :goto_1

    :cond_0
    const/high16 p2, -0x1000000

    or-int/2addr p1, p2

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/awt/Color;
    .locals 3

    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v0, Ljava/awt/Color;

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p0, p0, 0xff

    invoke-direct {v0, v1, v2, p0}, Ljava/awt/Color;-><init>(III)V

    return-object v0
.end method

.method private static testColorValueRange(FFFF)V
    .locals 8

    float-to-double v0, p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 p3, 0x1

    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-ltz v6, :cond_1

    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, " Alpha"

    const/4 v0, 0x1

    :goto_1
    float-to-double v6, p0

    cmpg-double p0, v6, v4

    if-ltz p0, :cond_2

    cmpl-double p0, v6, v2

    if-lez p0, :cond_3

    :cond_2
    const-string p0, " Red"

    .line 1
    invoke-static {v1, p0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :cond_3
    float-to-double p0, p1

    cmpg-double v6, p0, v4

    if-ltz v6, :cond_4

    cmpl-double v6, p0, v2

    if-lez v6, :cond_5

    .line 2
    :cond_4
    const-string p0, " Green"

    .line 3
    invoke-static {v1, p0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :cond_5
    float-to-double p0, p2

    cmpg-double p2, p0, v4

    if-ltz p2, :cond_6

    cmpl-double p2, p0, v2

    if-lez p2, :cond_7

    .line 4
    :cond_6
    const-string p0, " Blue"

    .line 5
    invoke-static {v1, p0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :cond_7
    if-eq v0, p3, :cond_8

    return-void

    .line 6
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Color parameter outside of expected range:"

    .line 7
    invoke-static {p1, v1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static testColorValueRange(IIII)V
    .locals 3

    const/16 v0, 0xff

    const/4 v1, 0x1

    if-ltz p3, :cond_1

    if-le p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const-string v2, ""

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, " Alpha"

    const/4 p3, 0x1

    :goto_1
    if-ltz p0, :cond_2

    if-le p0, v0, :cond_3

    :cond_2
    const-string p0, " Red"

    .line 18
    invoke-static {v2, p0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 p3, 0x1

    :cond_3
    if-ltz p1, :cond_4

    if-le p1, v0, :cond_5

    .line 19
    :cond_4
    const-string p0, " Green"

    .line 20
    invoke-static {v2, p0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 p3, 0x1

    :cond_5
    if-ltz p2, :cond_6

    if-le p2, v0, :cond_7

    .line 21
    :cond_6
    const-string p0, " Blue"

    .line 22
    invoke-static {v2, p0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 p3, 0x1

    :cond_7
    if-eq p3, v1, :cond_8

    return-void

    .line 23
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Color parameter outside of expected range:"

    .line 24
    invoke-static {p1, v2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/awt/Color;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result p1

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAlpha()I
    .locals 1

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getBlue()I
    .locals 1

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getGreen()I
    .locals 1

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getRGB()I
    .locals 1

    iget v0, p0, Ljava/awt/Color;->value:I

    return v0
.end method

.method public getRGBColorComponents([F)[F
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [F

    :cond_0
    iget-object v0, p0, Ljava/awt/Color;->frgbvalue:[F

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v0, v4

    aput v0, p1, v3

    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    aput v0, p1, v2

    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    aput v0, p1, v1

    goto :goto_0

    :cond_1
    aget v4, v0, v3

    aput v4, p1, v3

    aget v3, v0, v2

    aput v3, p1, v2

    aget v0, v0, v1

    aput v0, p1, v1

    :goto_0
    return-object p1
.end method

.method public getRGBComponents([F)[F
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [F

    :cond_0
    iget-object v0, p0, Ljava/awt/Color;->frgbvalue:[F

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v0, v5

    aput v0, p1, v4

    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    aput v0, p1, v3

    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    aput v0, p1, v2

    invoke-virtual {p0}, Ljava/awt/Color;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    aput v0, p1, v1

    goto :goto_0

    :cond_1
    aget v5, v0, v4

    aput v5, p1, v4

    aget v4, v0, v3

    aput v4, p1, v3

    aget v0, v0, v2

    aput v0, p1, v2

    iget v0, p0, Ljava/awt/Color;->falpha:F

    aput v0, p1, v1

    :goto_0
    return-object p1
.end method

.method public getRed()I
    .locals 1

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljava/awt/Color;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkHDMIManager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HDMIFormatSupport"
.end annotation


# static fields
.field static sDeepColorList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/realtek/hardware/ColorSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private colorModeMatrix:[I

.field private deepColorDepthMatrix:[I

.field mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

.field mReserved:I

.field mRgb444:I

.field mSupport3D:I

.field mVIC:I

.field mYuv420:I

.field mYuv422:I

.field mYuv444:I

.field msupportFS:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->sDeepColorList:Ljava/util/Vector;

    new-instance v1, Lcom/realtek/hardware/ColorSet;

    const/4 v2, 0x3

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->sDeepColorList:Ljava/util/Vector;

    new-instance v1, Lcom/realtek/hardware/ColorSet;

    const/16 v4, 0xa

    invoke-direct {v1, v2, v4}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->sDeepColorList:Ljava/util/Vector;

    new-instance v1, Lcom/realtek/hardware/ColorSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->sDeepColorList:Ljava/util/Vector;

    new-instance v1, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v1, v2, v4}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->sDeepColorList:Ljava/util/Vector;

    new-instance v1, Lcom/realtek/hardware/ColorSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->sDeepColorList:Ljava/util/Vector;

    new-instance v1, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v1, v2, v4}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->sDeepColorList:Ljava/util/Vector;

    new-instance v1, Lcom/realtek/hardware/ColorSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->sDeepColorList:Ljava/util/Vector;

    new-instance v1, Lcom/realtek/hardware/ColorSet;

    invoke-direct {v1, v2, v4}, Lcom/realtek/hardware/ColorSet;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->colorModeMatrix:[I

    const/16 v0, 0xa

    const/16 v1, 0xc

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->deepColorDepthMatrix:[I

    iput p1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mVIC:I

    iput p2, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mRgb444:I

    iput p3, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mYuv422:I

    iput p4, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mYuv444:I

    iput p5, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mYuv420:I

    iput p6, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mSupport3D:I

    iput p7, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->msupportFS:I

    iput p8, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mReserved:I

    invoke-direct {p0, p1}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->resolveTVSystemInfo(I)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;)V
    .locals 0

    invoke-direct {p0}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->dump()V

    return-void
.end method

.method private dump()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VIC:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mVIC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    iget v1, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    iget v1, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") FPS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    iget v1, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " RGB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mRgb444:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 422:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mYuv422:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 444:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mYuv444:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 420:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mYuv420:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 3D:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mSupport3D:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->msupportFS:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtkHDMIManager2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getBitMask(I)I
    .locals 2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    const/16 p1, 0xf

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x4

    return p1

    :cond_2
    const/4 p1, 0x2

    return p1
.end method

.method private resolveTVSystemInfo(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/realtek/hardware/RtkHDMIManager2;->access$800()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/realtek/hardware/RtkHDMIManager2;->access$800()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    iget v2, v1, Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;->mVIC:I

    if-ne v2, p1, :cond_0

    iput-object v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mInfo:Lcom/realtek/hardware/RtkHDMIManager2$TVSystemInfo;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public isColorModeDepthSupported(II)Z
    .locals 3

    invoke-direct {p0, p2}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->getBitMask(I)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mYuv420:I

    and-int/2addr p1, p2

    if-lez p1, :cond_4

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mYuv444:I

    and-int/2addr p1, p2

    if-lez p1, :cond_4

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mYuv422:I

    and-int/2addr p1, p2

    if-lez p1, :cond_4

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mRgb444:I

    and-int/2addr p1, p2

    if-lez p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public isSupport3D()Z
    .locals 2

    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->mSupport3D:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportDeepColor()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->colorModeMatrix:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget v2, v2, v1

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->deepColorDepthMatrix:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget v4, v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/realtek/hardware/RtkHDMIManager2$HDMIFormatSupport;->isColorModeDepthSupported(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

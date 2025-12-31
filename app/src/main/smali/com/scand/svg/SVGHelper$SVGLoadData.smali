.class public Lcom/scand/svg/SVGHelper$SVGLoadData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scand/svg/SVGHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SVGLoadData"
.end annotation


# instance fields
.field private baseHref:Ljava/lang/String;

.field private mBaseHeight:Ljava/lang/Integer;

.field private mBaseWidth:Ljava/lang/Integer;

.field private mCheckSVGSize:Z

.field private mContext:Landroid/content/Context;

.field private mCropImage:Z

.field private mFile:Ljava/io/File;

.field private mKeepAspectRatio:Z

.field private mRequestHeight:Ljava/lang/Integer;

.field private mRequestWidth:Ljava/lang/Integer;

.field private mResId:Ljava/lang/Integer;

.field private mSVGData:Ljava/lang/String;

.field private mSVGParser:Lcom/scand/svg/parser/SVGParser;

.field private mScale:F

.field private mURL:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mRequestWidth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mRequestHeight:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mBaseWidth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mBaseHeight:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mCheckSVGSize:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mScale:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mKeepAspectRatio:Z

    iput-boolean v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mCropImage:Z

    new-instance v0, Lcom/scand/svg/parser/SVGParser;

    invoke-direct {v0}, Lcom/scand/svg/parser/SVGParser;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mSVGParser:Lcom/scand/svg/parser/SVGParser;

    return-void
.end method

.method private preparseSVG(Ljava/io/InputStream;)Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mSVGParser:Lcom/scand/svg/parser/SVGParser;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/scand/svg/parser/SVGParser;->preparse(Ljava/io/InputStream;II)V

    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mSVGParser:Lcom/scand/svg/parser/SVGParser;

    iget v1, v0, Lcom/scand/svg/parser/SVGParser;->width:F

    iget v0, v0, Lcom/scand/svg/parser/SVGParser;->height:F

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method private startStream()Ljava/io/InputStream;
    .locals 4

    iget-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mURL:Ljava/net/URL;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mFile:Ljava/io/File;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mResId:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mResId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->baseHref:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mSVGData:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mSVGData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG source unknown. Use open method "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkSVGSize()Lcom/scand/svg/SVGHelper$SVGLoadData;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mCheckSVGSize:Z

    return-object p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 12

    invoke-direct {p0}, Lcom/scand/svg/SVGHelper$SVGLoadData;->startStream()Ljava/io/InputStream;

    move-result-object v0

    iget-boolean v1, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mCheckSVGSize:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/scand/svg/SVGHelper$SVGLoadData;->preparseSVG(Ljava/io/InputStream;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-direct {p0}, Lcom/scand/svg/SVGHelper$SVGLoadData;->startStream()Ljava/io/InputStream;

    move-result-object v0

    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mBaseWidth:Ljava/lang/Integer;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mBaseHeight:Ljava/lang/Integer;

    :cond_0
    move-object v3, v0

    iget-object v2, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mSVGParser:Lcom/scand/svg/parser/SVGParser;

    iget-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mBaseWidth:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mBaseHeight:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v5, v0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mRequestWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    iget-object v0, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mRequestHeight:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    iget v8, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mScale:F

    iget-boolean v9, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mKeepAspectRatio:Z

    iget-boolean v10, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mCropImage:Z

    iget-object v11, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->baseHref:Ljava/lang/String;

    invoke-virtual/range {v2 .. v11}, Lcom/scand/svg/parser/SVGParser;->parse(Ljava/io/InputStream;IIIIFZZLjava/lang/String;)Lcom/scand/svg/SVG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scand/svg/SVG;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/io/File;)Lcom/scand/svg/SVGHelper$SVGLoadData;
    .locals 3

    iput-object p1, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mFile:Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/.."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->baseHref:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestBounds(II)Lcom/scand/svg/SVGHelper$SVGLoadData;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mRequestWidth:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/scand/svg/SVGHelper$SVGLoadData;->mRequestHeight:Ljava/lang/Integer;

    return-object p0
.end method

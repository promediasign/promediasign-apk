.class public Lcom/scand/svg/parser/SVGHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;
    }
.end annotation


# instance fields
.field private bCropImage:Z

.field private bKeepAspectRatio:Z

.field private baseHeight:I

.field private baseWidth:I

.field bounds:Landroid/graphics/RectF;

.field private boundsMode:Z

.field canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

.field private cascadeEngine:Lcom/scand/svg/css/CascadeEngine;

.field clipMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/scand/svg/parser/support/ClipPath;",
            ">;"
        }
    .end annotation
.end field

.field private cssParser:Lcom/scand/svg/css/CSSParser;

.field private ctxs:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/scand/svg/parser/PaintData;",
            ">;"
        }
    .end annotation
.end field

.field private curFilter:Lcom/scand/svg/parser/Filter;

.field private currentText:Lcom/scand/svg/parser/Text;

.field private defs:Z

.field defx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private feStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/scand/svg/parser/FilterOp;",
            ">;"
        }
    .end annotation
.end field

.field private filters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/scand/svg/parser/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/scand/svg/parser/support/GraphicsSVG;

.field private gpushed:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field gradient:Lcom/scand/svg/parser/Gradient;

.field gradientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/scand/svg/parser/Gradient;",
            ">;"
        }
    .end annotation
.end field

.field gradientRefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/scand/svg/parser/Gradient;",
            ">;"
        }
    .end annotation
.end field

.field public height:F

.field private hh:F

.field private hidden:Z

.field private hiddenLevel:I

.field idleMode:Z

.field private left:I

.field limits:Landroid/graphics/RectF;

.field private metaData:Z

.field private movedOriginX:I

.field private movedOriginY:I

.field private parser:Lcom/scand/svg/parser/SVGParser;

.field private patternDefinition:Z

.field picture:Landroid/graphics/Bitmap;

.field rect:Landroid/graphics/RectF;

.field recursion:Z

.field private reqHeight:I

.field private reqWidth:I

.field private runStyle:Z

.field sbx:Ljava/lang/StringBuffer;

.field private scaleX:F

.field private scaleY:F

.field private specialGraphicsMode:Z

.field private style:Ljava/lang/String;

.field private stylesheets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/scand/svg/css/CSSStylesheet;",
            ">;"
        }
    .end annotation
.end field

.field svgNesting:I

.field private top:I

.field public width:F

.field private ww:F


# direct methods
.method public constructor <init>(IIIIFZZLcom/scand/svg/parser/SVGParser;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->bounds:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    iput-boolean v1, p0, Lcom/scand/svg/parser/SVGHandler;->hidden:Z

    iput v1, p0, Lcom/scand/svg/parser/SVGHandler;->hiddenLevel:I

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->ctxs:Ljava/util/Stack;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    iput-boolean v1, p0, Lcom/scand/svg/parser/SVGHandler;->runStyle:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->style:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->clipMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->gradient:Lcom/scand/svg/parser/Gradient;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->stylesheets:Ljava/util/Vector;

    new-instance v2, Lcom/scand/svg/css/CascadeEngine;

    invoke-direct {v2}, Lcom/scand/svg/css/CascadeEngine;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->cascadeEngine:Lcom/scand/svg/css/CascadeEngine;

    new-instance v2, Lcom/scand/svg/css/CSSParser;

    invoke-direct {v2}, Lcom/scand/svg/css/CSSParser;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->cssParser:Lcom/scand/svg/css/CSSParser;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/scand/svg/parser/SVGHandler;->bKeepAspectRatio:Z

    iput-boolean v1, p0, Lcom/scand/svg/parser/SVGHandler;->bCropImage:Z

    iput v1, p0, Lcom/scand/svg/parser/SVGHandler;->movedOriginX:I

    iput v1, p0, Lcom/scand/svg/parser/SVGHandler;->movedOriginY:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->defx:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->sbx:Ljava/lang/StringBuffer;

    iput v1, p0, Lcom/scand/svg/parser/SVGHandler;->svgNesting:I

    iput-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->curFilter:Lcom/scand/svg/parser/Filter;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->feStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->filters:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->limits:Landroid/graphics/RectF;

    iput p1, p0, Lcom/scand/svg/parser/SVGHandler;->baseWidth:I

    iput p2, p0, Lcom/scand/svg/parser/SVGHandler;->baseHeight:I

    iput p3, p0, Lcom/scand/svg/parser/SVGHandler;->reqWidth:I

    iput p4, p0, Lcom/scand/svg/parser/SVGHandler;->reqHeight:I

    iput-object p8, p0, Lcom/scand/svg/parser/SVGHandler;->parser:Lcom/scand/svg/parser/SVGParser;

    iput p5, p0, Lcom/scand/svg/parser/SVGHandler;->scaleX:F

    iput p5, p0, Lcom/scand/svg/parser/SVGHandler;->scaleY:F

    iput-boolean p6, p0, Lcom/scand/svg/parser/SVGHandler;->bKeepAspectRatio:Z

    iput-boolean p7, p0, Lcom/scand/svg/parser/SVGHandler;->bCropImage:Z

    return-void
.end method

.method public constructor <init>(IIIIIIFZZLandroid/graphics/Canvas;Lcom/scand/svg/parser/SVGParser;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->bounds:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    iput-boolean v1, p0, Lcom/scand/svg/parser/SVGHandler;->hidden:Z

    iput v1, p0, Lcom/scand/svg/parser/SVGHandler;->hiddenLevel:I

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->ctxs:Ljava/util/Stack;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    iput-boolean v1, p0, Lcom/scand/svg/parser/SVGHandler;->runStyle:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->style:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->clipMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->gradient:Lcom/scand/svg/parser/Gradient;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->stylesheets:Ljava/util/Vector;

    new-instance v2, Lcom/scand/svg/css/CascadeEngine;

    invoke-direct {v2}, Lcom/scand/svg/css/CascadeEngine;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->cascadeEngine:Lcom/scand/svg/css/CascadeEngine;

    new-instance v2, Lcom/scand/svg/css/CSSParser;

    invoke-direct {v2}, Lcom/scand/svg/css/CSSParser;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->cssParser:Lcom/scand/svg/css/CSSParser;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/scand/svg/parser/SVGHandler;->bKeepAspectRatio:Z

    iput-boolean v1, p0, Lcom/scand/svg/parser/SVGHandler;->bCropImage:Z

    iput v1, p0, Lcom/scand/svg/parser/SVGHandler;->movedOriginX:I

    iput v1, p0, Lcom/scand/svg/parser/SVGHandler;->movedOriginY:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->defx:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->sbx:Ljava/lang/StringBuffer;

    iput v1, p0, Lcom/scand/svg/parser/SVGHandler;->svgNesting:I

    iput-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->curFilter:Lcom/scand/svg/parser/Filter;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->feStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->filters:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->limits:Landroid/graphics/RectF;

    iput p1, p0, Lcom/scand/svg/parser/SVGHandler;->left:I

    iput p2, p0, Lcom/scand/svg/parser/SVGHandler;->top:I

    iput p3, p0, Lcom/scand/svg/parser/SVGHandler;->baseWidth:I

    iput p4, p0, Lcom/scand/svg/parser/SVGHandler;->baseHeight:I

    iput p5, p0, Lcom/scand/svg/parser/SVGHandler;->reqWidth:I

    iput p6, p0, Lcom/scand/svg/parser/SVGHandler;->reqHeight:I

    new-instance p1, Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-direct {p1, p10}, Lcom/scand/svg/parser/support/GraphicsSVG;-><init>(Landroid/graphics/Canvas;)V

    iput-object p1, p0, Lcom/scand/svg/parser/SVGHandler;->g:Lcom/scand/svg/parser/support/GraphicsSVG;

    iput p7, p0, Lcom/scand/svg/parser/SVGHandler;->scaleX:F

    iput p7, p0, Lcom/scand/svg/parser/SVGHandler;->scaleY:F

    iput-object p11, p0, Lcom/scand/svg/parser/SVGHandler;->parser:Lcom/scand/svg/parser/SVGParser;

    iput-boolean p9, p0, Lcom/scand/svg/parser/SVGHandler;->bCropImage:Z

    iput-boolean p8, p0, Lcom/scand/svg/parser/SVGHandler;->bKeepAspectRatio:Z

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/scand/svg/parser/SVGHandler;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$100(Lcom/scand/svg/parser/SVGHandler;)Lcom/scand/svg/css/CascadeEngine;
    .locals 0

    iget-object p0, p0, Lcom/scand/svg/parser/SVGHandler;->cascadeEngine:Lcom/scand/svg/css/CascadeEngine;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/scand/svg/parser/SVGHandler;)Lcom/scand/svg/css/CSSParser;
    .locals 0

    iget-object p0, p0, Lcom/scand/svg/parser/SVGHandler;->cssParser:Lcom/scand/svg/css/CSSParser;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/scand/svg/parser/SVGHandler;Lcom/scand/svg/parser/Properties;Z)Lcom/scand/svg/parser/support/RectangleSVG;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scand/svg/parser/SVGHandler;->parseRect(Lcom/scand/svg/parser/Properties;Z)Lcom/scand/svg/parser/support/RectangleSVG;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/scand/svg/parser/SVGHandler;Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/EllipseSVG;
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/parser/SVGHandler;->parseCircle(Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/EllipseSVG;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/scand/svg/parser/SVGHandler;Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/EllipseSVG;
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/parser/SVGHandler;->parseEllipse(Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/EllipseSVG;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/scand/svg/parser/SVGHandler;Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/LineSVG;
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/parser/SVGHandler;->parseLine(Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/LineSVG;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/scand/svg/parser/SVGHandler;Lcom/scand/svg/parser/Properties;Z)Lcom/scand/svg/parser/support/PathExt;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scand/svg/parser/SVGHandler;->parsePolygon(Lcom/scand/svg/parser/Properties;Z)Lcom/scand/svg/parser/support/PathExt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lcom/scand/svg/parser/SVGHandler;Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/PathExt;
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/parser/SVGHandler;->parsePath(Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/PathExt;

    move-result-object p0

    return-object p0
.end method

.method private applyFilterChain(Lcom/scand/svg/parser/support/GraphicsSVG;Lcom/scand/svg/parser/PaintData;ZLandroid/graphics/RectF;)V
    .locals 0

    iget-object p1, p2, Lcom/scand/svg/parser/PaintData;->filter:Lcom/scand/svg/parser/Filter;

    iget-object p1, p1, Lcom/scand/svg/parser/Filter;->op:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/scand/svg/parser/FilterOp;

    invoke-static {p2}, Lcom/scand/svg/parser/Filter;->buildFilterImpl(Lcom/scand/svg/parser/FilterOp;)Lcom/scand/svg/parser/paintutil/FilterImpl;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lcom/scand/svg/parser/FilterOp;->filterOp:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": not implemented"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SVGKit"

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calcScaleKeepAspectRatioNotCrop(FFFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    div-float/2addr p4, p2

    mul-float p2, p4, p1

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    div-float p4, p3, p1

    goto :goto_0

    :cond_0
    div-float p1, p3, p1

    mul-float p3, p1, p2

    cmpl-float p3, p3, p4

    if-lez p3, :cond_1

    div-float/2addr p4, p2

    goto :goto_0

    :cond_1
    move p4, p1

    :cond_2
    :goto_0
    return p4
.end method

.method private doClipPath(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/support/GraphicsSVG;)Lcom/scand/svg/parser/support/ClipPath;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const-string v0, "clip-path"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    const-string v0, "url(#"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    const/4 v1, 0x5

    .line 25
    invoke-static {p1, v0, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->clipMap:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/scand/svg/parser/support/ClipPath;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/scand/svg/parser/SVGHandler;->defx:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/StringBuffer;

    .line 46
    .line 47
    :try_start_0
    invoke-direct {p0, v1, p2}, Lcom/scand/svg/parser/SVGHandler;->parseClipPath(Ljava/lang/StringBuffer;Lcom/scand/svg/parser/support/GraphicsSVG;)Lcom/scand/svg/parser/support/ClipPath;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception p2

    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception p2

    .line 55
    goto :goto_0

    .line 56
    :catch_2
    move-exception p2

    .line 57
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :goto_1
    iget-object p2, p0, Lcom/scand/svg/parser/SVGHandler;->clipMap:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_1
    return-object v0

    .line 66
    :cond_2
    return-object v1
.end method

.method private dumpTag(Ljava/lang/StringBuffer;ZLjava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    const-string p2, "/"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p3

    if-ge p2, p3, :cond_1

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "=\""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "\""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const-string p2, ">\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private getContext(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;)Lcom/scand/svg/parser/PaintData;
    .locals 9

    const-string v0, "stroke"

    invoke-virtual {p1, v0, p2}, Lcom/scand/svg/parser/Properties;->getColor(Ljava/lang/String;Lcom/scand/svg/parser/PaintData;)Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/scand/svg/parser/PaintData;->strokeColor:Lcom/scand/svg/parser/support/ColorSVG;

    :cond_0
    const-string v1, "stroke-width"

    invoke-virtual {p1, v1}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/scand/svg/parser/PaintData;->strokeWidth:Ljava/lang/Float;

    :cond_1
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/scand/svg/parser/support/ColorSVG;->createNoneColor()Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object v0

    :cond_2
    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    const-string v6, "stroke-linecap"

    invoke-virtual {p1, v6}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "round"

    if-nez v6, :cond_5

    if-eqz p2, :cond_5

    iget-object v2, p2, Lcom/scand/svg/parser/PaintData;->strokeCapStyle:Landroid/graphics/Paint$Cap;

    goto :goto_1

    :cond_5
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_1

    :cond_6
    const-string v8, "square"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_1

    :cond_7
    const-string v8, "butt"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_1
    const-string v8, "stroke-linejoin"

    invoke-virtual {p1, v8}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v6, :cond_8

    if-eqz p2, :cond_8

    iget-object v3, p2, Lcom/scand/svg/parser/PaintData;->strokeJoinStyle:Landroid/graphics/Paint$Join;

    goto :goto_2

    :cond_8
    const-string v6, "miter"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_2

    :cond_a
    const-string v6, "bevel"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    :cond_b
    :goto_2
    new-instance v6, Lcom/scand/svg/parser/PaintData;

    invoke-direct {v6}, Lcom/scand/svg/parser/PaintData;-><init>()V

    const-string v7, "font-family"

    invoke-virtual {p1, v7}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/scand/svg/parser/PaintData;->fontName:Ljava/lang/String;

    if-nez v7, :cond_c

    if-eqz p2, :cond_c

    iget-object v7, p2, Lcom/scand/svg/parser/PaintData;->fontName:Ljava/lang/String;

    iput-object v7, v6, Lcom/scand/svg/parser/PaintData;->fontName:Ljava/lang/String;

    :cond_c
    const-string v7, "font-size"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, v6, Lcom/scand/svg/parser/PaintData;->fontSize:Ljava/lang/Float;

    if-nez v7, :cond_d

    if-eqz p2, :cond_d

    iget-object v7, p2, Lcom/scand/svg/parser/PaintData;->fontSize:Ljava/lang/Float;

    iput-object v7, v6, Lcom/scand/svg/parser/PaintData;->fontSize:Ljava/lang/Float;

    :cond_d
    const-string v7, "font-weight"

    invoke-virtual {p1, v7}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/scand/svg/parser/PaintData;->fontWeight:Ljava/lang/String;

    if-nez v7, :cond_e

    if-eqz p2, :cond_e

    iget-object v7, p2, Lcom/scand/svg/parser/PaintData;->fontWeight:Ljava/lang/String;

    iput-object v7, v6, Lcom/scand/svg/parser/PaintData;->fontWeight:Ljava/lang/String;

    :cond_e
    const-string v7, "font-style"

    invoke-virtual {p1, v7}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/scand/svg/parser/PaintData;->fontStyle:Ljava/lang/String;

    if-nez v7, :cond_f

    if-eqz p2, :cond_f

    iget-object v7, p2, Lcom/scand/svg/parser/PaintData;->fontStyle:Ljava/lang/String;

    iput-object v7, v6, Lcom/scand/svg/parser/PaintData;->fontStyle:Ljava/lang/String;

    :cond_f
    const-string v7, "text-anchor"

    invoke-virtual {p1, v7}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/scand/svg/parser/PaintData;->textAnchor:Ljava/lang/String;

    if-nez v7, :cond_10

    if-eqz p2, :cond_10

    iget-object v7, p2, Lcom/scand/svg/parser/PaintData;->textAnchor:Ljava/lang/String;

    iput-object v7, v6, Lcom/scand/svg/parser/PaintData;->textAnchor:Ljava/lang/String;

    :cond_10
    if-nez v1, :cond_11

    cmpl-float v1, v5, v4

    if-lez v1, :cond_12

    :cond_11
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v6, Lcom/scand/svg/parser/PaintData;->strokeWidth:Ljava/lang/Float;

    :cond_12
    iput-object v2, v6, Lcom/scand/svg/parser/PaintData;->strokeCapStyle:Landroid/graphics/Paint$Cap;

    iput-object v3, v6, Lcom/scand/svg/parser/PaintData;->strokeJoinStyle:Landroid/graphics/Paint$Join;

    iput-object v0, v6, Lcom/scand/svg/parser/PaintData;->strokeColor:Lcom/scand/svg/parser/support/ColorSVG;

    const-string v0, "fill"

    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    const-string v2, "url(#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/scand/svg/parser/Gradient;

    iput-object p3, v6, Lcom/scand/svg/parser/PaintData;->gr:Lcom/scand/svg/parser/Gradient;

    goto :goto_3

    :cond_13
    invoke-direct {p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/scand/svg/parser/Properties;->getColor(Ljava/lang/String;Lcom/scand/svg/parser/PaintData;)Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object p3

    iput-object p3, v6, Lcom/scand/svg/parser/PaintData;->fillColor:Lcom/scand/svg/parser/support/ColorSVG;

    :goto_3
    const-string p3, "opacity"

    invoke-virtual {p1, p3}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p3

    iput-object p3, v6, Lcom/scand/svg/parser/PaintData;->opacity:Ljava/lang/Float;

    if-nez p3, :cond_14

    if-eqz p2, :cond_14

    iget-object p3, p2, Lcom/scand/svg/parser/PaintData;->opacity:Ljava/lang/Float;

    iput-object p3, v6, Lcom/scand/svg/parser/PaintData;->opacity:Ljava/lang/Float;

    :cond_14
    const-string p3, "fill-opacity"

    invoke-virtual {p1, p3}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p3

    iput-object p3, v6, Lcom/scand/svg/parser/PaintData;->fillOpacity:Ljava/lang/Float;

    if-nez p3, :cond_15

    if-eqz p2, :cond_15

    iget-object p3, p2, Lcom/scand/svg/parser/PaintData;->fillOpacity:Ljava/lang/Float;

    iput-object p3, v6, Lcom/scand/svg/parser/PaintData;->fillOpacity:Ljava/lang/Float;

    :cond_15
    const-string p3, "stroke-opacity"

    invoke-virtual {p1, p3}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p3

    iput-object p3, v6, Lcom/scand/svg/parser/PaintData;->strokeOpacity:Ljava/lang/Float;

    if-nez p3, :cond_16

    if-eqz p2, :cond_16

    iget-object p3, p2, Lcom/scand/svg/parser/PaintData;->strokeOpacity:Ljava/lang/Float;

    iput-object p3, v6, Lcom/scand/svg/parser/PaintData;->strokeOpacity:Ljava/lang/Float;

    :cond_16
    const-string p3, "stroke-dasharray"

    invoke-virtual {p1, p3}, Lcom/scand/svg/parser/Properties;->getNumberParseAttr(Ljava/lang/String;)Lcom/scand/svg/parser/Numbers;

    move-result-object p3

    if-eqz p3, :cond_17

    iget-object v0, p3, Lcom/scand/svg/parser/Numbers;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    :goto_4
    iput-object p3, v6, Lcom/scand/svg/parser/PaintData;->dasharray:Lcom/scand/svg/parser/Numbers;

    goto :goto_5

    :cond_17
    if-eqz p2, :cond_18

    iget-object p3, p2, Lcom/scand/svg/parser/PaintData;->dasharray:Lcom/scand/svg/parser/Numbers;

    goto :goto_4

    :cond_18
    :goto_5
    const-string p3, "stroke-dashoffset"

    invoke-virtual {p1, p3}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p3

    if-eqz p3, :cond_19

    iput-object p3, v6, Lcom/scand/svg/parser/PaintData;->dashOffset:Ljava/lang/Float;

    goto :goto_6

    :cond_19
    if-eqz p2, :cond_1a

    iget-object p2, p2, Lcom/scand/svg/parser/PaintData;->dashOffset:Ljava/lang/Float;

    iput-object p2, v6, Lcom/scand/svg/parser/PaintData;->dashOffset:Ljava/lang/Float;

    :cond_1a
    :goto_6
    const-string p2, "filter"

    invoke-virtual {p1, p2}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "url("

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1b

    const/16 p2, 0x23

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-lez p2, :cond_1b

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x29

    const/16 p3, 0x20

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/scand/svg/parser/SVGHandler;->filters:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/scand/svg/parser/Filter;

    iput-object p1, v6, Lcom/scand/svg/parser/PaintData;->filter:Lcom/scand/svg/parser/Filter;

    :cond_1b
    return-object v6
.end method

.method private static getNamespace()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.w3.org/2000/svg"

    return-object v0
.end method

.method private parentContext()Lcom/scand/svg/parser/PaintData;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->ctxs:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->ctxs:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scand/svg/parser/PaintData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private parseCircle(Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/EllipseSVG;
    .locals 5

    const-string v0, "cx"

    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "cy"

    invoke-virtual {p1, v1}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {p1, v2}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v2, Lcom/scand/svg/parser/support/EllipseSVG;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float p1, p1, v4

    invoke-direct {v2, v0, v1, v3, p1}, Lcom/scand/svg/parser/support/EllipseSVG;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private parseClipPath(Ljava/lang/StringBuffer;Lcom/scand/svg/parser/support/GraphicsSVG;)Lcom/scand/svg/parser/support/ClipPath;
    .locals 3

    new-instance v0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;

    invoke-direct {v0, p0, p2}, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;-><init>(Lcom/scand/svg/parser/SVGHandler;Lcom/scand/svg/parser/support/GraphicsSVG;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Ljava/io/StringReader;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p1

    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {p1, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object p1, v0, Lcom/scand/svg/parser/SVGHandler$SVGClipHandler;->mGroup:Lcom/scand/svg/parser/support/ClipPath;

    return-object p1
.end method

.method private parseEllipse(Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/EllipseSVG;
    .locals 7

    const-string v0, "cx"

    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "cy"

    invoke-virtual {p1, v1}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "rx"

    invoke-virtual {p1, v2}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "ry"

    invoke-virtual {p1, v3}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/scand/svg/parser/SVGHandler;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p1, v0

    invoke-virtual {v3, v4, v5, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p1, Lcom/scand/svg/parser/support/EllipseSVG;

    iget-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->rect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/scand/svg/parser/support/EllipseSVG;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private parseImage(Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/ImageRefSVG;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v0, v3, v2}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v0, v4, v2}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    iget v4, v1, Lcom/scand/svg/parser/SVGHandler;->ww:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "width"

    invoke-virtual {v0, v5, v4}, Lcom/scand/svg/parser/Properties;->getScalledFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    iget v5, v1, Lcom/scand/svg/parser/SVGHandler;->hh:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "height"

    invoke-virtual {v0, v6, v5}, Lcom/scand/svg/parser/Properties;->getScalledFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v5

    iget-boolean v6, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v6, :cond_0

    new-instance v0, Lcom/scand/svg/parser/support/ImageRefSVG;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/scand/svg/parser/support/ImageRefSVG;-><init>(FFFF)V

    return-object v0

    :cond_0
    const-string v6, "preserveAspectRatio"

    const-string v7, "xMidYMid"

    invoke-virtual {v0, v6, v7}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "none"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "xlink:href"

    invoke-virtual {v0, v7}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v7, "href"

    invoke-virtual {v0, v7}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_1
    if-nez v7, :cond_2

    const-string v7, "src"

    invoke-virtual {v0, v7}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    const-string v8, "SVGKit"

    if-nez v7, :cond_3

    const-string v0, "href not found"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/scand/svg/parser/support/ImageRefSVG;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/scand/svg/parser/support/ImageRefSVG;-><init>(FFFF)V

    return-object v0

    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_4

    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_4

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v12, v9, -0x1

    if-le v12, v11, :cond_5

    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_5
    if-lt v11, v9, :cond_6

    const-string v0, "href is empty"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/scand/svg/parser/support/ImageRefSVG;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/scand/svg/parser/support/ImageRefSVG;-><init>(FFFF)V

    return-object v0

    :cond_6
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x23

    const/4 v14, 0x1

    if-ne v12, v13, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v1, Lcom/scand/svg/parser/SVGHandler;->recursion:Z

    if-nez v8, :cond_8

    iget-boolean v8, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-nez v8, :cond_8

    iput-boolean v14, v1, Lcom/scand/svg/parser/SVGHandler;->recursion:Z

    iget-object v8, v1, Lcom/scand/svg/parser/SVGHandler;->defx:Ljava/util/HashMap;

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StringBuffer;

    if-eqz v7, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v8

    iget-object v9, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v1, v0, v8, v9}, Lcom/scand/svg/parser/SVGHandler;->getContext(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;)Lcom/scand/svg/parser/PaintData;

    move-result-object v0

    iget-object v8, v1, Lcom/scand/svg/parser/SVGHandler;->ctxs:Ljava/util/Stack;

    invoke-virtual {v8, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/scand/svg/parser/support/GraphicsSVG;->postTranslate(II)V

    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    const-string v8, "http://xml.org/sax/features/validation"

    invoke-virtual {v7, v8, v10}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    invoke-interface {v7, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v0, v7, v8}, Lcom/scand/svg/parser/support/GraphicsSVG;->postTranslate(II)V

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->ctxs:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_7
    iput-boolean v10, v1, Lcom/scand/svg/parser/SVGHandler;->recursion:Z

    :cond_8
    new-instance v0, Lcom/scand/svg/parser/support/ImageRefSVG;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v16

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v18

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v19

    xor-int/lit8 v21, v6, 0x1

    const/16 v20, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lcom/scand/svg/parser/support/ImageRefSVG;-><init>(FFFFZZ)V

    return-object v0

    :cond_9
    add-int/lit8 v0, v11, 0xc

    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v11, "data:image/"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x2c

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v8, v7

    const/high16 v11, 0x10000

    if-le v8, v11, :cond_a

    const/4 v8, 0x1

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_b

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_b
    add-int/lit8 v11, v0, 0x1

    sub-int/2addr v9, v0

    sub-int/2addr v9, v14

    invoke-static {v7, v11, v9, v10}, Landroid/util/Base64;->decode([BIII)[B

    move-result-object v0

    if-eqz v8, :cond_c

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_c
    array-length v7, v0

    invoke-static {v0, v10, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v8, :cond_d

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_d
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    float-to-int v9, v9

    invoke-static {v0, v7, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v21

    if-eqz v8, :cond_e

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_e
    new-instance v0, Lcom/scand/svg/parser/support/ImageRefSVG;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v16

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v18

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v19

    xor-int/lit8 v20, v6, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lcom/scand/svg/parser/support/ImageRefSVG;-><init>(FFFFZLandroid/graphics/Bitmap;)V

    return-object v0

    :cond_f
    :try_start_1
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->parser:Lcom/scand/svg/parser/SVGParser;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->parser:Lcom/scand/svg/parser/SVGParser;

    iget-object v0, v0, Lcom/scand/svg/parser/SVGParser;->baseHref:Ljava/lang/String;

    const/4 v0, 0x0

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    invoke-static {v8, v7, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/scand/svg/parser/support/ImageRefSVG;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v16

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v18

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v19

    xor-int/lit8 v21, v6, 0x1

    const/16 v20, 0x1

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lcom/scand/svg/parser/support/ImageRefSVG;-><init>(FFFFZZ)V

    return-object v0
.end method

.method private parseLine(Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/LineSVG;
    .locals 4

    const-string v0, "x1"

    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "x2"

    invoke-virtual {p1, v1}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "y1"

    invoke-virtual {p1, v2}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "y2"

    invoke-virtual {p1, v3}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    new-instance v3, Lcom/scand/svg/parser/support/LineSVG;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v3, v0, v2, v1, p1}, Lcom/scand/svg/parser/support/LineSVG;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3
.end method

.method private parsePath(Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/PathExt;
    .locals 1

    const-string v0, "d"

    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/scand/svg/parser/PathSvg;->parsePath(Ljava/lang/String;)Lcom/scand/svg/parser/support/PathExt;

    move-result-object p1

    return-object p1
.end method

.method private parsePolygon(Lcom/scand/svg/parser/Properties;Z)Lcom/scand/svg/parser/support/PathExt;
    .locals 5

    const-string v0, "points"

    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getNumberParseAttr(Ljava/lang/String;)Lcom/scand/svg/parser/Numbers;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/scand/svg/parser/Numbers;->numberArray:[F

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    const-string v1, "fill-rule"

    invoke-virtual {p1, v1}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const-string v3, "evenodd"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :cond_0
    new-instance p1, Lcom/scand/svg/parser/support/PathExt;

    invoke-direct {p1}, Lcom/scand/svg/parser/support/PathExt;-><init>()V

    invoke-virtual {p1, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    const/4 v1, 0x0

    aget v3, v0, v1

    aget v2, v0, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v2, 0x2

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget v3, v0, v2

    add-int/lit8 v4, v2, 0x1

    aget v4, v0, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_2
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private parseRect(Lcom/scand/svg/parser/Properties;Z)Lcom/scand/svg/parser/support/RectangleSVG;
    .locals 11

    const-string p2, "x"

    invoke-virtual {p1, p2}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    const-string v1, "y"

    invoke-virtual {p1, v1}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget v1, p0, Lcom/scand/svg/parser/SVGHandler;->ww:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {p1, v2, v1}, Lcom/scand/svg/parser/Properties;->getScalledFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->hh:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "height"

    invoke-virtual {p1, v3, v2}, Lcom/scand/svg/parser/Properties;->getScalledFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "rx"

    invoke-virtual {p1, v3}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "ry"

    invoke-virtual {p1, v4}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-nez v3, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/scand/svg/parser/support/RectangleSVG;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/scand/svg/parser/support/RectangleSVG;-><init>(FFFF)V

    goto :goto_2

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    move-object v3, p1

    :cond_4
    new-instance p1, Lcom/scand/svg/parser/support/RectangleSVG;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/scand/svg/parser/support/RectangleSVG;-><init>(FFFFFF)V

    :goto_2
    return-object p1
.end method

.method private parseSize(Lcom/scand/svg/parser/Properties;Z)Landroid/graphics/Matrix;
    .locals 9

    const-string v0, "width"

    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {p1, v1}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/scand/svg/parser/SVGHandler;->ww:F

    iput v2, p0, Lcom/scand/svg/parser/SVGHandler;->hh:F

    const-string v3, "viewBox"

    invoke-virtual {p1, v3}, Lcom/scand/svg/parser/Properties;->getNumberParseAttr(Ljava/lang/String;)Lcom/scand/svg/parser/Numbers;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v5}, Lcom/scand/svg/parser/Numbers;->getNumber(I)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/scand/svg/parser/Numbers;->getNumber(I)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/scand/svg/parser/Numbers;->getNumber(I)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, p0, Lcom/scand/svg/parser/SVGHandler;->ww:F

    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lcom/scand/svg/parser/Numbers;->getNumber(I)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, p0, Lcom/scand/svg/parser/SVGHandler;->hh:F

    cmpl-float v8, v7, v4

    if-lez v8, :cond_0

    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->ww:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v2, v7

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    iput v2, p0, Lcom/scand/svg/parser/SVGHandler;->ww:F

    iput v2, p0, Lcom/scand/svg/parser/SVGHandler;->hh:F

    :cond_1
    const/4 v2, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    :goto_0
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/scand/svg/parser/SVGHandler;->picSizeRecalc(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/parser/Properties;F)V

    invoke-direct {p0}, Lcom/scand/svg/parser/SVGHandler;->picTransformationRecalc()V

    const/high16 p1, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p2, :cond_8

    iget p2, p0, Lcom/scand/svg/parser/SVGHandler;->scaleX:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_2

    iget p2, p0, Lcom/scand/svg/parser/SVGHandler;->scaleY:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_3

    :cond_2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget p2, p0, Lcom/scand/svg/parser/SVGHandler;->scaleX:F

    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->scaleY:F

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_3
    iget p2, p0, Lcom/scand/svg/parser/SVGHandler;->left:I

    if-nez p2, :cond_4

    iget p2, p0, Lcom/scand/svg/parser/SVGHandler;->top:I

    if-eqz p2, :cond_6

    :cond_4
    if-nez v1, :cond_5

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    :cond_5
    iget p2, p0, Lcom/scand/svg/parser/SVGHandler;->left:I

    int-to-float p2, p2

    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_6
    if-eqz v3, :cond_c

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->ww:F

    iget v3, p0, Lcom/scand/svg/parser/SVGHandler;->hh:F

    iget v7, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    iget v8, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    invoke-direct {p0, v2, v3, v7, v8}, Lcom/scand/svg/parser/SVGHandler;->calcScaleKeepAspectRatioNotCrop(FFFF)F

    move-result v2

    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    mul-float v5, v5, v2

    mul-float v6, v6, v2

    iget v3, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    iget v7, p0, Lcom/scand/svg/parser/SVGHandler;->ww:F

    mul-float v7, v7, v2

    sub-float/2addr v3, v7

    div-float/2addr v3, p1

    add-float/2addr v3, v5

    iget v5, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    iget v7, p0, Lcom/scand/svg/parser/SVGHandler;->hh:F

    mul-float v7, v7, v2

    sub-float/2addr v5, v7

    div-float/2addr v5, p1

    add-float/2addr v5, v6

    neg-float p1, v3

    neg-float v2, v5

    invoke-virtual {p2, p1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz v1, :cond_7

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    goto :goto_1

    :cond_7
    move-object v1, p2

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget p2, p0, Lcom/scand/svg/parser/SVGHandler;->ww:F

    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->hh:F

    iget v3, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    iget v7, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    invoke-direct {p0, p2, v2, v3, v7}, Lcom/scand/svg/parser/SVGHandler;->calcScaleKeepAspectRatioNotCrop(FFFF)F

    move-result p2

    invoke-virtual {v1, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    mul-float v5, v5, p2

    mul-float v6, v6, p2

    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    iget v3, p0, Lcom/scand/svg/parser/SVGHandler;->ww:F

    mul-float v3, v3, p2

    sub-float/2addr v2, v3

    div-float/2addr v2, p1

    add-float/2addr v2, v5

    iget v3, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    iget v5, p0, Lcom/scand/svg/parser/SVGHandler;->hh:F

    mul-float v5, v5, p2

    sub-float/2addr v3, v5

    div-float/2addr v3, p1

    add-float/2addr v3, v6

    neg-float p1, v2

    neg-float p2, v3

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_9
    iget p1, p0, Lcom/scand/svg/parser/SVGHandler;->scaleX:F

    cmpl-float p2, p1, v0

    if-nez p2, :cond_a

    iget p2, p0, Lcom/scand/svg/parser/SVGHandler;->scaleY:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_c

    :cond_a
    iget p2, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->scaleY:F

    mul-float p2, p2, v2

    iput p2, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    iget p2, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    mul-float p2, p2, p1

    iput p2, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    if-nez v1, :cond_b

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    move-object v1, p1

    :cond_b
    iget p1, p0, Lcom/scand/svg/parser/SVGHandler;->scaleX:F

    iget p2, p0, Lcom/scand/svg/parser/SVGHandler;->scaleY:F

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_c
    :goto_1
    iget p1, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_d

    iput v0, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    :cond_d
    iget p1, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_e

    iput v0, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    :cond_e
    return-object v1
.end method

.method private picSizeRecalc(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/parser/Properties;F)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput v0, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    iput v0, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->baseWidth:I

    iget v3, p0, Lcom/scand/svg/parser/SVGHandler;->baseHeight:I

    const-string v4, "height"

    const-string v5, "width"

    if-le v2, v3, :cond_5

    if-eqz p1, :cond_0

    int-to-float p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p3, v5, p1}, Lcom/scand/svg/parser/Properties;->getScalledFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    int-to-float p1, v2

    :goto_0
    iput p1, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    if-eqz p2, :cond_3

    invoke-virtual {p3, v4, v1}, Lcom/scand/svg/parser/Properties;->getScalledFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p2, p2, v0

    if-nez p2, :cond_2

    cmpl-float p1, p4, v0

    if-lez p1, :cond_1

    iget p1, p0, Lcom/scand/svg/parser/SVGHandler;->baseWidth:I

    int-to-float p1, p1

    div-float/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p3, v4, p1}, Lcom/scand/svg/parser/Properties;->getScalledFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_2

    :cond_3
    cmpl-float p2, p4, v0

    if-lez p2, :cond_4

    div-float/2addr p1, p4

    :cond_4
    :goto_2
    iput p1, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    goto :goto_6

    :cond_5
    if-eqz p2, :cond_6

    int-to-float p2, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p3, v4, p2}, Lcom/scand/svg/parser/Properties;->getScalledFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_3

    :cond_6
    int-to-float p2, v3

    :goto_3
    iput p2, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_9

    invoke-virtual {p3, v5, v1}, Lcom/scand/svg/parser/Properties;->getScalledFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p2, p2, v0

    if-nez p2, :cond_8

    cmpl-float p1, p4, v0

    if-lez p1, :cond_7

    iget p1, p0, Lcom/scand/svg/parser/SVGHandler;->baseHeight:I

    int-to-float p1, p1

    div-float/2addr v2, p4

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p3, v5, p1}, Lcom/scand/svg/parser/Properties;->getScalledFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    goto :goto_5

    :cond_7
    iget p1, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    :goto_4
    iput p1, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_4

    :cond_9
    cmpl-float p1, p4, v0

    if-lez p1, :cond_a

    div-float/2addr v2, p4

    div-float/2addr p2, v2

    :cond_a
    iput p2, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    :goto_6
    return-void
.end method

.method private picTransformationRecalc()V
    .locals 4

    iget v0, p0, Lcom/scand/svg/parser/SVGHandler;->reqWidth:I

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/scand/svg/parser/SVGHandler;->reqHeight:I

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/scand/svg/parser/SVGHandler;->bKeepAspectRatio:Z

    if-nez v2, :cond_0

    int-to-float v1, v1

    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/scand/svg/parser/SVGHandler;->scaleY:F

    int-to-float v0, v0

    iget v1, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/scand/svg/parser/SVGHandler;->scaleX:F

    goto :goto_3

    :cond_0
    iget-boolean v2, p0, Lcom/scand/svg/parser/SVGHandler;->bCropImage:Z

    if-eqz v2, :cond_3

    if-ge v0, v1, :cond_1

    int-to-float v1, v1

    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/scand/svg/parser/SVGHandler;->scaleX:F

    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    mul-float v1, v1, v2

    int-to-float v3, v0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    int-to-float v0, v0

    :goto_0
    div-float/2addr v0, v2

    iput v0, p0, Lcom/scand/svg/parser/SVGHandler;->scaleX:F

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/scand/svg/parser/SVGHandler;->scaleX:F

    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    mul-float v0, v0, v2

    int-to-float v3, v1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    int-to-float v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lcom/scand/svg/parser/SVGHandler;->scaleX:F

    :goto_2
    iput v0, p0, Lcom/scand/svg/parser/SVGHandler;->scaleY:F

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/scand/svg/parser/SVGHandler;->width:F

    iget v3, p0, Lcom/scand/svg/parser/SVGHandler;->height:F

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/scand/svg/parser/SVGHandler;->calcScaleKeepAspectRatioNotCrop(FFFF)F

    move-result v0

    iput v0, p0, Lcom/scand/svg/parser/SVGHandler;->scaleX:F

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method private popTransform()V
    .locals 2

    iget-boolean v0, p0, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/scand/svg/parser/SVGHandler;->specialGraphicsMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/scand/svg/parser/support/GraphicsSVG;->transform(Landroid/graphics/Matrix;Lcom/scand/svg/parser/support/ClipPath;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->restore()V

    :goto_0
    return-void
.end method

.method private pushTransform(Lcom/scand/svg/parser/Properties;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "transform"

    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clip-path"

    invoke-virtual {p1, v1}, Lcom/scand/svg/parser/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    invoke-static {v0}, Lcom/scand/svg/parser/Transform;->parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x2

    aget v2, v1, v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_1

    float-to-int v2, v2

    iput v2, p0, Lcom/scand/svg/parser/SVGHandler;->movedOriginX:I

    :cond_1
    const/4 v2, 0x5

    aget v1, v1, v2

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_2

    float-to-int v1, v1

    iput v1, p0, Lcom/scand/svg/parser/SVGHandler;->movedOriginY:I

    :cond_2
    iget-boolean v1, p0, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    iget-object v1, p0, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-direct {p0, p1, v1}, Lcom/scand/svg/parser/SVGHandler;->doClipPath(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/support/GraphicsSVG;)Lcom/scand/svg/parser/support/ClipPath;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/scand/svg/parser/support/GraphicsSVG;->transform(Landroid/graphics/Matrix;Lcom/scand/svg/parser/support/ClipPath;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private registerGradient(ZLcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/Gradient;
    .locals 8

    iget-boolean v0, p0, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/scand/svg/parser/Gradient;

    invoke-direct {v0}, Lcom/scand/svg/parser/Gradient;-><init>()V

    const-string v1, "id"

    invoke-virtual {p2, v1}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/scand/svg/parser/Gradient;->id:Ljava/lang/String;

    iput-boolean p1, v0, Lcom/scand/svg/parser/Gradient;->isLinear:Z

    const-string v1, "%"

    const-string v2, ""

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v3, "x1"

    invoke-virtual {p2, v3, p1}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Lcom/scand/svg/parser/Gradient;->x1:Ljava/lang/Float;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "x2"

    invoke-virtual {p2, v5, v4}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v0, Lcom/scand/svg/parser/Gradient;->x2:Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v6, "y1"

    invoke-virtual {p2, v6, v4}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v0, Lcom/scand/svg/parser/Gradient;->y1:Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v4, "y2"

    invoke-virtual {p2, v4, p1}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Lcom/scand/svg/parser/Gradient;->y2:Ljava/lang/Float;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/scand/svg/parser/Gradient;->pX1:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/scand/svg/parser/Gradient;->pX2:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/scand/svg/parser/Gradient;->pY1:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/scand/svg/parser/Gradient;->pY2:Z

    goto/16 :goto_0

    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "cx"

    invoke-virtual {p2, v4, v3}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v0, Lcom/scand/svg/parser/Gradient;->x:Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v5, "cy"

    invoke-virtual {p2, v5, v3}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v0, Lcom/scand/svg/parser/Gradient;->y:Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v6, "fx"

    invoke-virtual {p2, v6, v3}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v0, Lcom/scand/svg/parser/Gradient;->fx:Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v7, "fy"

    invoke-virtual {p2, v7, v3}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v0, Lcom/scand/svg/parser/Gradient;->fy:Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v3, "r"

    invoke-virtual {p2, v3, p1}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Lcom/scand/svg/parser/Gradient;->radius:Ljava/lang/Float;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/scand/svg/parser/Gradient;->pX:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/scand/svg/parser/Gradient;->pY:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "50%"

    invoke-virtual {p2, v6, v4}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/scand/svg/parser/Gradient;->pFX:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7, v4}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/scand/svg/parser/Gradient;->pFY:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/scand/svg/parser/Gradient;->pR:Z

    :goto_0
    const-string p1, "spreadMethod"

    const-string v1, "pad"

    invoke-virtual {p2, p1, v1}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/scand/svg/parser/Gradient;->spreadMethod:Ljava/lang/String;

    const-string p1, "gradientUnits"

    const-string v1, "objectBoundingBox"

    invoke-virtual {p2, p1, v1}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/scand/svg/parser/Gradient;->gradientUnits:Ljava/lang/String;

    const-string p1, "gradientTransform"

    invoke-virtual {p2, p1}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/scand/svg/parser/Transform;->parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, v0, Lcom/scand/svg/parser/Gradient;->matrix:Landroid/graphics/Matrix;

    :cond_2
    const-string p1, "href"

    invoke-virtual {p2, p1}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    iput-object p1, v0, Lcom/scand/svg/parser/Gradient;->xlink:Ljava/lang/String;

    :cond_4
    return-object v0
.end method

.method private setFill(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;Landroid/graphics/RectF;)Z
    .locals 11

    const-string v0, "display"

    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    iget-object v1, p2, Lcom/scand/svg/parser/PaintData;->filter:Lcom/scand/svg/parser/Filter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-direct {p0, v1, p2, v2, p4}, Lcom/scand/svg/parser/SVGHandler;->applyFilterChain(Lcom/scand/svg/parser/support/GraphicsSVG;Lcom/scand/svg/parser/PaintData;ZLandroid/graphics/RectF;)V

    :cond_3
    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v1, "url(#"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x5

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/scand/svg/parser/Gradient;

    if-eqz v4, :cond_4

    :try_start_0
    invoke-direct {p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/scand/svg/parser/Properties;->getOpacityColorForGradient(Ljava/lang/String;Lcom/scand/svg/parser/PaintData;)Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object v10

    iget v5, p4, Landroid/graphics/RectF;->left:F

    iget v6, p4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget-object v9, p0, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-static/range {v4 .. v10}, Lcom/scand/svg/parser/paintutil/ShaderApply;->applyShader(Lcom/scand/svg/parser/Gradient;FFFFLcom/scand/svg/parser/support/GraphicsSVG;Lcom/scand/svg/parser/support/ColorSVG;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v3

    :cond_4
    return v2

    :cond_5
    invoke-direct {p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/scand/svg/parser/Properties;->getColor(Ljava/lang/String;Lcom/scand/svg/parser/PaintData;)Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/scand/svg/parser/support/ColorSVG;->getAlpha()I

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p2, Lcom/scand/svg/parser/support/ColorSVG;->isNone:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    iget p2, p2, Lcom/scand/svg/parser/support/ColorSVG;->mValue:I

    :goto_1
    invoke-virtual {p1, p2}, Lcom/scand/svg/parser/support/GraphicsSVG;->setFillColor(I)V

    return v3

    :cond_7
    :goto_2
    return v2

    :cond_8
    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    const/high16 p2, -0x1000000

    goto :goto_1

    :cond_9
    return v2
.end method

.method private setStroke(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;Landroid/graphics/RectF;)Lcom/scand/svg/parser/support/BasicStroke;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    iget-boolean v0, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    return-object v5

    :cond_0
    const-string v0, "display"

    invoke-virtual {v2, v0}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "none"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v5

    :cond_1
    const-string v7, "stroke"

    invoke-virtual {v2, v7}, Lcom/scand/svg/parser/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    return-object v5

    :cond_2
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    const-string v10, "url(#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v8

    const/4 v11, 0x5

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v10, p3

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/scand/svg/parser/Gradient;

    if-eqz v10, :cond_3

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/scand/svg/parser/Properties;->getOpacityColorForGradient(Ljava/lang/String;Lcom/scand/svg/parser/PaintData;)Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object v16

    iget v11, v4, Landroid/graphics/RectF;->left:F

    iget v12, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->height()F

    move-result v14

    iget-object v15, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-static/range {v10 .. v16}, Lcom/scand/svg/parser/paintutil/ShaderApply;->applyShader(Lcom/scand/svg/parser/Gradient;FFFFLcom/scand/svg/parser/support/GraphicsSVG;Lcom/scand/svg/parser/support/ColorSVG;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Lcom/scand/svg/parser/Properties;->getColor(Ljava/lang/String;Lcom/scand/svg/parser/PaintData;)Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object v7

    if-nez v0, :cond_6

    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    iget-object v7, v3, Lcom/scand/svg/parser/PaintData;->strokeColor:Lcom/scand/svg/parser/support/ColorSVG;

    :cond_4
    if-eqz v7, :cond_5

    iget-boolean v10, v7, Lcom/scand/svg/parser/support/ColorSVG;->isNone:Z

    if-eqz v10, :cond_6

    :cond_5
    return-object v5

    :cond_6
    const-string v10, "stroke-width"

    invoke-virtual {v2, v10}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    if-nez v10, :cond_7

    if-eqz v3, :cond_7

    iget-object v10, v3, Lcom/scand/svg/parser/PaintData;->strokeWidth:Ljava/lang/Float;

    :cond_7
    sget-object v11, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    sget-object v12, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    const/4 v13, 0x0

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move v15, v10

    goto :goto_1

    :cond_8
    if-eqz v7, :cond_9

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_1

    :cond_9
    const/4 v15, 0x0

    :goto_1
    if-nez v7, :cond_a

    if-nez v0, :cond_a

    new-instance v7, Lcom/scand/svg/parser/support/ColorSVG;

    invoke-direct {v7, v9}, Lcom/scand/svg/parser/support/ColorSVG;-><init>(I)V

    const/high16 v10, -0x1000000

    iput v10, v7, Lcom/scand/svg/parser/support/ColorSVG;->mValue:I

    :cond_a
    iget-object v10, v3, Lcom/scand/svg/parser/PaintData;->filter:Lcom/scand/svg/parser/Filter;

    if-eqz v10, :cond_b

    iget-object v10, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-direct {v1, v10, v3, v8, v4}, Lcom/scand/svg/parser/SVGHandler;->applyFilterChain(Lcom/scand/svg/parser/support/GraphicsSVG;Lcom/scand/svg/parser/PaintData;ZLandroid/graphics/RectF;)V

    :cond_b
    if-eqz v7, :cond_1b

    cmpl-float v4, v15, v13

    if-lez v4, :cond_1b

    const-string v5, "stroke-linecap"

    invoke-virtual {v2, v5}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "round"

    if-nez v5, :cond_c

    iget-object v11, v3, Lcom/scand/svg/parser/PaintData;->strokeCapStyle:Landroid/graphics/Paint$Cap;

    goto :goto_2

    :cond_c
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_2

    :cond_d
    const-string v10, "square"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    sget-object v11, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_2

    :cond_e
    const-string v10, "butt"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_2
    const-string v10, "stroke-linejoin"

    invoke-virtual {v2, v10}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v5, :cond_f

    iget-object v12, v3, Lcom/scand/svg/parser/PaintData;->strokeJoinStyle:Landroid/graphics/Paint$Join;

    goto :goto_3

    :cond_f
    const-string v5, "miter"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_3

    :cond_10
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    sget-object v12, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_3

    :cond_11
    const-string v5, "bevel"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v12, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    :cond_12
    :goto_3
    const-string v5, "stroke-dasharray"

    invoke-virtual {v2, v5}, Lcom/scand/svg/parser/Properties;->getNumberParseAttr(Ljava/lang/String;)Lcom/scand/svg/parser/Numbers;

    move-result-object v8

    if-eqz v8, :cond_13

    iget-object v10, v8, Lcom/scand/svg/parser/Numbers;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_14

    :cond_13
    invoke-virtual {v2, v5}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v8, v3, Lcom/scand/svg/parser/PaintData;->dasharray:Lcom/scand/svg/parser/Numbers;

    :cond_14
    const-string v5, "stroke-dashoffset"

    invoke-virtual {v2, v5}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    if-nez v10, :cond_15

    invoke-virtual {v2, v5}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v10, v3, Lcom/scand/svg/parser/PaintData;->dashOffset:Ljava/lang/Float;

    :cond_15
    if-eqz v8, :cond_19

    iget-object v2, v8, Lcom/scand/svg/parser/Numbers;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_6

    :cond_16
    iget-object v2, v8, Lcom/scand/svg/parser/Numbers;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [F

    :goto_4
    if-ge v9, v2, :cond_17

    invoke-virtual {v8, v9}, Lcom/scand/svg/parser/Numbers;->getNumber(I)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_17
    new-instance v2, Lcom/scand/svg/parser/support/BasicStroke;

    if-eqz v10, :cond_18

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move/from16 v20, v13

    goto :goto_5

    :cond_18
    const/16 v20, 0x0

    :goto_5
    const/high16 v18, 0x3f800000    # 1.0f

    move-object v14, v2

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v20}, Lcom/scand/svg/parser/support/BasicStroke;-><init>(FLandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[FF)V

    goto :goto_7

    :cond_19
    :goto_6
    new-instance v2, Lcom/scand/svg/parser/support/BasicStroke;

    invoke-direct {v2, v15, v11, v12}, Lcom/scand/svg/parser/support/BasicStroke;-><init>(FLandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;)V

    :goto_7
    if-nez v0, :cond_1a

    if-lez v4, :cond_1a

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    iget v3, v7, Lcom/scand/svg/parser/support/ColorSVG;->mValue:I

    invoke-virtual {v0, v3}, Lcom/scand/svg/parser/support/GraphicsSVG;->setStrokeColor(I)V

    :cond_1a
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v0, v2}, Lcom/scand/svg/parser/support/GraphicsSVG;->setStroke(Lcom/scand/svg/parser/support/BasicStroke;)V

    return-object v2

    :cond_1b
    return-object v5
.end method

.method private updateLimits(FF)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/scand/svg/parser/SVGHandler;->movedOriginX:I

    int-to-float v1, v0

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/scand/svg/parser/SVGHandler;->limits:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    int-to-float v1, v0

    add-float/2addr v1, p1

    iput v1, v2, Landroid/graphics/RectF;->left:F

    :cond_0
    int-to-float v1, v0

    add-float/2addr v1, p1

    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, v2, Landroid/graphics/RectF;->right:F

    :cond_1
    iget p1, p0, Lcom/scand/svg/parser/SVGHandler;->movedOriginY:I

    int-to-float v0, p1

    add-float/2addr v0, p2

    iget v1, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    int-to-float v0, p1

    add-float/2addr v0, p2

    iput v0, v2, Landroid/graphics/RectF;->top:F

    :cond_2
    int-to-float v0, p1

    add-float/2addr v0, p2

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    int-to-float p1, p1

    add-float/2addr p2, p1

    iput p2, v2, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void
.end method

.method private updateLimits(Landroid/graphics/RectF;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->rect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->rect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    add-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object p1, p0, Lcom/scand/svg/parser/SVGHandler;->rect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v0, p1}, Lcom/scand/svg/parser/SVGHandler;->updateLimits(FF)V

    iget-object p1, p0, Lcom/scand/svg/parser/SVGHandler;->rect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, p1}, Lcom/scand/svg/parser/SVGHandler;->updateLimits(FF)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/scand/svg/parser/SVGHandler;->defs:Z

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/scand/svg/parser/SVGHandler;->recursion:Z

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/scand/svg/parser/SVGHandler;->sbx:Ljava/lang/StringBuffer;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/scand/svg/parser/SVGHandler;->currentText:Lcom/scand/svg/parser/Text;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Text;->setText(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-boolean p1, p0, Lcom/scand/svg/parser/SVGHandler;->runStyle:Z

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/scand/svg/parser/SVGHandler;->style:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p2, v0, p1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/scand/svg/parser/SVGHandler;->style:Ljava/lang/String;

    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v1, p0

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v0, p3

    :goto_1
    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->cascadeEngine:Lcom/scand/svg/css/CascadeEngine;

    invoke-virtual {v2}, Lcom/scand/svg/css/CascadeEngine;->popElement()V

    iget-boolean v2, v1, Lcom/scand/svg/parser/SVGHandler;->hidden:Z

    iget-boolean v3, v1, Lcom/scand/svg/parser/SVGHandler;->patternDefinition:Z

    or-int/2addr v2, v3

    iget-boolean v3, v1, Lcom/scand/svg/parser/SVGHandler;->metaData:Z

    or-int/2addr v2, v3

    iget-boolean v3, v1, Lcom/scand/svg/parser/SVGHandler;->defs:Z

    or-int/2addr v2, v3

    iget-boolean v3, v1, Lcom/scand/svg/parser/SVGHandler;->recursion:Z

    const-string v4, "filter"

    const-string v5, "defs"

    const-string v6, "symbol"

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v3, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->sbx:Ljava/lang/StringBuffer;

    const-string v9, "</g>"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    iget-boolean v3, v1, Lcom/scand/svg/parser/SVGHandler;->defs:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->sbx:Ljava/lang/StringBuffer;

    invoke-direct {v1, v3, v8, v0, v7}, Lcom/scand/svg/parser/SVGHandler;->dumpTag(Ljava/lang/StringBuffer;ZLjava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_3
    :goto_2
    const-string v3, "svg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v0, v1, Lcom/scand/svg/parser/SVGHandler;->svgNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/scand/svg/parser/SVGHandler;->svgNesting:I

    goto/16 :goto_13

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_11

    :cond_5
    if-nez v2, :cond_6

    const-string v3, "tspan"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->currentText:Lcom/scand/svg/parser/Text;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/scand/svg/parser/Text;->endSpan()V

    goto/16 :goto_13

    :cond_6
    if-nez v2, :cond_1b

    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->currentText:Lcom/scand/svg/parser/Text;

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->ctxs:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->ctxs:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scand/svg/parser/PaintData;

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/scand/svg/parser/PaintData;

    invoke-direct {v0}, Lcom/scand/svg/parser/PaintData;-><init>()V

    :goto_3
    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->currentText:Lcom/scand/svg/parser/Text;

    iget-object v2, v2, Lcom/scand/svg/parser/Text;->spans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scand/svg/parser/TextSpan;

    iget-boolean v9, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-nez v9, :cond_a

    iget-object v9, v6, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v9, v9, Lcom/scand/svg/parser/TextProperties;->fillColor:Lcom/scand/svg/parser/support/ColorSVG;

    if-nez v9, :cond_8

    iget-object v9, v1, Lcom/scand/svg/parser/SVGHandler;->currentText:Lcom/scand/svg/parser/Text;

    iget-object v9, v9, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v9, v9, Lcom/scand/svg/parser/TextProperties;->fillColor:Lcom/scand/svg/parser/support/ColorSVG;

    if-nez v9, :cond_8

    iget-object v9, v0, Lcom/scand/svg/parser/PaintData;->fillColor:Lcom/scand/svg/parser/support/ColorSVG;

    :cond_8
    if-eqz v9, :cond_9

    iget-object v10, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    iget v9, v9, Lcom/scand/svg/parser/support/ColorSVG;->mValue:I

    invoke-virtual {v10, v9}, Lcom/scand/svg/parser/support/GraphicsSVG;->setTextColor(I)V

    goto :goto_5

    :cond_9
    iget-object v9, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    const/high16 v10, -0x1000000

    invoke-virtual {v9, v10}, Lcom/scand/svg/parser/support/GraphicsSVG;->setTextColor(I)V

    :cond_a
    :goto_5
    iget-object v9, v6, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v9, v9, Lcom/scand/svg/parser/TextProperties;->x:Ljava/lang/Float;

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :cond_b
    iget-object v9, v6, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v9, v9, Lcom/scand/svg/parser/TextProperties;->y:Ljava/lang/Float;

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :cond_c
    iget-object v9, v6, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v10, v9, Lcom/scand/svg/parser/TextProperties;->textAnchor:Ljava/lang/String;

    if-nez v10, :cond_d

    iget-object v10, v1, Lcom/scand/svg/parser/SVGHandler;->currentText:Lcom/scand/svg/parser/Text;

    iget-object v10, v10, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v10, v10, Lcom/scand/svg/parser/TextProperties;->textAnchor:Ljava/lang/String;

    if-nez v10, :cond_d

    iget-object v10, v0, Lcom/scand/svg/parser/PaintData;->textAnchor:Ljava/lang/String;

    :cond_d
    iget-object v11, v9, Lcom/scand/svg/parser/TextProperties;->fontStyle:Ljava/lang/String;

    if-nez v11, :cond_e

    iget-object v11, v1, Lcom/scand/svg/parser/SVGHandler;->currentText:Lcom/scand/svg/parser/Text;

    iget-object v11, v11, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v11, v11, Lcom/scand/svg/parser/TextProperties;->fontStyle:Ljava/lang/String;

    if-nez v11, :cond_e

    iget-object v11, v0, Lcom/scand/svg/parser/PaintData;->fontStyle:Ljava/lang/String;

    :cond_e
    move-object/from16 v16, v11

    iget-object v11, v9, Lcom/scand/svg/parser/TextProperties;->fontWeight:Ljava/lang/String;

    if-nez v11, :cond_f

    iget-object v11, v1, Lcom/scand/svg/parser/SVGHandler;->currentText:Lcom/scand/svg/parser/Text;

    iget-object v11, v11, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v11, v11, Lcom/scand/svg/parser/TextProperties;->fontWeight:Ljava/lang/String;

    if-nez v11, :cond_f

    iget-object v11, v0, Lcom/scand/svg/parser/PaintData;->fontWeight:Ljava/lang/String;

    :cond_f
    move-object/from16 v17, v11

    iget-object v11, v9, Lcom/scand/svg/parser/TextProperties;->fontName:Ljava/lang/String;

    if-nez v11, :cond_10

    iget-object v11, v1, Lcom/scand/svg/parser/SVGHandler;->currentText:Lcom/scand/svg/parser/Text;

    iget-object v11, v11, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v11, v11, Lcom/scand/svg/parser/TextProperties;->fontName:Ljava/lang/String;

    if-nez v11, :cond_10

    iget-object v11, v0, Lcom/scand/svg/parser/PaintData;->fontName:Ljava/lang/String;

    :cond_10
    move-object v14, v11

    iget-object v11, v9, Lcom/scand/svg/parser/TextProperties;->fontSize:Ljava/lang/Float;

    if-nez v11, :cond_11

    iget-object v11, v1, Lcom/scand/svg/parser/SVGHandler;->currentText:Lcom/scand/svg/parser/Text;

    iget-object v11, v11, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v11, v11, Lcom/scand/svg/parser/TextProperties;->fontSize:Ljava/lang/Float;

    if-nez v11, :cond_11

    iget-object v11, v0, Lcom/scand/svg/parser/PaintData;->fontSize:Ljava/lang/Float;

    :cond_11
    move-object v15, v11

    iget-object v9, v9, Lcom/scand/svg/parser/TextProperties;->extUrl:Ljava/lang/String;

    if-nez v9, :cond_12

    iget-object v9, v1, Lcom/scand/svg/parser/SVGHandler;->currentText:Lcom/scand/svg/parser/Text;

    iget-object v9, v9, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v9, v9, Lcom/scand/svg/parser/TextProperties;->extUrl:Ljava/lang/String;

    if-nez v9, :cond_12

    move-object/from16 v20, v7

    goto :goto_6

    :cond_12
    move-object/from16 v20, v9

    :goto_6
    iget-boolean v9, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v9, :cond_14

    iget-object v6, v6, Lcom/scand/svg/parser/TextSpan;->text:Ljava/lang/String;

    if-nez v6, :cond_13

    const/4 v6, 0x0

    goto :goto_7

    :cond_13
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    :goto_7
    new-instance v9, Landroid/graphics/RectF;

    mul-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    invoke-direct {v9, v4, v5, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v1, v9}, Lcom/scand/svg/parser/SVGHandler;->updateLimits(Landroid/graphics/RectF;)V

    :goto_8
    add-float/2addr v4, v6

    goto/16 :goto_4

    :cond_14
    iget-object v12, v1, Lcom/scand/svg/parser/SVGHandler;->parser:Lcom/scand/svg/parser/SVGParser;

    iget-object v13, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    iget-object v11, v6, Lcom/scand/svg/parser/TextSpan;->text:Ljava/lang/String;

    move-object/from16 v18, v11

    move/from16 v19, v9

    invoke-virtual/range {v12 .. v20}, Lcom/scand/svg/parser/SVGParser;->setFont(Lcom/scand/svg/parser/support/GraphicsSVG;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v9, v6, Lcom/scand/svg/parser/TextSpan;->text:Ljava/lang/String;

    if-nez v9, :cond_15

    goto/16 :goto_4

    :cond_15
    iget-object v11, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v11, v9}, Lcom/scand/svg/parser/support/GraphicsSVG;->stringWidth(Ljava/lang/String;)I

    move-result v9

    iget-object v11, v6, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v11, v11, Lcom/scand/svg/parser/TextProperties;->dx:Ljava/lang/Float;

    if-nez v11, :cond_16

    const/4 v11, 0x0

    goto :goto_9

    :cond_16
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    :goto_9
    const-string v12, "middle"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    div-int/lit8 v10, v9, 0x2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    goto :goto_a

    :cond_17
    const-string v12, "end"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    move v10, v9

    const/4 v11, 0x0

    goto :goto_a

    :cond_18
    const/4 v10, 0x0

    :goto_a
    add-float/2addr v11, v4

    int-to-float v10, v10

    sub-float/2addr v11, v10

    iget-object v10, v6, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    iget-object v10, v10, Lcom/scand/svg/parser/TextProperties;->dy:Ljava/lang/Float;

    if-nez v10, :cond_19

    const/4 v10, 0x0

    goto :goto_b

    :cond_19
    invoke-virtual {v10}, Ljava/lang/Float;->byteValue()B

    move-result v10

    :goto_b
    int-to-float v10, v10

    add-float/2addr v10, v5

    iget-object v12, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    iget-object v6, v6, Lcom/scand/svg/parser/TextSpan;->text:Ljava/lang/String;

    invoke-virtual {v12, v6, v11, v10}, Lcom/scand/svg/parser/support/GraphicsSVG;->drawString(Ljava/lang/String;FF)V

    int-to-float v6, v9

    goto :goto_8

    :cond_1a
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    goto/16 :goto_f

    :cond_1b
    const-string v2, "linearGradient"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-boolean v0, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gradient:Lcom/scand/svg/parser/Gradient;

    iget-object v2, v0, Lcom/scand/svg/parser/Gradient;->id:Ljava/lang/String;

    if-eqz v2, :cond_2e

    :goto_c
    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->gradient:Lcom/scand/svg/parser/Gradient;

    iget-object v3, v2, Lcom/scand/svg/parser/Gradient;->id:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_1d
    const-string v2, "radialGradient"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-boolean v0, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gradient:Lcom/scand/svg/parser/Gradient;

    iget-object v2, v0, Lcom/scand/svg/parser/Gradient;->id:Ljava/lang/String;

    if-eqz v2, :cond_2e

    goto :goto_c

    :cond_1f
    const-string v2, "title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "desc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "metadata"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto/16 :goto_10

    :cond_20
    const-string v2, "style"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iput-boolean v8, v1, Lcom/scand/svg/parser/SVGHandler;->runStyle:Z

    :try_start_0
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->cssParser:Lcom/scand/svg/css/CSSParser;

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->style:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/scand/svg/css/CSSParser;->readStylesheet(Ljava/io/Reader;)Lcom/scand/svg/css/CSSStylesheet;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->stylesheets:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_e

    :cond_21
    :goto_d
    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->cascadeEngine:Lcom/scand/svg/css/CascadeEngine;

    invoke-virtual {v2, v0, v7}, Lcom/scand/svg/css/CascadeEngine;->add(Lcom/scand/svg/css/CSSStylesheet;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_13

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_13

    :cond_22
    const-string v2, "pattern"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iput-boolean v8, v1, Lcom/scand/svg/parser/SVGHandler;->patternDefinition:Z

    goto/16 :goto_13

    :cond_23
    const-string v2, "g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-boolean v0, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v0, :cond_24

    return-void

    :cond_24
    iget-boolean v0, v1, Lcom/scand/svg/parser/SVGHandler;->boundsMode:Z

    if-eqz v0, :cond_25

    iput-boolean v8, v1, Lcom/scand/svg/parser/SVGHandler;->boundsMode:Z

    :cond_25
    iget-boolean v0, v1, Lcom/scand/svg/parser/SVGHandler;->hidden:Z

    if-eqz v0, :cond_26

    iget v0, v1, Lcom/scand/svg/parser/SVGHandler;->hiddenLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/scand/svg/parser/SVGHandler;->hiddenLevel:I

    if-nez v0, :cond_26

    iput-boolean v8, v1, Lcom/scand/svg/parser/SVGHandler;->hidden:Z

    :cond_26
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->ctxs:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->popTransform()V

    goto/16 :goto_13

    :cond_27
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->curFilter:Lcom/scand/svg/parser/Filter;

    invoke-virtual {v0}, Lcom/scand/svg/parser/Filter;->optimize()V

    iput-object v7, v1, Lcom/scand/svg/parser/SVGHandler;->curFilter:Lcom/scand/svg/parser/Filter;

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->feStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    goto/16 :goto_13

    :cond_28
    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->feStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->feStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scand/svg/parser/FilterOp;

    iget-object v2, v2, Lcom/scand/svg/parser/FilterOp;->filterOp:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->feStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_13

    :cond_29
    invoke-static {v0}, Lcom/scand/svg/parser/Filter;->isFilterOp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "wrong close tag for "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SVGKit"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_2a
    :goto_10
    iput-boolean v8, v1, Lcom/scand/svg/parser/SVGHandler;->metaData:Z

    goto :goto_13

    :cond_2b
    :goto_11
    iget-boolean v0, v1, Lcom/scand/svg/parser/SVGHandler;->recursion:Z

    if-nez v0, :cond_2c

    iput-boolean v8, v1, Lcom/scand/svg/parser/SVGHandler;->defs:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->sbx:Ljava/lang/StringBuffer;

    :cond_2c
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scand/svg/parser/Gradient;

    iget-object v3, v2, Lcom/scand/svg/parser/Gradient;->xlink:Ljava/lang/String;

    if-eqz v3, :cond_2d

    iget-object v4, v1, Lcom/scand/svg/parser/SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scand/svg/parser/Gradient;

    if-eqz v3, :cond_2d

    invoke-virtual {v3, v2}, Lcom/scand/svg/parser/Gradient;->createChild(Lcom/scand/svg/parser/Gradient;)Lcom/scand/svg/parser/Gradient;

    move-result-object v2

    :cond_2d
    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/scand/svg/parser/Gradient;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gradientRefMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/scand/svg/parser/Gradient;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2e
    :goto_13
    return-void
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/SVGHandler;->picture:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setIdleMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    return-void
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v2, p3

    :goto_1
    if-nez v0, :cond_2

    new-instance v3, Lcom/scand/svg/css/util/SMapImpl;

    invoke-direct {v3}, Lcom/scand/svg/css/util/SMapImpl;-><init>()V

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/scand/svg/css/util/SMapAttributesAdapter;

    invoke-direct {v3, v0}, Lcom/scand/svg/css/util/SMapAttributesAdapter;-><init>(Lorg/xml/sax/Attributes;)V

    :goto_2
    iget-object v4, v1, Lcom/scand/svg/parser/SVGHandler;->cascadeEngine:Lcom/scand/svg/css/CascadeEngine;

    invoke-static {}, Lcom/scand/svg/parser/SVGHandler;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lcom/scand/svg/css/CascadeEngine;->pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)V

    const-string v3, "style"

    invoke-interface {v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, v1, Lcom/scand/svg/parser/SVGHandler;->cssParser:Lcom/scand/svg/css/CSSParser;

    invoke-virtual {v5, v4}, Lcom/scand/svg/css/CSSParser;->readInlineStyle(Ljava/lang/String;)Lcom/scand/svg/css/InlineRule;

    move-result-object v4

    iget-object v5, v1, Lcom/scand/svg/parser/SVGHandler;->cascadeEngine:Lcom/scand/svg/css/CascadeEngine;

    invoke-virtual {v5, v4}, Lcom/scand/svg/css/CascadeEngine;->applyInlineRule(Lcom/scand/svg/css/InlineRule;)V

    :cond_3
    iget-object v4, v1, Lcom/scand/svg/parser/SVGHandler;->cascadeEngine:Lcom/scand/svg/css/CascadeEngine;

    invoke-virtual {v4}, Lcom/scand/svg/css/CascadeEngine;->getCascadeResult()Lcom/scand/svg/css/CascadeResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scand/svg/css/CascadeResult;->getProperties()Lcom/scand/svg/css/ElementProperties;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scand/svg/css/ElementProperties;->getPropertySet()Lcom/scand/svg/css/InlineRule;

    move-result-object v4

    iget-boolean v5, v1, Lcom/scand/svg/parser/SVGHandler;->hidden:Z

    iget-boolean v6, v1, Lcom/scand/svg/parser/SVGHandler;->patternDefinition:Z

    or-int/2addr v5, v6

    iget-boolean v6, v1, Lcom/scand/svg/parser/SVGHandler;->metaData:Z

    or-int/2addr v5, v6

    iget-boolean v6, v1, Lcom/scand/svg/parser/SVGHandler;->defs:Z

    or-int/2addr v5, v6

    const-string v6, "id"

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "symbol"

    const-string v8, "filter"

    const-string v9, "g"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v6, :cond_8

    iget-boolean v13, v1, Lcom/scand/svg/parser/SVGHandler;->recursion:Z

    if-nez v13, :cond_8

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "clipPath"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v13, Lcom/scand/svg/parser/Filter;

    invoke-direct {v13}, Lcom/scand/svg/parser/Filter;-><init>()V

    iput-object v13, v1, Lcom/scand/svg/parser/SVGHandler;->curFilter:Lcom/scand/svg/parser/Filter;

    iget-object v14, v1, Lcom/scand/svg/parser/SVGHandler;->filters:Ljava/util/HashMap;

    invoke-virtual {v14, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v1, Lcom/scand/svg/parser/SVGHandler;->feStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/AbstractCollection;->clear()V

    iget-object v13, v1, Lcom/scand/svg/parser/SVGHandler;->curFilter:Lcom/scand/svg/parser/Filter;

    iput-object v6, v13, Lcom/scand/svg/parser/Filter;->id:Ljava/lang/String;

    goto :goto_5

    :cond_5
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v13, v1, Lcom/scand/svg/parser/SVGHandler;->sbx:Ljava/lang/StringBuffer;

    iget-object v14, v1, Lcom/scand/svg/parser/SVGHandler;->defx:Ljava/util/HashMap;

    invoke-virtual {v14, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v1, Lcom/scand/svg/parser/SVGHandler;->sbx:Ljava/lang/StringBuffer;

    const-string v14, "<g>\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_6
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {v1, v13, v12, v2, v0}, Lcom/scand/svg/parser/SVGHandler;->dumpTag(Ljava/lang/StringBuffer;ZLjava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-direct {v1, v13, v11, v2, v10}, Lcom/scand/svg/parser/SVGHandler;->dumpTag(Ljava/lang/StringBuffer;ZLjava/lang/String;Lorg/xml/sax/Attributes;)V

    :goto_3
    iget-object v14, v1, Lcom/scand/svg/parser/SVGHandler;->defx:Ljava/util/HashMap;

    invoke-virtual {v14, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    :goto_4
    iget-boolean v13, v1, Lcom/scand/svg/parser/SVGHandler;->defs:Z

    if-eqz v13, :cond_8

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v13, v1, Lcom/scand/svg/parser/SVGHandler;->sbx:Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    :goto_5
    iget-boolean v13, v1, Lcom/scand/svg/parser/SVGHandler;->recursion:Z

    if-nez v13, :cond_9

    iget-boolean v13, v1, Lcom/scand/svg/parser/SVGHandler;->defs:Z

    if-eqz v13, :cond_9

    iget-object v13, v1, Lcom/scand/svg/parser/SVGHandler;->sbx:Ljava/lang/StringBuffer;

    invoke-direct {v1, v13, v12, v2, v0}, Lcom/scand/svg/parser/SVGHandler;->dumpTag(Ljava/lang/StringBuffer;ZLjava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_9
    new-instance v13, Lcom/scand/svg/parser/Properties;

    invoke-direct {v13, v0, v4}, Lcom/scand/svg/parser/Properties;-><init>(Lorg/xml/sax/Attributes;Lcom/scand/svg/css/InlineRule;)V

    iget-boolean v4, v1, Lcom/scand/svg/parser/SVGHandler;->boundsMode:Z

    const-string v14, "y"

    const-string v15, "x"

    const-string v10, "rect"

    const/16 v16, 0x0

    if-eqz v4, :cond_d

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v13, v15}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_a
    invoke-virtual {v13, v14}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_b
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {v13, v4, v3}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "height"

    invoke-virtual {v13, v5, v4}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v0

    invoke-direct {v5, v6, v7, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, v1, Lcom/scand/svg/parser/SVGHandler;->bounds:Landroid/graphics/RectF;

    :cond_c
    return-void

    :cond_d
    const-string v4, "svg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget v0, v1, Lcom/scand/svg/parser/SVGHandler;->svgNesting:I

    add-int/2addr v0, v12

    iput v0, v1, Lcom/scand/svg/parser/SVGHandler;->svgNesting:I

    if-le v0, v12, :cond_e

    return-void

    :cond_e
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->pushTransform(Lcom/scand/svg/parser/Properties;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v0

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v1, v13, v0, v2}, Lcom/scand/svg/parser/SVGHandler;->getContext(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;)Lcom/scand/svg/parser/PaintData;

    move-result-object v0

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->ctxs:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->g:Lcom/scand/svg/parser/support/GraphicsSVG;

    const/16 v2, 0x10

    if-nez v0, :cond_10

    invoke-direct {v1, v13, v12}, Lcom/scand/svg/parser/SVGHandler;->parseSize(Lcom/scand/svg/parser/Properties;Z)Landroid/graphics/Matrix;

    move-result-object v0

    iget-boolean v3, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-nez v3, :cond_4b

    iget v3, v1, Lcom/scand/svg/parser/SVGHandler;->width:F

    float-to-int v3, v3

    iget v4, v1, Lcom/scand/svg/parser/SVGHandler;->height:F

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->picture:Landroid/graphics/Bitmap;

    new-instance v4, Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-direct {v4, v3}, Lcom/scand/svg/parser/support/GraphicsSVG;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    iget v3, v1, Lcom/scand/svg/parser/SVGHandler;->width:F

    float-to-int v3, v3

    iget v5, v1, Lcom/scand/svg/parser/SVGHandler;->height:F

    float-to-int v5, v5

    invoke-virtual {v4, v11, v11, v3, v5}, Lcom/scand/svg/parser/support/GraphicsSVG;->fillRect(IIII)V

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v11, v2, v4}, Lcom/scand/svg/parser/support/GraphicsSVG;->setFont([Ljava/lang/String;IILcom/scand/svg/parser/ExternalSupport;)V

    if-eqz v0, :cond_4b

    :cond_f
    :goto_6
    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v2, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->setTransform(Landroid/graphics/Matrix;)V

    goto/16 :goto_10

    :cond_10
    invoke-direct {v1, v13, v11}, Lcom/scand/svg/parser/SVGHandler;->parseSize(Lcom/scand/svg/parser/Properties;Z)Landroid/graphics/Matrix;

    move-result-object v0

    iget-boolean v3, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-nez v3, :cond_4b

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->g:Lcom/scand/svg/parser/support/GraphicsSVG;

    iput-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    iget v4, v1, Lcom/scand/svg/parser/SVGHandler;->width:F

    float-to-int v4, v4

    iget v5, v1, Lcom/scand/svg/parser/SVGHandler;->height:F

    float-to-int v5, v5

    invoke-virtual {v3, v11, v11, v4, v5}, Lcom/scand/svg/parser/support/GraphicsSVG;->fillRect(IIII)V

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v11, v2, v4}, Lcom/scand/svg/parser/support/GraphicsSVG;->setFont([Ljava/lang/String;IILcom/scand/svg/parser/ExternalSupport;)V

    if-nez v0, :cond_f

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto :goto_6

    :cond_11
    if-nez v5, :cond_12

    const-string v4, "tspan"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->currentText:Lcom/scand/svg/parser/Text;

    if-eqz v0, :cond_4b

    new-instance v2, Lcom/scand/svg/parser/TextProperties;

    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v3

    invoke-direct {v2, v13, v3}, Lcom/scand/svg/parser/TextProperties;-><init>(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;)V

    invoke-virtual {v0, v2}, Lcom/scand/svg/parser/Text;->addSpan(Lcom/scand/svg/parser/TextProperties;)V

    goto/16 :goto_10

    :cond_12
    if-nez v5, :cond_13

    const-string v4, "text"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->pushTransform(Lcom/scand/svg/parser/Properties;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/scand/svg/parser/Text;

    new-instance v2, Lcom/scand/svg/parser/TextProperties;

    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v3

    invoke-direct {v2, v13, v3}, Lcom/scand/svg/parser/TextProperties;-><init>(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;)V

    invoke-direct {v0, v2}, Lcom/scand/svg/parser/Text;-><init>(Lcom/scand/svg/parser/TextProperties;)V

    iput-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->currentText:Lcom/scand/svg/parser/Text;

    goto/16 :goto_10

    :cond_13
    const-string v4, "use"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v2, "xlink:href"

    invoke-interface {v0, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-virtual {v13, v2}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    if-nez v0, :cond_15

    const-string v0, "href"

    invoke-virtual {v13, v0}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_15
    if-nez v0, :cond_16

    const-string v0, "src"

    invoke-virtual {v13, v0}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    if-nez v0, :cond_17

    const-string v0, ""

    :cond_17
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-boolean v2, v1, Lcom/scand/svg/parser/SVGHandler;->recursion:Z

    if-nez v2, :cond_4b

    iget-boolean v2, v1, Lcom/scand/svg/parser/SVGHandler;->defs:Z

    if-nez v2, :cond_4b

    iget-boolean v2, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-nez v2, :cond_4b

    iput-boolean v12, v1, Lcom/scand/svg/parser/SVGHandler;->recursion:Z

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->defx:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1a

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->pushTransform(Lcom/scand/svg/parser/Properties;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v2

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v1, v13, v2, v3}, Lcom/scand/svg/parser/SVGHandler;->getContext(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;)Lcom/scand/svg/parser/PaintData;

    move-result-object v2

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->ctxs:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v15}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_18

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_18
    invoke-virtual {v13, v14}, Lcom/scand/svg/parser/Properties;->getFloatAttr(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    if-nez v3, :cond_19

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_19
    iget-object v4, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/scand/svg/parser/support/GraphicsSVG;->postTranslate(II)V

    :try_start_0
    new-instance v4, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const-string v5, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, v5, v11}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/scand/svg/parser/support/GraphicsSVG;->postTranslate(II)V

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->ctxs:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->popTransform()V

    :cond_1a
    iput-boolean v11, v1, Lcom/scand/svg/parser/SVGHandler;->recursion:Z

    goto/16 :goto_10

    :cond_1b
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :goto_8
    iput-boolean v12, v1, Lcom/scand/svg/parser/SVGHandler;->defs:Z

    goto/16 :goto_10

    :cond_1c
    const-string v0, "defs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_8

    :cond_1d
    const-string v0, "linearGradient"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {v1, v12, v13}, Lcom/scand/svg/parser/SVGHandler;->registerGradient(ZLcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/Gradient;

    move-result-object v0

    :goto_9
    iput-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gradient:Lcom/scand/svg/parser/Gradient;

    goto/16 :goto_10

    :cond_1e
    const-string v0, "radialGradient"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {v1, v11, v13}, Lcom/scand/svg/parser/SVGHandler;->registerGradient(ZLcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/Gradient;

    move-result-object v0

    goto :goto_9

    :cond_1f
    const-string v0, "stop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v4, -0x1000000

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gradient:Lcom/scand/svg/parser/Gradient;

    if-eqz v0, :cond_4b

    const-string v0, "offset"

    invoke-virtual {v13, v0}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "stop-color"

    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/scand/svg/parser/Properties;->getColor(Ljava/lang/String;Lcom/scand/svg/parser/PaintData;)Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object v2

    if-nez v2, :cond_20

    new-instance v2, Lcom/scand/svg/parser/support/ColorSVG;

    invoke-direct {v2, v11}, Lcom/scand/svg/parser/support/ColorSVG;-><init>(I)V

    iput v4, v2, Lcom/scand/svg/parser/support/ColorSVG;->mValue:I

    :cond_20
    if-eqz v0, :cond_21

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gradient:Lcom/scand/svg/parser/Gradient;

    iget-object v3, v3, Lcom/scand/svg/parser/Gradient;->positions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gradient:Lcom/scand/svg/parser/Gradient;

    iget-object v0, v0, Lcom/scand/svg/parser/Gradient;->colors:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_22
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "display"

    const-string v9, "none"

    if-eqz v0, :cond_27

    const-string v0, "bounds"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    iput-boolean v12, v1, Lcom/scand/svg/parser/SVGHandler;->boundsMode:Z

    :cond_23
    iget-boolean v0, v1, Lcom/scand/svg/parser/SVGHandler;->hidden:Z

    if-eqz v0, :cond_24

    iget v0, v1, Lcom/scand/svg/parser/SVGHandler;->hiddenLevel:I

    add-int/2addr v0, v12

    iput v0, v1, Lcom/scand/svg/parser/SVGHandler;->hiddenLevel:I

    :cond_24
    invoke-virtual {v13, v7}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "visibility"

    invoke-virtual {v13, v0}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "hidden"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_25
    iget-boolean v0, v1, Lcom/scand/svg/parser/SVGHandler;->hidden:Z

    if-nez v0, :cond_26

    iput-boolean v12, v1, Lcom/scand/svg/parser/SVGHandler;->hidden:Z

    iput v12, v1, Lcom/scand/svg/parser/SVGHandler;->hiddenLevel:I

    :cond_26
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->pushTransform(Lcom/scand/svg/parser/Properties;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v0

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v1, v13, v0, v2}, Lcom/scand/svg/parser/SVGHandler;->getContext(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;)Lcom/scand/svg/parser/PaintData;

    move-result-object v0

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->ctxs:Ljava/util/Stack;

    :goto_a
    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    :cond_27
    if-nez v5, :cond_2b

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {v1, v13, v11}, Lcom/scand/svg/parser/SVGHandler;->parseRect(Lcom/scand/svg/parser/Properties;Z)Lcom/scand/svg/parser/support/RectangleSVG;

    move-result-object v0

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->pushTransform(Lcom/scand/svg/parser/Properties;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v0}, Lcom/scand/svg/parser/SVGHandler;->updateLimits(Landroid/graphics/RectF;)V

    iget-boolean v2, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v2, :cond_28

    return-void

    :cond_28
    if-eqz v0, :cond_29

    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v2

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v1, v13, v2, v3, v0}, Lcom/scand/svg/parser/SVGHandler;->setFill(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v2, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->fill(Lcom/scand/svg/parser/support/GraphElement;)V

    :cond_29
    invoke-direct {v1, v13, v12}, Lcom/scand/svg/parser/SVGHandler;->parseRect(Lcom/scand/svg/parser/Properties;Z)Lcom/scand/svg/parser/support/RectangleSVG;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v2

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v1, v13, v2, v3, v0}, Lcom/scand/svg/parser/SVGHandler;->setStroke(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;Landroid/graphics/RectF;)Lcom/scand/svg/parser/support/BasicStroke;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v2, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->draw(Lcom/scand/svg/parser/support/GraphElement;)V

    :cond_2a
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->popTransform()V

    goto/16 :goto_10

    :cond_2b
    if-nez v5, :cond_2e

    const-string v0, "line"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->parseLine(Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/LineSVG;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v2, v0, Lcom/scand/svg/parser/support/LineSVG;->bounds:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Lcom/scand/svg/parser/SVGHandler;->updateLimits(Landroid/graphics/RectF;)V

    iget-boolean v2, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v2, :cond_2c

    return-void

    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v2

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/scand/svg/parser/support/LineSVG;->bounds:Landroid/graphics/RectF;

    invoke-direct {v1, v13, v2, v3, v4}, Lcom/scand/svg/parser/SVGHandler;->setStroke(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;Landroid/graphics/RectF;)Lcom/scand/svg/parser/support/BasicStroke;

    move-result-object v2

    if-eqz v2, :cond_2d

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->pushTransform(Lcom/scand/svg/parser/Properties;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v2, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->draw(Lcom/scand/svg/parser/support/GraphElement;)V

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->popTransform()V

    :cond_2d
    return-void

    :cond_2e
    if-nez v5, :cond_32

    const-string v0, "circle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->parseCircle(Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/EllipseSVG;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->pushTransform(Lcom/scand/svg/parser/Properties;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/scand/svg/parser/support/EllipseSVG;->bounds:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Lcom/scand/svg/parser/SVGHandler;->updateLimits(Landroid/graphics/RectF;)V

    iget-boolean v2, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v2, :cond_2f

    return-void

    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v2

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/scand/svg/parser/support/EllipseSVG;->ellipse:Landroid/graphics/RectF;

    invoke-direct {v1, v13, v2, v3, v4}, Lcom/scand/svg/parser/SVGHandler;->setFill(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v2, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->fill(Lcom/scand/svg/parser/support/GraphElement;)V

    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v2

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/scand/svg/parser/support/EllipseSVG;->bounds:Landroid/graphics/RectF;

    invoke-direct {v1, v13, v2, v3, v4}, Lcom/scand/svg/parser/SVGHandler;->setStroke(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;Landroid/graphics/RectF;)Lcom/scand/svg/parser/support/BasicStroke;

    move-result-object v2

    if-eqz v2, :cond_31

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v2, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->draw(Lcom/scand/svg/parser/support/GraphElement;)V

    :cond_31
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    goto/16 :goto_b

    :cond_32
    if-nez v5, :cond_36

    const-string v0, "ellipse"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->parseEllipse(Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/EllipseSVG;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->pushTransform(Lcom/scand/svg/parser/Properties;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/scand/svg/parser/support/EllipseSVG;->bounds:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Lcom/scand/svg/parser/SVGHandler;->updateLimits(Landroid/graphics/RectF;)V

    iget-boolean v2, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v2, :cond_33

    return-void

    :cond_33
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v2

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/scand/svg/parser/support/EllipseSVG;->ellipse:Landroid/graphics/RectF;

    invoke-direct {v1, v13, v2, v3, v4}, Lcom/scand/svg/parser/SVGHandler;->setFill(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v2, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->fill(Lcom/scand/svg/parser/support/GraphElement;)V

    :cond_34
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v2

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/scand/svg/parser/support/EllipseSVG;->bounds:Landroid/graphics/RectF;

    invoke-direct {v1, v13, v2, v3, v4}, Lcom/scand/svg/parser/SVGHandler;->setStroke(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;Landroid/graphics/RectF;)Lcom/scand/svg/parser/support/BasicStroke;

    move-result-object v2

    if-eqz v2, :cond_35

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v2, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->draw(Lcom/scand/svg/parser/support/GraphElement;)V

    :cond_35
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    goto/16 :goto_b

    :cond_36
    if-nez v5, :cond_3b

    const-string v0, "polygon"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    const-string v6, "polyline"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    :cond_37
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {v1, v13, v0}, Lcom/scand/svg/parser/SVGHandler;->parsePolygon(Lcom/scand/svg/parser/Properties;Z)Lcom/scand/svg/parser/support/PathExt;

    move-result-object v0

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->pushTransform(Lcom/scand/svg/parser/Properties;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_4b

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v2, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-direct {v1, v2}, Lcom/scand/svg/parser/SVGHandler;->updateLimits(Landroid/graphics/RectF;)V

    iget-boolean v3, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v3, :cond_38

    return-void

    :cond_38
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v3

    iget-object v4, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v1, v13, v3, v4, v2}, Lcom/scand/svg/parser/SVGHandler;->setFill(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v3, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->fill(Lcom/scand/svg/parser/support/GraphElement;)V

    :cond_39
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v3

    iget-object v4, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v1, v13, v3, v4, v2}, Lcom/scand/svg/parser/SVGHandler;->setStroke(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;Landroid/graphics/RectF;)Lcom/scand/svg/parser/support/BasicStroke;

    move-result-object v2

    if-eqz v2, :cond_3a

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v2, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->draw(Lcom/scand/svg/parser/support/GraphElement;)V

    :cond_3a
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    goto/16 :goto_b

    :cond_3b
    if-nez v5, :cond_3f

    const-string v0, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "d"

    invoke-virtual {v13, v0}, Lcom/scand/svg/parser/Properties;->getStringAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scand/svg/parser/PathSvg;->parsePath(Ljava/lang/String;)Lcom/scand/svg/parser/support/PathExt;

    move-result-object v0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v2, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-direct {v1, v2}, Lcom/scand/svg/parser/SVGHandler;->updateLimits(Landroid/graphics/RectF;)V

    iget-boolean v3, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v3, :cond_3c

    return-void

    :cond_3c
    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->pushTransform(Lcom/scand/svg/parser/Properties;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v3

    iget-object v4, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v1, v13, v3, v4, v2}, Lcom/scand/svg/parser/SVGHandler;->setFill(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v3, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->fill(Lcom/scand/svg/parser/support/GraphElement;)V

    :cond_3d
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v3

    iget-object v4, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    invoke-direct {v1, v13, v3, v4, v2}, Lcom/scand/svg/parser/SVGHandler;->setStroke(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;Landroid/graphics/RectF;)Lcom/scand/svg/parser/support/BasicStroke;

    move-result-object v2

    if-eqz v2, :cond_3e

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v2, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->draw(Lcom/scand/svg/parser/support/GraphElement;)V

    :cond_3e
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    goto/16 :goto_b

    :cond_3f
    if-nez v5, :cond_43

    const-string v0, "image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->parseImage(Lcom/scand/svg/parser/Properties;)Lcom/scand/svg/parser/support/ImageRefSVG;

    move-result-object v0

    iget-object v2, v0, Lcom/scand/svg/parser/support/ImageRefSVG;->bounds:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Lcom/scand/svg/parser/SVGHandler;->updateLimits(Landroid/graphics/RectF;)V

    iget-boolean v2, v1, Lcom/scand/svg/parser/SVGHandler;->idleMode:Z

    if-eqz v2, :cond_40

    return-void

    :cond_40
    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-direct {v1, v13}, Lcom/scand/svg/parser/SVGHandler;->pushTransform(Lcom/scand/svg/parser/Properties;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v7}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_c

    :cond_41
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/parser/SVGHandler;->parentContext()Lcom/scand/svg/parser/PaintData;

    move-result-object v2

    iget-object v3, v1, Lcom/scand/svg/parser/SVGHandler;->gradientMap:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/scand/svg/parser/support/ImageRefSVG;->bounds:Landroid/graphics/RectF;

    invoke-direct {v1, v13, v2, v3, v5}, Lcom/scand/svg/parser/SVGHandler;->setStroke(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;Ljava/util/HashMap;Landroid/graphics/RectF;)Lcom/scand/svg/parser/support/BasicStroke;

    move-result-object v2

    if-nez v2, :cond_42

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v2, v4}, Lcom/scand/svg/parser/support/GraphicsSVG;->setStrokeColor(I)V

    :cond_42
    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->canvas:Lcom/scand/svg/parser/support/GraphicsSVG;

    invoke-virtual {v2, v0}, Lcom/scand/svg/parser/support/GraphicsSVG;->draw(Lcom/scand/svg/parser/support/GraphElement;)V

    :goto_c
    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->gpushed:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    goto/16 :goto_b

    :cond_43
    const-string v0, "title"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "desc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "metadata"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_f

    :cond_44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iput-boolean v12, v1, Lcom/scand/svg/parser/SVGHandler;->runStyle:Z

    goto/16 :goto_10

    :cond_45
    if-nez v5, :cond_46

    const-string v0, "pattern"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iput-boolean v12, v1, Lcom/scand/svg/parser/SVGHandler;->patternDefinition:Z

    goto :goto_10

    :cond_46
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, v1, Lcom/scand/svg/parser/SVGHandler;->curFilter:Lcom/scand/svg/parser/Filter;

    if-eqz v0, :cond_4b

    const-string v2, "filterUnits"

    invoke-virtual {v13, v2}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/scand/svg/parser/Filter;->filterUnits:Ljava/lang/String;

    goto :goto_10

    :cond_47
    invoke-static {v2}, Lcom/scand/svg/parser/Filter;->isFilterOp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance v0, Lcom/scand/svg/parser/FilterOp;

    invoke-direct {v0, v2}, Lcom/scand/svg/parser/FilterOp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lcom/scand/svg/parser/FilterOp;->parseFrom(Lcom/scand/svg/parser/Properties;)V

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->feStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_48

    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->feStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scand/svg/parser/FilterOp;

    iget-object v2, v2, Lcom/scand/svg/parser/FilterOp;->op:Ljava/util/ArrayList;

    :goto_d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_48
    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->curFilter:Lcom/scand/svg/parser/Filter;

    iget-object v2, v2, Lcom/scand/svg/parser/Filter;->op:Ljava/util/ArrayList;

    goto :goto_d

    :goto_e
    iget-object v2, v1, Lcom/scand/svg/parser/SVGHandler;->feStack:Ljava/util/Stack;

    goto/16 :goto_a

    :cond_49
    if-nez v5, :cond_4b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "unknown command: \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SVGKit"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_4a
    :goto_f
    iput-boolean v12, v1, Lcom/scand/svg/parser/SVGHandler;->metaData:Z

    :cond_4b
    :goto_10
    return-void
.end method

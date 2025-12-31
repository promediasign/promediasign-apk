.class public Lcom/scand/svg/parser/TextProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dx:Ljava/lang/Float;

.field public dy:Ljava/lang/Float;

.field extUrl:Ljava/lang/String;

.field public fillColor:Lcom/scand/svg/parser/support/ColorSVG;

.field fontName:Ljava/lang/String;

.field fontSize:Ljava/lang/Float;

.field fontStyle:Ljava/lang/String;

.field fontWeight:Ljava/lang/String;

.field public strokeColor:Lcom/scand/svg/parser/support/ColorSVG;

.field public strokeWidth:Ljava/lang/Float;

.field textAnchor:Ljava/lang/String;

.field public x:Ljava/lang/Float;

.field public y:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/scand/svg/parser/TextProperties;->dx:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/scand/svg/parser/TextProperties;->dy:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lcom/scand/svg/parser/Properties;Lcom/scand/svg/parser/PaintData;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/scand/svg/parser/TextProperties;->dx:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/scand/svg/parser/TextProperties;->dy:Ljava/lang/Float;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/scand/svg/parser/TextProperties;->x:Ljava/lang/Float;

    const-string v0, "y"

    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/scand/svg/parser/TextProperties;->y:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    const-string v2, "dx"

    invoke-virtual {p1, v2, v0}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/scand/svg/parser/TextProperties;->dx:Ljava/lang/Float;

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    const-string v2, "dy"

    invoke-virtual {p1, v2, v0}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/scand/svg/parser/TextProperties;->dy:Ljava/lang/Float;

    const-string v0, "fill"

    invoke-virtual {p1, v0, p2}, Lcom/scand/svg/parser/Properties;->getColor(Ljava/lang/String;Lcom/scand/svg/parser/PaintData;)Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object v0

    iput-object v0, p0, Lcom/scand/svg/parser/TextProperties;->fillColor:Lcom/scand/svg/parser/support/ColorSVG;

    const-string v0, "stroke"

    invoke-virtual {p1, v0, p2}, Lcom/scand/svg/parser/Properties;->getColor(Ljava/lang/String;Lcom/scand/svg/parser/PaintData;)Lcom/scand/svg/parser/support/ColorSVG;

    move-result-object v0

    iput-object v0, p0, Lcom/scand/svg/parser/TextProperties;->strokeColor:Lcom/scand/svg/parser/support/ColorSVG;

    const-string v0, "stroke-width"

    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/scand/svg/parser/TextProperties;->strokeWidth:Ljava/lang/Float;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scand/svg/parser/TextProperties;->strokeColor:Lcom/scand/svg/parser/support/ColorSVG;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Float;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lcom/scand/svg/parser/TextProperties;->strokeWidth:Ljava/lang/Float;

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/parser/TextProperties;->strokeColor:Lcom/scand/svg/parser/support/ColorSVG;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/scand/svg/parser/TextProperties;->strokeWidth:Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/scand/svg/parser/TextProperties;->fillColor:Lcom/scand/svg/parser/support/ColorSVG;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/scand/svg/parser/TextProperties;->strokeColor:Lcom/scand/svg/parser/support/ColorSVG;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/scand/svg/parser/TextProperties;->strokeColor:Lcom/scand/svg/parser/support/ColorSVG;

    const/high16 v1, -0x1000000

    iput v1, v0, Lcom/scand/svg/parser/support/ColorSVG;->mValue:I

    :cond_2
    :goto_0
    const-string v0, "font-family"

    invoke-virtual {p1, v0}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scand/svg/parser/TextProperties;->fontName:Ljava/lang/String;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/scand/svg/parser/PaintData;->fontSize:Ljava/lang/Float;

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    const-string v0, "font-size"

    invoke-virtual {p1, v0, p2}, Lcom/scand/svg/parser/Properties;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/scand/svg/parser/TextProperties;->fontSize:Ljava/lang/Float;

    const-string p2, "font-weight"

    invoke-virtual {p1, p2}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/scand/svg/parser/TextProperties;->fontWeight:Ljava/lang/String;

    const-string p2, "font-style"

    invoke-virtual {p1, p2}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/scand/svg/parser/TextProperties;->fontStyle:Ljava/lang/String;

    const-string p2, "text-anchor"

    invoke-virtual {p1, p2}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/scand/svg/parser/TextProperties;->textAnchor:Ljava/lang/String;

    const-string p2, "src"

    invoke-virtual {p1, p2}, Lcom/scand/svg/parser/Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scand/svg/parser/TextProperties;->extUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cloneStyle()Lcom/scand/svg/parser/TextProperties;
    .locals 2

    new-instance v0, Lcom/scand/svg/parser/TextProperties;

    invoke-direct {v0}, Lcom/scand/svg/parser/TextProperties;-><init>()V

    iget-object v1, p0, Lcom/scand/svg/parser/TextProperties;->fillColor:Lcom/scand/svg/parser/support/ColorSVG;

    iput-object v1, v0, Lcom/scand/svg/parser/TextProperties;->fillColor:Lcom/scand/svg/parser/support/ColorSVG;

    iget-object v1, p0, Lcom/scand/svg/parser/TextProperties;->strokeColor:Lcom/scand/svg/parser/support/ColorSVG;

    iput-object v1, v0, Lcom/scand/svg/parser/TextProperties;->strokeColor:Lcom/scand/svg/parser/support/ColorSVG;

    iget-object v1, p0, Lcom/scand/svg/parser/TextProperties;->strokeWidth:Ljava/lang/Float;

    iput-object v1, v0, Lcom/scand/svg/parser/TextProperties;->strokeWidth:Ljava/lang/Float;

    iget-object v1, p0, Lcom/scand/svg/parser/TextProperties;->fontName:Ljava/lang/String;

    iput-object v1, v0, Lcom/scand/svg/parser/TextProperties;->fontName:Ljava/lang/String;

    iget-object v1, p0, Lcom/scand/svg/parser/TextProperties;->fontSize:Ljava/lang/Float;

    iput-object v1, v0, Lcom/scand/svg/parser/TextProperties;->fontSize:Ljava/lang/Float;

    iget-object v1, p0, Lcom/scand/svg/parser/TextProperties;->fontWeight:Ljava/lang/String;

    iput-object v1, v0, Lcom/scand/svg/parser/TextProperties;->fontWeight:Ljava/lang/String;

    iget-object v1, p0, Lcom/scand/svg/parser/TextProperties;->fontStyle:Ljava/lang/String;

    iput-object v1, v0, Lcom/scand/svg/parser/TextProperties;->fontStyle:Ljava/lang/String;

    iget-object v1, p0, Lcom/scand/svg/parser/TextProperties;->textAnchor:Ljava/lang/String;

    iput-object v1, v0, Lcom/scand/svg/parser/TextProperties;->textAnchor:Ljava/lang/String;

    return-object v0
.end method

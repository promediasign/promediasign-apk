.class Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$5;
.super Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getBulletFontColor()Ljava/awt/Color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<",
        "Ljava/awt/Color;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$5;->this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSrgbClr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->getVal()[B

    move-result-object p1

    new-instance v0, Ljava/awt/Color;

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    invoke-direct {v0, v1, v3, p1}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v2

    :cond_0
    return v1
.end method

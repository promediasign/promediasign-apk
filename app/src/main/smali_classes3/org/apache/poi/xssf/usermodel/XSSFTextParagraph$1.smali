.class Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$1;
.super Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getTextAlign()Lorg/apache/poi/xssf/usermodel/TextAlign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<",
        "Lorg/apache/poi/xssf/usermodel/TextAlign;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$1;->this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetAlgn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/TextAlign;->values()[Lorg/apache/poi/xssf/usermodel/TextAlign;

    move-result-object v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

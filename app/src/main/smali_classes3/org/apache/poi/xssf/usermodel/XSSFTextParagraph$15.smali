.class Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$15;
.super Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->isBullet()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$15;->this$0:Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;-><init>(I)V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z
    .locals 2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

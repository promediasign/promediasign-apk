.class public Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xssf/usermodel/XSSFTextRun;",
        ">;"
    }
.end annotation


# instance fields
.field private final _p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

.field private final _runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextRun;",
            ">;"
        }
    .end annotation
.end field

.field private final _shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    const-string p2, "*"

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v1, p1, v0

    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-direct {v3, v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    const-string v1, "\n"

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V

    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;->getT()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->fetch(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)Z

    move-result v0

    :cond_1
    return v0
.end method


# virtual methods
.method public addLineBreak()Lorg/apache/poi/xssf/usermodel/XSSFTextRun;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewBr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-static {v1, v2}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    .line 27
    .line 28
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "\n"

    .line 43
    .line 44
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFLineBreak;

    .line 48
    .line 49
    invoke-direct {v2, v1, p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFLineBreak;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    return-object v2
.end method

.method public addNewTextRun()Lorg/apache/poi/xssf/usermodel/XSSFTextRun;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    const-string v2, "en-US"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public addTabStop(D)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetTabLst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewTabLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStopList;->addNewTab()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextTabStop;->setPos(I)V

    return-void
.end method

.method public getBulletAutoNumberScheme()Lorg/apache/poi/xssf/usermodel/ListAutoNumber;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$18;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$18;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ARABIC_PLAIN:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    :goto_0
    return-object v0
.end method

.method public getBulletAutoNumberStart()I
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$17;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$17;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getBulletCharacter()Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$4;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$4;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBulletFont()Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$3;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$3;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBulletFontColor()Ljava/awt/Color;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$5;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$5;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Color;

    return-object v0
.end method

.method public getBulletFontSize()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$6;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$6;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getDefaultTabSize()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$10;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$10;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getIndent()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$7;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$7;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getLeftMargin()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$8;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$8;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getLvl()I

    move-result v0

    return v0
.end method

.method public getLineSpacing()D
    .locals 6

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$12;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$12;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->getLnSpcReduction()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    mul-double v0, v0, v4

    :cond_1
    return-wide v0
.end method

.method public getParentShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_shape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    return-object v0
.end method

.method public getRightMargin()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$9;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$9;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getSpaceAfter()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$14;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$14;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getSpaceBefore()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$13;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$13;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getTabStop(I)D
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$11;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$11;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;II)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextAlign()Lorg/apache/poi/xssf/usermodel/TextAlign;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$1;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$1;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/apache/poi/xssf/usermodel/TextAlign;->LEFT:Lorg/apache/poi/xssf/usermodel/TextAlign;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/TextAlign;

    :goto_0
    return-object v0
.end method

.method public getTextFontAlign()Lorg/apache/poi/xssf/usermodel/TextFontAlign;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$2;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$2;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/apache/poi/xssf/usermodel/TextFontAlign;->BASELINE:Lorg/apache/poi/xssf/usermodel/TextFontAlign;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/TextFontAlign;

    :goto_0
    return-object v0
.end method

.method public getTextRuns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextRun;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    return-object v0
.end method

.method public isBullet()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$15;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$15;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isBulletAutoNumber()Z
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$16;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph$16;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->fetchParagraphProperty(Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/ParagraphPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextRun;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setBullet(Lorg/apache/poi/xssf/usermodel/ListAutoNumber;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    const-string v1, "Arial"

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuNone()V

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuBlip()V

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuChar()V

    :cond_5
    return-void
.end method

.method public setBullet(Lorg/apache/poi/xssf/usermodel/ListAutoNumber;I)V
    .locals 3

    .line 2
    const/4 v0, 0x1

    if-lt p2, v0, :cond_6

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuAutoNum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;

    move-result-object v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAutonumberScheme$Enum;)V

    invoke-interface {v2, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextAutonumberBullet;->setStartAt(I)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    const-string p2, "Arial"

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuNone()V

    :cond_3
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuBlip()V

    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuChar()V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Start Number must be greater or equal that 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBullet(Z)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->isBullet()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_b

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuNone()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoBullet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuAutoNum()V

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuBlip()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuBlip()V

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuChar()V

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClr()V

    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClrTx()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuClrTx()V

    :cond_6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFont()V

    :cond_7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFontTx()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuFontTx()V

    :cond_8
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPct()V

    :cond_9
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPts()V

    :cond_a
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzTx()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzTx()V

    goto :goto_1

    :cond_b
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuNone()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuNone()V

    :cond_c
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object p1

    const-string v1, "Arial"

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    :cond_d
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuAutoNum()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object p1

    const-string v0, "\u2022"

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->setChar(Ljava/lang/String;)V

    :cond_e
    :goto_1
    return-void
.end method

.method public setBulletCharacter(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuChar()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuChar()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;

    move-result-object v0

    :goto_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharBullet;->setChar(Ljava/lang/String;)V

    return-void
.end method

.method public setBulletFont(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuFont()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    :goto_1
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    return-void
.end method

.method public setBulletFontColor(Ljava/awt/Color;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuClr()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSrgbClr()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v0

    :goto_2
    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    int-to-byte p1, p1

    const/4 v3, 0x3

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v1, v3, v4

    const/4 v1, 0x1

    aput-byte v2, v3, v1

    const/4 v1, 0x2

    aput-byte p1, v3, v1

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    return-void
.end method

.method public setBulletFontSize(D)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-ltz v3, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuSzPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;

    move-result-object v1

    :goto_1
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v2

    double-to-int p1, p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePercent;->setVal(I)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPts()V

    goto :goto_3

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPts()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getBuSzPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->addNewBuSzPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;

    move-result-object v1

    :goto_2
    neg-double p1, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v2

    double-to-int p1, p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBulletSizePoint;->setVal(I)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetBuSzPct()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetBuSzPct()V

    :cond_4
    :goto_3
    return-void
.end method

.method public setIndent(D)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetIndent()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetIndent()V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setIndent(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLeftMargin(D)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarL()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetMarL()V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setMarL(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLevel(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setLvl(I)V

    return-void
.end method

.method public setLineSpacing(D)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v2

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v3

    double-to-int p1, p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v2

    neg-double p1, p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v3

    double-to-int p1, p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    :goto_1
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setLnSpc(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    return-void
.end method

.method public setRightMargin(D)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetMarR()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetMarR()V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setMarR(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setSpaceAfter(D)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v2

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v3

    double-to-int p1, p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v2

    neg-double p1, p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v3

    double-to-int p1, p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    :goto_1
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setSpcAft(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    return-void
.end method

.method public setSpaceBefore(D)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    if-ltz v4, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPct()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;

    move-result-object v2

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v3

    double-to-int p1, p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPercent;->setVal(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;->addNewSpcPts()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;

    move-result-object v2

    neg-double p1, p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v3

    double-to-int p1, p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacingPoint;->setVal(I)V

    :goto_1
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setSpcBef(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V

    return-void
.end method

.method public setTextAlign(Lorg/apache/poi/xssf/usermodel/TextAlign;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetAlgn()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetAlgn()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setTextFontAlign(Lorg/apache/poi/xssf/usermodel/TextFontAlign;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->isSetPPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->_p:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetFontAlgn()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetFontAlgn()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setFontAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontAlignType$Enum;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

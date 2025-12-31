.class public final Lorg/apache/poi/xslf/usermodel/XSLFSlide;
.super Lorg/apache/poi/xslf/usermodel/XSLFSheet;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Slide;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFSheet;",
        "Lorg/apache/poi/sl/usermodel/Slide<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# instance fields
.field private _comments:Lorg/apache/poi/xslf/usermodel/XSLFComments;

.field private _layout:Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

.field private _notes:Lorg/apache/poi/xslf/usermodel/XSLFNotes;

.field private final _slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;


# virtual methods
.method public draw(Ljava/awt/Graphics2D;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/DrawFactory;->getDrawable(Lorg/apache/poi/sl/usermodel/Slide;)Lorg/apache/poi/sl/draw/DrawSlide;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/poi/sl/draw/Drawable;->draw(Ljava/awt/Graphics2D;)V

    return-void
.end method

.method public bridge synthetic getBackground()Lorg/apache/poi/sl/usermodel/Background;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFBackground;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getBackground()Lorg/apache/poi/xslf/usermodel/XSLFBackground;

    move-result-object v0

    return-object v0
.end method

.method public getComments()Lorg/apache/poi/xslf/usermodel/XSLFComments;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_comments:Lorg/apache/poi/xslf/usermodel/XSLFComments;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFComments;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFComments;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_comments:Lorg/apache/poi/xslf/usermodel/XSLFComments;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_comments:Lorg/apache/poi/xslf/usermodel/XSLFComments;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public getDisplayPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getFollowMasterBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFollowMasterColourScheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFollowMasterGraphics()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getShowMasterSp()Z

    move-result v0

    return v0
.end method

.method public getFollowMasterObjects()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getFollowMasterGraphics()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v0

    return-object v0
.end method

.method public getMasterSheet()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getSlideLayout()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNotes()Lorg/apache/poi/sl/usermodel/Notes;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getNotes()Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    move-result-object v0

    return-object v0
.end method

.method public getNotes()Lorg/apache/poi/xslf/usermodel/XSLFNotes;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_notes:Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_notes:Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_notes:Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public getRootElementName()Ljava/lang/String;
    .locals 1

    const-string v0, "sld"

    return-object v0
.end method

.method public getSlideLayout()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_layout:Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart;

    instance-of v2, v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_layout:Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_layout:Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SlideLayout was not found for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getSlideLayout()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v0

    return-object v0
.end method

.method public getSlideNumber()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getSlideShow()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getSlides()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getSlideLayout()Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->getSlideMaster()Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/Placeholder;->TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTextShapeByType(Lorg/apache/poi/sl/usermodel/Placeholder;)Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    move-result-object v0

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    return-object v0
.end method

.method public bridge synthetic importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-result-object p1

    return-object p1
.end method

.method public importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    .locals 3

    .line 2
    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    instance-of v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    iget-object v0, v0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->isSetBgPr()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetBlipFill()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;)V

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->unsetBg()V

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->addNewBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->isSetBgPr()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->isSetBlipFill()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importBlip(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;->getBgPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    :cond_4
    return-object p0
.end method

.method public setFollowMasterBackground(Z)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setFollowMasterColourScheme(Z)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setFollowMasterGraphics(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->_slide:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlide;->setShowMasterSp(Z)V

    return-void
.end method

.method public setFollowMasterObjects(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->setFollowMasterGraphics(Z)V

    return-void
.end method

.method public setNotes(Lorg/apache/poi/sl/usermodel/Notes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Notes<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    return-void
.end method

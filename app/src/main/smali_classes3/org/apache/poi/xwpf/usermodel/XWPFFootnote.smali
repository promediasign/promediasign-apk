.class public Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lorg/apache/poi/xwpf/usermodel/IBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
        ">;",
        "Lorg/apache/poi/xwpf/usermodel/IBody;"
    }
.end annotation


# instance fields
.field private bodyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation
.end field

.field private ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

.field private document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

.field private paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation
.end field

.field private tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->pictures:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->pictures:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;->getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    const-string v1, "./*"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v2, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v2, :cond_2

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-direct {v2, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    goto :goto_1

    :cond_2
    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {v2, v1, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void
.end method

.method private isCursorInFtn(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addNewParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public addNewTbl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->addNewTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    new-instance p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getBodyElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    return-object v0
.end method

.method public getCTFtnEdn()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    return-object v0
.end method

.method public getOwner()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    return-object v0
.end method

.method public getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParagraphArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParagraphs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    return-object v0
.end method

.method public getPart()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->footnotes:Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    return-object v0
.end method

.method public getPartType()Lorg/apache/poi/xwpf/usermodel/BodyType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/BodyType;->FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/BodyType;

    return-object v0
.end method

.method public getPictures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->pictures:Ljava/util/List;

    return-object v0
.end method

.method public getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_2
    return-object v2
.end method

.method public getTableArray(I)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;
    .locals 4

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    instance-of v2, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    instance-of v0, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v3

    :cond_2
    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRow(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;)Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCell(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTc;)Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    move-result-object p1

    return-object p1
.end method

.method public getTables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    return-object v0
.end method

.method public getXWPFDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-object v0
.end method

.method public insertNewParagraph(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->isCursorInFtn(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "p"

    invoke-interface {p1, v2, v0}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {v2, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    :goto_0
    instance-of v3, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v3, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->getParagraph(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    :cond_3
    :goto_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    instance-of v3, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v3, :cond_4

    instance-of v1, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v1, :cond_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v2

    :cond_6
    return-object v1
.end method

.method public insertNewTbl(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 5

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->isCursorInFtn(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tbl"

    invoke-interface {p1, v2, v0}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {v2, v0, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->removeXmlContents()Z

    :goto_0
    instance-of v3, v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-nez v3, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    if-nez v3, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->getTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;)Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toPrevSibling()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    instance-of v4, v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-nez v4, :cond_3

    instance-of v3, v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v3, :cond_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/XmlCursor;->toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v2

    :cond_5
    return-object v1
.end method

.method public insertTable(ILorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->bodyElements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;->getTblArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->tables:Ljava/util/List;

    invoke-interface {p1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setCTFtnEdn(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;->ctFtnEdn:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdn;

    return-void
.end method

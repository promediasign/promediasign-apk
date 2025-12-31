.class public Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContent;


# instance fields
.field private bodyElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/ISDTContents;",
            ">;"
        }
    .end annotation
.end field

.field private contentControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFSDT;",
            ">;"
        }
    .end annotation
.end field

.field private paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRun;",
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
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->paragraphs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->tables:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->runs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->contentControls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    const-string v0, "./*"

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-direct {v1, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->paragraphs:Ljava/util/List;

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    invoke-direct {v1, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->tables:Ljava/util/List;

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-direct {v1, v0, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->contentControls:Ljava/util/List;

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-direct {v1, v0, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->runs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;Lorg/apache/poi/xwpf/usermodel/IBody;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->paragraphs:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->tables:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->runs:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->contentControls:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentRun;->getRArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v2, v1, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->runs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Ljava/lang/StringBuilder;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableICells()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/ICell;

    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getTextRecursively()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    instance-of v3, v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    const-string v2, "\t"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-direct {p0, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->appendParagraph(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Ljava/lang/StringBuilder;)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {p0, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->appendTable(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    if-eqz v5, :cond_3

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :cond_3
    :goto_2
    if-ne v3, v6, :cond_4

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->bodyElements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_4

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContent;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

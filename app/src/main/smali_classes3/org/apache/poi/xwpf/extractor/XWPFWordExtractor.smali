.class public Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;
.super Lorg/apache/poi/POIXMLTextExtractor;
.source "SourceFile"


# static fields
.field public static final SUPPORTED_TYPES:[Lorg/apache/poi/xwpf/usermodel/XWPFRelation;


# instance fields
.field private concatenatePhoneticRuns:Z

.field private document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private fetchHyperlinks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->TEMPLATE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->MACRO_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->MACRO_TEMPLATE_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLTextExtractor;-><init>(Lorg/apache/poi/POIXMLDocument;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->fetchHyperlinks:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->concatenatePhoneticRuns:Z

    iput-object p1, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    return-void
.end method

.method private appendTableText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 4

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    return-void
.end method

.method private extractFooters(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFirstPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFirstPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getEvenPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getEvenPageFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getDefaultFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getDefaultFooter()Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    return-void
.end method

.method private extractHeaders(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFirstPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getFirstPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getEvenPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getEvenPageHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getDefaultHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;->getDefaultHeader()Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "  XWPFWordExtractor <filename.docx>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-static {p0}, Lorg/apache/poi/POIXMLDocument;->openPackage(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->close()V

    return-void
.end method


# virtual methods
.method public appendBodyElementText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/IBodyElement;)V
    .locals 1

    instance-of v0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->appendParagraphText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->appendTableText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFSDT;->getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/poi/xwpf/usermodel/ISDTContent;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_0
    return-void
.end method

.method public appendParagraphText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 6

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v2, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    iget-object v3, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-direct {v2, v3, v0}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->extractHeaders(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getRuns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    iget-boolean v5, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->concatenatePhoneticRuns:Z

    if-nez v5, :cond_3

    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->text()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_3
    instance-of v5, v4, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->fetchHyperlinks:Z

    if-eqz v5, :cond_2

    check-cast v4, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    iget-object v5, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;->getHyperlink(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, " <"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ">"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    new-instance v3, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;

    invoke-direct {v3, p2, v1}, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Lorg/apache/poi/xwpf/model/XWPFParagraphDecorator;)V

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/model/XWPFCommentsDecorator;->getCommentText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-lez v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getFootnoteText()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    if-eqz v0, :cond_7

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->extractFooters(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V

    :cond_7
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->extractHeaders(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V

    iget-object v2, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getBodyElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-virtual {p0, v0, v3}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->appendBodyElementText(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/usermodel/IBodyElement;)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->extractFooters(Ljava/lang/StringBuffer;Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConcatenatePhoneticRuns(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->concatenatePhoneticRuns:Z

    return-void
.end method

.method public setFetchHyperlinks(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->fetchHyperlinks:Z

    return-void
.end method

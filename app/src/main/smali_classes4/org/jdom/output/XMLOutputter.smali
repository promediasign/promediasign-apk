.class public Lorg/jdom/output/XMLOutputter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/output/XMLOutputter$NamespaceStack;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: XMLOutputter.java,v $ $Revision: 1.117 $ $Date: 2009/07/23 05:54:23 $ $Name:  $"

.field protected static final preserveFormat:Lorg/jdom/output/Format;


# instance fields
.field protected currentFormat:Lorg/jdom/output/Format;

.field private escapeOutput:Z

.field private userFormat:Lorg/jdom/output/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/jdom/output/Format;->getRawFormat()Lorg/jdom/output/Format;

    move-result-object v0

    sput-object v0, Lorg/jdom/output/XMLOutputter;->preserveFormat:Lorg/jdom/output/Format;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/jdom/output/Format;->getRawFormat()Lorg/jdom/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    return-void
.end method

.method public constructor <init>(Lorg/jdom/output/Format;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/jdom/output/Format;->getRawFormat()Lorg/jdom/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    invoke-virtual {p1}, Lorg/jdom/output/Format;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom/output/Format;

    iput-object p1, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object p1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    return-void
.end method

.method public constructor <init>(Lorg/jdom/output/XMLOutputter;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/jdom/output/Format;->getRawFormat()Lorg/jdom/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    iget-object p1, p1, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    invoke-virtual {p1}, Lorg/jdom/output/Format;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom/output/Format;

    iput-object p1, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object p1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    return-void
.end method

.method private createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;
    .locals 1

    new-instance v0, Lorg/jdom/output/XMLOutputter$NamespaceStack;

    invoke-direct {v0, p0}, Lorg/jdom/output/XMLOutputter$NamespaceStack;-><init>(Lorg/jdom/output/XMLOutputter;)V

    return-object v0
.end method

.method private endsWithWhite(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/jdom/Verifier;->isXMLWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private indent(Ljava/io/Writer;I)V
    .locals 2

    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v1, v1, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private isAllWhitespace(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/jdom/Text;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/jdom/Text;

    invoke-virtual {p1}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom/Verifier;->isXMLWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    instance-of p1, p1, Lorg/jdom/EntityRef;

    return v1
.end method

.method private makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method private static makeWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    .locals 3

    .line 2
    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "UTF8"

    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method private newline(Ljava/io/Writer;)V
    .locals 2

    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v1, v0, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static nextNonText(Ljava/util/List;I)I
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/jdom/Text;

    if-nez v2, :cond_1

    instance-of v1, v1, Lorg/jdom/EntityRef;

    if-nez v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private printAdditionalNamespaces(Ljava/io/Writer;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 2

    invoke-virtual {p2}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Namespace;

    invoke-direct {p0, p1, v1, p3}, Lorg/jdom/output/XMLOutputter;->printNamespace(Ljava/io/Writer;Lorg/jdom/Namespace;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private printContentRange(Ljava/io/Writer;Ljava/util/List;IIILorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 4

    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_9

    if-ne v0, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/jdom/Text;

    if-nez v3, :cond_6

    instance-of v3, v2, Lorg/jdom/EntityRef;

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    :cond_2
    invoke-direct {p0, p1, p5}, Lorg/jdom/output/XMLOutputter;->indent(Ljava/io/Writer;I)V

    instance-of v1, v2, Lorg/jdom/Comment;

    if-eqz v1, :cond_3

    check-cast v2, Lorg/jdom/Comment;

    invoke-virtual {p0, p1, v2}, Lorg/jdom/output/XMLOutputter;->printComment(Ljava/io/Writer;Lorg/jdom/Comment;)V

    goto :goto_2

    :cond_3
    instance-of v1, v2, Lorg/jdom/Element;

    if-eqz v1, :cond_4

    check-cast v2, Lorg/jdom/Element;

    invoke-virtual {p0, p1, v2, p5, p6}, Lorg/jdom/output/XMLOutputter;->printElement(Ljava/io/Writer;Lorg/jdom/Element;ILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    goto :goto_2

    :cond_4
    instance-of v1, v2, Lorg/jdom/ProcessingInstruction;

    if-eqz v1, :cond_5

    check-cast v2, Lorg/jdom/ProcessingInstruction;

    invoke-virtual {p0, p1, v2}, Lorg/jdom/output/XMLOutputter;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom/ProcessingInstruction;)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    invoke-direct {p0, p2, v0}, Lorg/jdom/output/XMLOutputter;->skipLeadingWhite(Ljava/util/List;I)I

    move-result v0

    invoke-static {p2, v0}, Lorg/jdom/output/XMLOutputter;->nextNonText(Ljava/util/List;I)I

    move-result v2

    if-ge v0, v2, :cond_8

    if-nez v1, :cond_7

    invoke-direct {p0, p1}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    :cond_7
    invoke-direct {p0, p1, p5}, Lorg/jdom/output/XMLOutputter;->indent(Ljava/io/Writer;I)V

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/jdom/output/XMLOutputter;->printTextRange(Ljava/io/Writer;Ljava/util/List;II)V

    :cond_8
    move v0, v2

    goto :goto_0

    :cond_9
    return-void
.end method

.method private printElementNamespace(Ljava/io/Writer;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 1

    invoke-virtual {p2}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object p2

    sget-object v0, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    if-ne p2, v0, :cond_1

    const-string v0, ""

    invoke-virtual {p3, v0}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/jdom/output/XMLOutputter;->printNamespace(Ljava/io/Writer;Lorg/jdom/Namespace;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    :cond_2
    return-void
.end method

.method private printNamespace(Ljava/io/Writer;Lorg/jdom/Namespace;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 3

    invoke-virtual {p2}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, " xmlns"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/jdom/output/XMLOutputter;->escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    return-void
.end method

.method private printQualifiedName(Ljava/io/Writer;Lorg/jdom/Attribute;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_0
    invoke-virtual {p2}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private printQualifiedName(Ljava/io/Writer;Lorg/jdom/Element;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p2}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method private printString(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lorg/jdom/Text;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lorg/jdom/output/XMLOutputter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private printTextRange(Ljava/io/Writer;Ljava/util/List;II)V
    .locals 5

    invoke-direct {p0, p2, p3}, Lorg/jdom/output/XMLOutputter;->skipLeadingWhite(Ljava/util/List;I)I

    move-result p3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_9

    invoke-direct {p0, p2, p4}, Lorg/jdom/output/XMLOutputter;->skipTrailingWhite(Ljava/util/List;I)I

    move-result p4

    const/4 v0, 0x0

    :goto_0
    if-ge p3, p4, :cond_9

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/jdom/Text;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/jdom/Text;

    invoke-virtual {v2}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lorg/jdom/EntityRef;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "&"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Lorg/jdom/EntityRef;

    invoke-virtual {v3}, Lorg/jdom/EntityRef;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_7

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_4

    iget-object v3, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v3, v3, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v4, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-eq v3, v4, :cond_2

    sget-object v4, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v3, v4, :cond_4

    :cond_2
    invoke-direct {p0, v0}, Lorg/jdom/output/XMLOutputter;->endsWithWhite(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lorg/jdom/output/XMLOutputter;->startsWithWhite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4
    instance-of v0, v1, Lorg/jdom/CDATA;

    if-eqz v0, :cond_5

    check-cast v1, Lorg/jdom/CDATA;

    invoke-virtual {p0, p1, v1}, Lorg/jdom/output/XMLOutputter;->printCDATA(Ljava/io/Writer;Lorg/jdom/CDATA;)V

    goto :goto_2

    :cond_5
    instance-of v0, v1, Lorg/jdom/EntityRef;

    if-eqz v0, :cond_6

    check-cast v1, Lorg/jdom/EntityRef;

    invoke-virtual {p0, p1, v1}, Lorg/jdom/output/XMLOutputter;->printEntityRef(Ljava/io/Writer;Lorg/jdom/EntityRef;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1, v2}, Lorg/jdom/output/XMLOutputter;->printString(Ljava/io/Writer;Ljava/lang/String;)V

    :goto_2
    move-object v0, v2

    :cond_7
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should see only CDATA, Text, or EntityRef"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    return-void
.end method

.method private skipLeadingWhite(Ljava/util/List;I)I
    .locals 3

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v1, v1, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v2, Lorg/jdom/output/Format$TextMode;->TRIM_FULL_WHITE:Lorg/jdom/output/Format$TextMode;

    if-eq v1, v2, :cond_1

    sget-object v2, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-eq v1, v2, :cond_1

    sget-object v2, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v1, v2, :cond_3

    :cond_1
    :goto_0
    if-ge p2, v0, :cond_3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jdom/output/XMLOutputter;->isAllWhitespace(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method private skipTrailingWhite(Ljava/util/List;I)I
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->TRIM_FULL_WHITE:Lorg/jdom/output/Format$TextMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v0, v1, :cond_3

    :cond_1
    :goto_0
    if-ltz p2, :cond_3

    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jdom/output/XMLOutputter;->isAllWhitespace(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p2
.end method

.method private startsWithWhite(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/jdom/Verifier;->isXMLWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->escapeStrategy:Lorg/jdom/output/EscapeStrategy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_e

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_a

    const/16 v6, 0xa

    if-eq v5, v6, :cond_9

    const/16 v6, 0xd

    if-eq v5, v6, :cond_8

    const/16 v6, 0x22

    if-eq v5, v6, :cond_7

    const/16 v6, 0x26

    if-eq v5, v6, :cond_6

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_5

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_4

    int-to-char v6, v5

    invoke-interface {v0, v6}, Lorg/jdom/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v6}, Lorg/jdom/Verifier;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/jdom/Verifier;->isLowSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v6, v8}, Lorg/jdom/Verifier;->decodeSurrogatePair(CC)I

    move-result v5

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/jdom/IllegalDataException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Could not decode surrogate pair 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " / 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/jdom/IllegalDataException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Surrogate pair 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " truncated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move v7, v3

    :goto_1
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v8, "&#x"

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_2
    move v7, v3

    goto :goto_3

    :cond_4
    const-string v6, "&gt;"

    goto :goto_2

    :cond_5
    const-string v6, "&lt;"

    goto :goto_2

    :cond_6
    const-string v6, "&amp;"

    goto :goto_2

    :cond_7
    const-string v6, "&quot;"

    goto :goto_2

    :cond_8
    const-string v6, "&#xD;"

    goto :goto_2

    :cond_9
    const-string v6, "&#xA;"

    goto :goto_2

    :cond_a
    const-string v6, "&#x9;"

    goto :goto_2

    :goto_3
    if-nez v4, :cond_c

    if-eqz v6, :cond_d

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_c
    if-nez v6, :cond_b

    int-to-char v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_d
    :goto_4
    add-int/lit8 v3, v7, 0x1

    goto/16 :goto_0

    :cond_e
    if-nez v4, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    return-object p1
.end method

.method public escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    iget-boolean v0, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->escapeStrategy:Lorg/jdom/output/EscapeStrategy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_d

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_9

    const/16 v6, 0xd

    if-eq v5, v6, :cond_8

    const/16 v6, 0x26

    if-eq v5, v6, :cond_7

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_6

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_5

    int-to-char v6, v5

    invoke-interface {v0, v6}, Lorg/jdom/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6}, Lorg/jdom/Verifier;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/jdom/Verifier;->isLowSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v6, v8}, Lorg/jdom/Verifier;->decodeSurrogatePair(CC)I

    move-result v5

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/jdom/IllegalDataException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Could not decode surrogate pair 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " / 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/jdom/IllegalDataException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Surrogate pair 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " truncated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move v7, v3

    :goto_1
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v8, "&#x"

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v2

    :goto_2
    move v7, v3

    goto :goto_3

    :cond_5
    const-string v6, "&gt;"

    goto :goto_2

    :cond_6
    const-string v6, "&lt;"

    goto :goto_2

    :cond_7
    const-string v6, "&amp;"

    goto :goto_2

    :cond_8
    const-string v6, "&#xD;"

    goto :goto_2

    :cond_9
    iget-object v6, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v6, v6, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    goto :goto_2

    :goto_3
    if-nez v4, :cond_b

    if-eqz v6, :cond_c

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_b
    if-nez v6, :cond_a

    int-to-char v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    :goto_4
    add-int/lit8 v3, v7, 0x1

    goto/16 :goto_0

    :cond_d
    if-nez v4, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    return-object p1
.end method

.method public getFormat()Lorg/jdom/output/Format;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    invoke-virtual {v0}, Lorg/jdom/output/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/output/Format;

    return-object v0
.end method

.method public output(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Ljava/util/List;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Ljava/util/List;Ljava/io/Writer;)V
    .locals 7

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/jdom/output/XMLOutputter;->createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/jdom/output/XMLOutputter;->printContentRange(Ljava/io/Writer;Ljava/util/List;IIILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/CDATA;Ljava/io/OutputStream;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/CDATA;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/CDATA;Ljava/io/Writer;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printCDATA(Ljava/io/Writer;Lorg/jdom/CDATA;)V

    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/Comment;Ljava/io/OutputStream;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Comment;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/Comment;Ljava/io/Writer;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printComment(Ljava/io/Writer;Lorg/jdom/Comment;)V

    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/DocType;Ljava/io/OutputStream;)V
    .locals 0

    .line 7
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/DocType;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/DocType;Ljava/io/Writer;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printDocType(Ljava/io/Writer;Lorg/jdom/DocType;)V

    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/Document;Ljava/io/OutputStream;)V
    .locals 0

    .line 9
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Document;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/Document;Ljava/io/Writer;)V
    .locals 6

    .line 10
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, v0}, Lorg/jdom/output/XMLOutputter;->printDeclaration(Ljava/io/Writer;Lorg/jdom/Document;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jdom/Document;->getContent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/jdom/Element;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v4

    invoke-direct {p0}, Lorg/jdom/output/XMLOutputter;->createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;

    move-result-object v5

    invoke-virtual {p0, p2, v4, v2, v5}, Lorg/jdom/output/XMLOutputter;->printElement(Ljava/io/Writer;Lorg/jdom/Element;ILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    goto :goto_1

    :cond_0
    instance-of v5, v4, Lorg/jdom/Comment;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/jdom/Comment;

    invoke-virtual {p0, p2, v4}, Lorg/jdom/output/XMLOutputter;->printComment(Ljava/io/Writer;Lorg/jdom/Comment;)V

    goto :goto_1

    :cond_1
    instance-of v5, v4, Lorg/jdom/ProcessingInstruction;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/jdom/ProcessingInstruction;

    invoke-virtual {p0, p2, v4}, Lorg/jdom/output/XMLOutputter;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom/ProcessingInstruction;)V

    goto :goto_1

    :cond_2
    instance-of v4, v4, Lorg/jdom/DocType;

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Lorg/jdom/output/XMLOutputter;->printDocType(Ljava/io/Writer;Lorg/jdom/DocType;)V

    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v4, v4, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    invoke-direct {p0, p2, v2}, Lorg/jdom/output/XMLOutputter;->indent(Ljava/io/Writer;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object p1, p1, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/Element;Ljava/io/OutputStream;)V
    .locals 0

    .line 11
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Element;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/Element;Ljava/io/Writer;)V
    .locals 2

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/jdom/output/XMLOutputter;->createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v0, v1}, Lorg/jdom/output/XMLOutputter;->printElement(Ljava/io/Writer;Lorg/jdom/Element;ILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/EntityRef;Ljava/io/OutputStream;)V
    .locals 0

    .line 13
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/EntityRef;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/EntityRef;Ljava/io/Writer;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printEntityRef(Ljava/io/Writer;Lorg/jdom/EntityRef;)V

    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/ProcessingInstruction;Ljava/io/OutputStream;)V
    .locals 0

    .line 15
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/ProcessingInstruction;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/ProcessingInstruction;Ljava/io/Writer;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-boolean v1, v0, Lorg/jdom/output/Format;->ignoreTrAXEscapingPIs:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/jdom/output/Format;->setIgnoreTrAXEscapingPIs(Z)V

    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom/ProcessingInstruction;)V

    iget-object p1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    invoke-virtual {p1, v1}, Lorg/jdom/output/Format;->setIgnoreTrAXEscapingPIs(Z)V

    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public output(Lorg/jdom/Text;Ljava/io/OutputStream;)V
    .locals 0

    .line 17
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Text;Ljava/io/Writer;)V

    return-void
.end method

.method public output(Lorg/jdom/Text;Ljava/io/Writer;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printText(Ljava/io/Writer;Lorg/jdom/Text;)V

    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public outputElementContent(Lorg/jdom/Element;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->outputElementContent(Lorg/jdom/Element;Ljava/io/Writer;)V

    return-void
.end method

.method public outputElementContent(Lorg/jdom/Element;Ljava/io/Writer;)V
    .locals 7

    .line 2
    invoke-virtual {p1}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/jdom/output/XMLOutputter;->createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/jdom/output/XMLOutputter;->printContentRange(Ljava/io/Writer;Ljava/util/List;IIILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public outputString(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Ljava/util/List;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/CDATA;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/CDATA;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/Comment;)Ljava/lang/String;
    .locals 1

    .line 3
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Comment;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/DocType;)Ljava/lang/String;
    .locals 1

    .line 4
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/DocType;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/Document;)Ljava/lang/String;
    .locals 1

    .line 5
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Document;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/Element;)Ljava/lang/String;
    .locals 1

    .line 6
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Element;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/EntityRef;)Ljava/lang/String;
    .locals 1

    .line 7
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/EntityRef;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/ProcessingInstruction;)Ljava/lang/String;
    .locals 1

    .line 8
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/ProcessingInstruction;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public outputString(Lorg/jdom/Text;)Ljava/lang/String;
    .locals 1

    .line 9
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Text;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public printAttributes(Ljava/io/Writer;Ljava/util/List;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 3

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Attribute;

    invoke-virtual {v0}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v1

    sget-object v2, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    if-eq v1, v2, :cond_0

    invoke-direct {p0, p1, v1, p4}, Lorg/jdom/output/XMLOutputter;->printNamespace(Ljava/io/Writer;Lorg/jdom/Namespace;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    :cond_0
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->printQualifiedName(Ljava/io/Writer;Lorg/jdom/Attribute;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom/output/XMLOutputter;->escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public printCDATA(Ljava/io/Writer;Lorg/jdom/CDATA;)V
    .locals 2

    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/jdom/Text;->getTextNormalize()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    invoke-virtual {p2}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object p2

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    const-string v0, "<![CDATA["

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "]]>"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public printComment(Ljava/io/Writer;Lorg/jdom/Comment;)V
    .locals 1

    const-string v0, "<!--"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "-->"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public printDeclaration(Ljava/io/Writer;Lorg/jdom/Document;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean p2, p2, Lorg/jdom/output/Format;->omitDeclaration:Z

    if-nez p2, :cond_1

    const-string p2, "<?xml version=\"1.0\""

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean p2, p2, Lorg/jdom/output/Format;->omitEncoding:Z

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, " encoding=\""

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    const-string p2, "?>"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object p2, p2, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public printDocType(Ljava/io/Writer;Lorg/jdom/DocType;)V
    .locals 5

    invoke-virtual {p2}, Lorg/jdom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jdom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jdom/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<!DOCTYPE "

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jdom/DocType;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "\""

    if-eqz v0, :cond_0

    const-string v4, " PUBLIC \""

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const-string v0, " SYSTEM"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    if-eqz v2, :cond_3

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jdom/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public printElement(Ljava/io/Writer;Lorg/jdom/Element;ILorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 10

    invoke-virtual {p2}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_0

    const-string v1, "space"

    sget-object v2, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p2, v1, v2}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v8, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    const-string v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    :goto_1
    iput-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    goto :goto_2

    :cond_1
    const-string v2, "preserve"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/jdom/output/XMLOutputter;->preserveFormat:Lorg/jdom/output/Format;

    goto :goto_1

    :cond_2
    :goto_2
    const-string v1, "<"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->printQualifiedName(Ljava/io/Writer;Lorg/jdom/Element;)V

    invoke-virtual {p4}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result v9

    invoke-direct {p0, p1, p2, p4}, Lorg/jdom/output/XMLOutputter;->printElementNamespace(Ljava/io/Writer;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    invoke-direct {p0, p1, p2, p4}, Lorg/jdom/output/XMLOutputter;->printAdditionalNamespaces(Ljava/io/Writer;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v0, p2, p4}, Lorg/jdom/output/XMLOutputter;->printAttributes(Ljava/io/Writer;Ljava/util/List;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lorg/jdom/output/XMLOutputter;->skipLeadingWhite(Ljava/util/List;I)I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const-string v0, ">"

    if-lt v4, v5, :cond_5

    iget-object p3, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-boolean p3, p3, Lorg/jdom/output/Format;->expandEmptyElements:Z

    if-eqz p3, :cond_4

    const-string p3, "></"

    :goto_3
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->printQualifiedName(Ljava/io/Writer;Lorg/jdom/Element;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    const-string p2, " />"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lorg/jdom/output/XMLOutputter;->nextNonText(Ljava/util/List;I)I

    move-result v1

    if-ge v1, v5, :cond_6

    invoke-direct {p0, p1}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    add-int/lit8 v6, p3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/jdom/output/XMLOutputter;->printContentRange(Ljava/io/Writer;Ljava/util/List;IIILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    invoke-direct {p0, p1}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    invoke-direct {p0, p1, p3}, Lorg/jdom/output/XMLOutputter;->indent(Ljava/io/Writer;I)V

    goto :goto_4

    :cond_6
    invoke-direct {p0, p1, v3, v4, v5}, Lorg/jdom/output/XMLOutputter;->printTextRange(Ljava/io/Writer;Ljava/util/List;II)V

    :goto_4
    const-string p3, "</"

    goto :goto_3

    :goto_5
    invoke-virtual {p4}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result p1

    if-le p1, v9, :cond_7

    invoke-virtual {p4}, Lorg/jdom/output/NamespaceStack;->pop()Ljava/lang/String;

    goto :goto_5

    :cond_7
    iput-object v8, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    return-void
.end method

.method public printEntityRef(Ljava/io/Writer;Lorg/jdom/EntityRef;)V
    .locals 1

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jdom/EntityRef;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public printProcessingInstruction(Ljava/io/Writer;Lorg/jdom/ProcessingInstruction;)V
    .locals 4

    invoke-virtual {p2}, Lorg/jdom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-boolean v1, v1, Lorg/jdom/output/Format;->ignoreTrAXEscapingPIs:Z

    if-nez v1, :cond_1

    const-string v1, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    goto :goto_1

    :cond_0
    const-string v1, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/jdom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "?>"

    const-string v3, "<?"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public printText(Ljava/io/Writer;Lorg/jdom/Text;)V
    .locals 2

    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/jdom/Text;->getTextNormalize()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    invoke-virtual {p2}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object p2

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lorg/jdom/output/XMLOutputter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public setFormat(Lorg/jdom/output/Format;)V
    .locals 0

    invoke-virtual {p1}, Lorg/jdom/output/Format;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom/output/Format;

    iput-object p1, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object p1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v2, v2, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "]"

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v2, v2, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x9

    if-eq v2, v4, :cond_2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    const/16 v4, 0xd

    if-eq v2, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    const-string v2, "\\r"

    goto :goto_1

    :cond_1
    const-string v2, "\\n"

    goto :goto_1

    :cond_2
    const-string v2, "\\t"

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "XMLOutputter[omitDeclaration = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean v2, v2, Lorg/jdom/output/Format;->omitDeclaration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, ", encoding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v2, v2, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", omitEncoding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean v2, v2, Lorg/jdom/output/Format;->omitEncoding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, ", indent = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v2, v2, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\', expandEmptyElements = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean v2, v2, Lorg/jdom/output/Format;->expandEmptyElements:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, ", lineSeparator = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\', textMode = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

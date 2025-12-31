.class public Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;
.super Lorg/apache/poi/POIXMLTextExtractor;
.source "SourceFile"


# instance fields
.field protected final document:Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;-><init>(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLTextExtractor;-><init>(Lorg/apache/poi/POIXMLDocument;)V

    iput-object p1, p0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->document:Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

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

    const-string v2, "  XDGFVisioExtractor <filename.vsdx>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-static {p0}, Lorg/apache/poi/POIXMLDocument;->openPackage(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->close()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;

    invoke-direct {v0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;->document:Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->getPages()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xdgf/usermodel/XDGFPage;

    invoke-virtual {v2}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getContent()Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeTextVisitor;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

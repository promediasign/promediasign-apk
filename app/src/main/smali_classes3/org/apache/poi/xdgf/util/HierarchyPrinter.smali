.class public Lorg/apache/poi/xdgf/util/HierarchyPrinter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: in.vsdx outdir"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    aget-object p0, p0, v2

    new-instance v1, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, p0}, Lorg/apache/poi/xdgf/util/HierarchyPrinter;->printHierarchy(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;Ljava/lang/String;)V

    return-void
.end method

.method public static printHierarchy(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getPageNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/xdgf/util/Util;->sanitizeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/PrintStream;

    const/4 v1, 0x0

    const-string v2, "utf-8"

    invoke-direct {v0, p1, v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/poi/xdgf/util/HierarchyPrinter;->printHierarchy(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/PrintStream;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    return-void
.end method

.method public static printHierarchy(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/PrintStream;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPage;->getContent()Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xdgf/util/HierarchyPrinter$1;

    invoke-direct {v0, p1}, Lorg/apache/poi/xdgf/util/HierarchyPrinter$1;-><init>(Ljava/io/PrintStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xdgf/usermodel/XDGFBaseContents;->visitShapes(Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;)V

    return-void
.end method

.method public static printHierarchy(Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XmlVisioDocument;->getPages()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xdgf/usermodel/XDGFPage;

    invoke-static {p1, v0}, Lorg/apache/poi/xdgf/util/HierarchyPrinter;->printHierarchy(Lorg/apache/poi/xdgf/usermodel/XDGFPage;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.class public Lorg/jdom/input/SAXBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: SAXBuilder.java,v $ $Revision: 1.93 $ $Date: 2009/07/23 06:26:26 $ $Name:  $"

.field private static final DEFAULT_SAX_DRIVER:Ljava/lang/String; = "org.apache.xerces.parsers.SAXParser"

.field static synthetic class$java$util$Map:Ljava/lang/Class;


# instance fields
.field private expand:Z

.field private factory:Lorg/jdom/JDOMFactory;

.field private fastReconfigure:Z

.field private features:Ljava/util/HashMap;

.field private ignoringBoundaryWhite:Z

.field private ignoringWhite:Z

.field private properties:Ljava/util/HashMap;

.field private reuseParser:Z

.field private saxDTDHandler:Lorg/xml/sax/DTDHandler;

.field private saxDriverClass:Ljava/lang/String;

.field private saxEntityResolver:Lorg/xml/sax/EntityResolver;

.field private saxErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private saxParser:Lorg/xml/sax/XMLReader;

.field private saxXMLFilter:Lorg/xml/sax/XMLFilter;

.field private skipNextEntityExpandConfig:Z

.field private skipNextLexicalReportingConfig:Z

.field private validate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jdom/input/SAXBuilder;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jdom/input/SAXBuilder;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    new-instance v2, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v2}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v2, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->ignoringBoundaryWhite:Z

    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->fastReconfigure:Z

    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->skipNextLexicalReportingConfig:Z

    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->skipNextEntityExpandConfig:Z

    iput-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    new-instance v2, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v2}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v2, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->ignoringBoundaryWhite:Z

    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->fastReconfigure:Z

    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->skipNextLexicalReportingConfig:Z

    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->skipNextEntityExpandConfig:Z

    iput-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fileToURL(Ljava/io/File;)Ljava/net/URL;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_c

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    const-string v6, "%20"

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    const/16 v7, 0x23

    if-ne v6, v7, :cond_3

    const-string v6, "%23"

    goto :goto_1

    :cond_3
    const/16 v7, 0x25

    if-ne v6, v7, :cond_4

    const-string v6, "%25"

    goto :goto_1

    :cond_4
    const/16 v7, 0x26

    if-ne v6, v7, :cond_5

    const-string v6, "%26"

    goto :goto_1

    :cond_5
    const/16 v7, 0x3b

    if-ne v6, v7, :cond_6

    const-string v6, "%3B"

    goto :goto_1

    :cond_6
    const/16 v7, 0x3c

    if-ne v6, v7, :cond_7

    const-string v6, "%3C"

    goto :goto_1

    :cond_7
    const/16 v7, 0x3d

    if-ne v6, v7, :cond_8

    const-string v6, "%3D"

    goto :goto_1

    :cond_8
    const/16 v7, 0x3e

    if-ne v6, v7, :cond_9

    const-string v6, "%3E"

    goto :goto_1

    :cond_9
    const/16 v7, 0x3f

    if-ne v6, v7, :cond_a

    const-string v6, "%3F"

    goto :goto_1

    :cond_a
    const/16 v7, 0x7e

    if-ne v6, v7, :cond_b

    const-string v6, "%7E"

    goto :goto_1

    :cond_b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_c
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_d
    new-instance p0, Ljava/net/URL;

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-direct {p0, v2, v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    new-instance p2, Lorg/jdom/JDOMException;

    .line 6
    .line 7
    const-string p3, " feature not recognized for SAX driver "

    .line 8
    .line 9
    invoke-static {p4, p3}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p2

    .line 32
    :catch_1
    new-instance p2, Lorg/jdom/JDOMException;

    .line 33
    .line 34
    const-string p3, " feature not supported for SAX driver "

    .line 35
    .line 36
    invoke-static {p4, p3}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p2
.end method

.method private internalSetProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    new-instance p2, Lorg/jdom/JDOMException;

    .line 6
    .line 7
    const-string p3, " property not recognized for SAX driver "

    .line 8
    .line 9
    invoke-static {p4, p3}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p2

    .line 32
    :catch_1
    new-instance p2, Lorg/jdom/JDOMException;

    .line 33
    .line 34
    const-string p3, " property not supported for SAX driver "

    .line 35
    .line 36
    invoke-static {p4, p3}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p2
.end method

.method private setFeaturesAndProperties(Lorg/xml/sax/XMLReader;Z)V
    .locals 4

    const-string v0, "http://xml.org/sax/features/external-general-entities"

    iget-object v1, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, p1, v2, v3, v2}, Lorg/jdom/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3, v2}, Lorg/jdom/input/SAXBuilder;->internalSetProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    :try_start_0
    const-string p2, "http://xml.org/sax/features/validation"

    iget-boolean v1, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    const-string v2, "Validation"

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/jdom/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    iget-boolean v1, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    if-nez v1, :cond_2

    :goto_2
    const-string p2, "http://xml.org/sax/features/namespaces"

    const-string v1, "Namespaces"

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2, v1}, Lorg/jdom/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p2, "http://xml.org/sax/features/namespace-prefixes"

    const-string v1, "Namespace prefixes"

    invoke-direct {p0, p1, p2, v2, v1}, Lorg/jdom/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_3

    :cond_2
    throw p2

    :cond_3
    :goto_3
    :try_start_1
    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result p2

    iget-boolean v1, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    if-eq p2, v1, :cond_4

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    return-void
.end method


# virtual methods
.method public build(Ljava/io/File;)Lorg/jdom/Document;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/jdom/input/SAXBuilder;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jdom/input/SAXBuilder;->build(Ljava/net/URL;)Lorg/jdom/Document;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/jdom/JDOMException;

    const-string v1, "Error in building"

    invoke-direct {v0, v1, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public build(Ljava/io/InputStream;)Lorg/jdom/Document;
    .locals 1

    .line 2
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/io/InputStream;Ljava/lang/String;)Lorg/jdom/Document;
    .locals 1

    .line 3
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/io/Reader;)Lorg/jdom/Document;
    .locals 1

    .line 4
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/io/Reader;Ljava/lang/String;)Lorg/jdom/Document;
    .locals 1

    .line 5
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/lang/String;)Lorg/jdom/Document;
    .locals 1

    .line 6
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public build(Ljava/net/URL;)Lorg/jdom/Document;
    .locals 1

    .line 7
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;
    .locals 5

    .line 8
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXBuilder;->createContentHandler()Lorg/jdom/input/SAXHandler;

    move-result-object v1
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/jdom/input/SAXBuilder;->configureContentHandler(Lorg/jdom/input/SAXHandler;)V

    iget-object v2, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/jdom/input/SAXBuilder;->createParser()Lorg/xml/sax/XMLReader;

    move-result-object v2

    iget-object v3, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    if-eqz v3, :cond_1

    :goto_0
    invoke-interface {v3}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v4

    instance-of v4, v4, Lorg/xml/sax/XMLFilter;

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v3

    check-cast v3, Lorg/xml/sax/XMLFilter;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_0
    invoke-interface {v3, v2}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    iget-object v2, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    :cond_1
    invoke-virtual {p0, v2, v1}, Lorg/jdom/input/SAXBuilder;->configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom/input/SAXHandler;)V

    iget-boolean v3, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    if-eqz v3, :cond_3

    iput-object v2, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, v1}, Lorg/jdom/input/SAXBuilder;->configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom/input/SAXHandler;)V

    :cond_3
    :goto_1
    invoke-interface {v2, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v1}, Lorg/jdom/input/SAXHandler;->getDocument()Lorg/jdom/Document;

    move-result-object p1
    :try_end_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_2
    throw p1

    :catch_2
    move-exception p1

    :goto_3
    new-instance v1, Lorg/jdom/input/JDOMParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error in building: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jdom/input/SAXHandler;->getDocument()Lorg/jdom/Document;

    move-result-object v0

    invoke-direct {v1, v2, p1, v0}, Lorg/jdom/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom/Document;)V

    throw v1

    :catch_3
    move-exception p1

    move-object v1, v0

    :goto_4
    invoke-virtual {v1}, Lorg/jdom/input/SAXHandler;->getDocument()Lorg/jdom/Document;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jdom/Document;->hasRootElement()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5

    :cond_4
    move-object v0, v1

    :goto_5
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on line "

    if-eqz v1, :cond_5

    new-instance v3, Lorg/jdom/input/JDOMParseException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " of document "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, p1, v0}, Lorg/jdom/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom/Document;)V

    throw v3

    :cond_5
    new-instance v1, Lorg/jdom/input/JDOMParseException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lorg/jdom/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom/Document;)V

    throw v1
.end method

.method public configureContentHandler(Lorg/jdom/input/SAXHandler;)V
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    invoke-virtual {p1, v0}, Lorg/jdom/input/SAXHandler;->setExpandEntities(Z)V

    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    invoke-virtual {p1, v0}, Lorg/jdom/input/SAXHandler;->setIgnoringElementContentWhitespace(Z)V

    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->ignoringBoundaryWhite:Z

    invoke-virtual {p1, v0}, Lorg/jdom/input/SAXHandler;->setIgnoringBoundaryWhitespace(Z)V

    return-void
.end method

.method public configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom/input/SAXHandler;)V
    .locals 3

    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    :goto_0
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_2

    :goto_1
    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/jdom/input/BuilderErrorHandler;

    invoke-direct {v0}, Lorg/jdom/input/BuilderErrorHandler;-><init>()V

    goto :goto_1

    :goto_2
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->skipNextLexicalReportingConfig:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    :try_start_0
    const-string v0, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-interface {p1, v0, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_3

    :catch_0
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_3

    :try_start_1
    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {p1, v2, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    nop

    :cond_3
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->fastReconfigure:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lorg/jdom/input/SAXBuilder;->skipNextLexicalReportingConfig:Z

    :cond_4
    :goto_4
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->skipNextEntityExpandConfig:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    if-nez v0, :cond_5

    :try_start_2
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    invoke-interface {p1, v0, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    nop

    :cond_5
    iget-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->fastReconfigure:Z

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lorg/jdom/input/SAXBuilder;->skipNextEntityExpandConfig:Z

    :cond_6
    :goto_5
    return-void
.end method

.method public createContentHandler()Lorg/jdom/input/SAXHandler;
    .locals 2

    new-instance v0, Lorg/jdom/input/SAXHandler;

    iget-object v1, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-direct {v0, v1}, Lorg/jdom/input/SAXHandler;-><init>(Lorg/jdom/JDOMFactory;)V

    return-object v0
.end method

.method public createParser()Lorg/xml/sax/XMLReader;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {v3}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lorg/jdom/input/SAXBuilder;->setFeaturesAndProperties(Lorg/xml/sax/XMLReader;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Could not load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    const-class v5, Lorg/jdom/input/JAXPParserFactory;

    const-string v6, "createParser"

    sget-object v7, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;
    :try_end_1
    .catch Lorg/jdom/JDOMException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v8, "java.util.Map"

    if-nez v7, :cond_1

    :try_start_2
    invoke-static {v8}, Lorg/jdom/input/SAXBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;

    goto :goto_0

    :catch_1
    nop

    move-object v0, v3

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_0
    sget-object v9, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;

    if-nez v9, :cond_2

    invoke-static {v8}, Lorg/jdom/input/SAXBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;

    :cond_2
    new-array v8, v1, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v2

    aput-object v7, v8, v4

    aput-object v9, v8, v0

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-boolean v6, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    if-eqz v6, :cond_3

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iget-object v7, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    iget-object v8, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v2

    aput-object v7, v1, v4

    aput-object v8, v1, v0

    invoke-virtual {v5, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/XMLReader;
    :try_end_2
    .catch Lorg/jdom/JDOMException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-direct {p0, v0, v2}, Lorg/jdom/input/SAXBuilder;->setFeaturesAndProperties(Lorg/xml/sax/XMLReader;Z)V
    :try_end_3
    .catch Lorg/jdom/JDOMException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    nop

    :goto_2
    if-nez v0, :cond_4

    :try_start_4
    const-string v0, "org.apache.xerces.parsers.SAXParser"

    invoke-static {v0}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lorg/jdom/input/SAXBuilder;->setFeaturesAndProperties(Lorg/xml/sax/XMLReader;Z)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Could not load default SAX parser: org.apache.xerces.parsers.SAXParser"

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :goto_3
    return-object v0

    :goto_4
    throw v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getDriverClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getExpandEntities()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    return v0
.end method

.method public getFactory()Lorg/jdom/JDOMFactory;
    .locals 1

    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    return-object v0
.end method

.method public getIgnoringBoundaryWhitespace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->ignoringBoundaryWhite:Z

    return v0
.end method

.method public getIgnoringElementContentWhitespace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    return v0
.end method

.method public getReuseParser()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    return v0
.end method

.method public getValidation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    return v0
.end method

.method public getXMLFilter()Lorg/xml/sax/XMLFilter;
    .locals 1

    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    return-object v0
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setExpandEntities(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    return-void
.end method

.method public setFactory(Lorg/jdom/JDOMFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    return-void
.end method

.method public setFastReconfigure(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->fastReconfigure:Z

    :cond_0
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIgnoringBoundaryWhitespace(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->ignoringBoundaryWhite:Z

    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setReuseParser(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method public setValidation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    return-void
.end method

.method public setXMLFilter(Lorg/xml/sax/XMLFilter;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    return-void
.end method

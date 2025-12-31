.class public Lorg/jdom/adapters/XercesDOMAdapter;
.super Lorg/jdom/adapters/AbstractDOMAdapter;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: XercesDOMAdapter.java,v $ $Revision: 1.19 $ $Date: 2007/11/10 05:28:59 $ $Name:  $"

.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

.field static synthetic class$org$xml$sax$InputSource:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jdom/adapters/AbstractDOMAdapter;-><init>()V

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


# virtual methods
.method public createDocument()Lorg/w3c/dom/Document;
    .locals 4

    :try_start_0
    const-string v0, "org.apache.xerces.dom.DocumentImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " when creating document"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDocument(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "org.apache.xerces.parsers.DOMParser"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "setFeature"

    sget-object v6, Lorg/jdom/adapters/XercesDOMAdapter;->class$java$lang$String:Ljava/lang/Class;

    if-nez v6, :cond_0

    const-string v6, "java.lang.String"

    invoke-static {v6}, Lorg/jdom/adapters/XercesDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/jdom/adapters/XercesDOMAdapter;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    new-array v7, v0, [Ljava/lang/Class;

    aput-object v6, v7, v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v7, v2

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-array v7, v0, [Ljava/lang/Object;

    const-string v8, "http://xml.org/sax/features/validation"

    aput-object v8, v7, v1

    aput-object v6, v7, v2

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v2}, Ljava/lang/Boolean;-><init>(Z)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v7, "http://xml.org/sax/features/namespaces"

    aput-object v7, v0, v1

    aput-object v6, v0, v2

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    const-string p2, "setErrorHandler"

    sget-object v0, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.xml.sax.ErrorHandler"

    invoke-static {v0}, Lorg/jdom/adapters/XercesDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    :cond_1
    new-array v5, v2, [Ljava/lang/Class;

    aput-object v0, v5, v1

    invoke-virtual {v3, p2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-instance v0, Lorg/jdom/input/BuilderErrorHandler;

    invoke-direct {v0}, Lorg/jdom/input/BuilderErrorHandler;-><init>()V

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {p2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "parse"

    sget-object v0, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$InputSource:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "org.xml.sax.InputSource"

    invoke-static {v0}, Lorg/jdom/adapters/XercesDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$InputSource:Ljava/lang/Class;

    :cond_3
    new-array v5, v2, [Ljava/lang/Class;

    aput-object v0, v5, v1

    invoke-virtual {v3, p2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v1

    invoke-virtual {p2, v4, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "getDocument"

    const/4 p2, 0x0

    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance p2, Lorg/jdom/JDOMException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p2

    instance-of v0, p2, Lorg/xml/sax/SAXParseException;

    if-nez v0, :cond_5

    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/io/IOException;

    throw p2

    :cond_4
    new-instance v0, Lorg/jdom/JDOMException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    check-cast p2, Lorg/xml/sax/SAXParseException;

    new-instance v0, Lorg/jdom/JDOMException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Error on line "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " of XML document: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

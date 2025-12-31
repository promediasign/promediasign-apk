.class public Lorg/jdom/adapters/JAXPDOMAdapter;
.super Lorg/jdom/adapters/AbstractDOMAdapter;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JAXPDOMAdapter.java,v $ $Revision: 1.13 $ $Date: 2007/11/10 05:28:59 $ $Name:  $"

.field static synthetic class$java$io$InputStream:Ljava/lang/Class;

.field static synthetic class$org$xml$sax$ErrorHandler:Ljava/lang/Class;


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
    const-string v0, "javax.xml.transform.Transformer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "javax.xml.parsers.DocumentBuilderFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "newInstance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "newDocumentBuilder"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "newDocument"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "Reflection failed while creating new JAXP document"

    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDocument(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "javax.xml.transform.Transformer"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v2, "javax.xml.parsers.DocumentBuilderFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "newInstance"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "setValidating"

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v6, v7, v0

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-array p2, v1, [Ljava/lang/Object;

    aput-object v7, p2, v0

    invoke-virtual {v5, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "setNamespaceAware"

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v2, p2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v5, v1, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v0

    invoke-virtual {p2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "newDocumentBuilder"

    invoke-virtual {v2, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setErrorHandler"

    sget-object v4, Lorg/jdom/adapters/JAXPDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "org.xml.sax.ErrorHandler"

    invoke-static {v4}, Lorg/jdom/adapters/JAXPDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/jdom/adapters/JAXPDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    new-array v5, v1, [Ljava/lang/Class;

    aput-object v4, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-instance v4, Lorg/jdom/input/BuilderErrorHandler;

    invoke-direct {v4}, Lorg/jdom/input/BuilderErrorHandler;-><init>()V

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-virtual {v3, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "parse"

    sget-object v4, Lorg/jdom/adapters/JAXPDOMAdapter;->class$java$io$InputStream:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "java.io.InputStream"

    invoke-static {v4}, Lorg/jdom/adapters/JAXPDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/jdom/adapters/JAXPDOMAdapter;->class$java$io$InputStream:Ljava/lang/Class;

    :cond_1
    new-array v5, v1, [Ljava/lang/Class;

    aput-object v4, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance p2, Lorg/jdom/JDOMException;

    const-string v0, "Reflection failed while parsing a document with JAXP"

    invoke-direct {p2, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_2
    new-instance p2, Lorg/jdom/JDOMException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.class public abstract Lorg/jdom/adapters/AbstractDOMAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jdom/adapters/DOMAdapter;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: AbstractDOMAdapter.java,v $ $Revision: 1.21 $ $Date: 2007/11/10 05:28:59 $ $Name:  $"

.field static synthetic class$java$lang$String:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public abstract createDocument()Lorg/w3c/dom/Document;
.end method

.method public createDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/jdom/adapters/AbstractDOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/jdom/adapters/AbstractDOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom/DocType;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jdom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jdom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jdom/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jdom/adapters/AbstractDOMAdapter;->setInternalSubset(Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V

    const-string v2, "http://temporary"

    invoke-virtual {p1}, Lorg/jdom/DocType;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1, v1}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method

.method public getDocument(Ljava/io/File;Z)Lorg/w3c/dom/Document;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/jdom/adapters/AbstractDOMAdapter;->getDocument(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method

.method public abstract getDocument(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;
.end method

.method public setInternalSubset(Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setInternalSubset"

    sget-object v4, Lorg/jdom/adapters/AbstractDOMAdapter;->class$java$lang$String:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "java.lang.String"

    invoke-static {v4}, Lorg/jdom/adapters/AbstractDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/jdom/adapters/AbstractDOMAdapter;->class$java$lang$String:Ljava/lang/Class;

    :cond_1
    new-array v5, v1, [Ljava/lang/Class;

    aput-object v4, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

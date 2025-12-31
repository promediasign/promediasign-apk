.class public Lorg/jdom/transform/JDOMResult;
.super Ljavax/xml/transform/sax/SAXResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/transform/JDOMResult$DocumentBuilder;,
        Lorg/jdom/transform/JDOMResult$FragmentHandler;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JDOMResult.java,v $ $Revision: 1.24 $ $Date: 2007/11/10 05:29:02 $ $Name:  $"

.field public static final JDOM_FEATURE:Ljava/lang/String; = "http://org.jdom.transform.JDOMResult/feature"


# instance fields
.field private factory:Lorg/jdom/JDOMFactory;

.field private queried:Z

.field private result:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXResult;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom/transform/JDOMResult;->queried:Z

    iput-object v0, p0, Lorg/jdom/transform/JDOMResult;->factory:Lorg/jdom/JDOMFactory;

    new-instance v0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;

    invoke-direct {v0, p0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;-><init>(Lorg/jdom/transform/JDOMResult;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXResult;->setHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXResult;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    return-void
.end method

.method private retrieveResult()V
    .locals 1

    iget-object v0, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    check-cast v0, Lorg/jdom/transform/JDOMResult$DocumentBuilder;

    invoke-virtual {v0}, Lorg/jdom/transform/JDOMResult$DocumentBuilder;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom/transform/JDOMResult;->setResult(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDocument()Lorg/jdom/Document;
    .locals 3

    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult;->retrieveResult()V

    iget-object v0, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    instance-of v1, v0, Lorg/jdom/Document;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jdom/Document;

    goto :goto_0

    :cond_0
    instance-of v0, v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/jdom/transform/JDOMResult;->queried:Z

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lorg/jdom/transform/JDOMResult;->getFactory()Lorg/jdom/JDOMFactory;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    :cond_1
    invoke-interface {v0, v1}, Lorg/jdom/JDOMFactory;->document(Lorg/jdom/Element;)Lorg/jdom/Document;

    move-result-object v0

    iget-object v2, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/jdom/Document;->setContent(Ljava/util/Collection;)Lorg/jdom/Document;

    iput-object v0, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v1

    :cond_2
    move-object v0, v1

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom/transform/JDOMResult;->queried:Z

    return-object v0
.end method

.method public getFactory()Lorg/jdom/JDOMFactory;
    .locals 1

    iget-object v0, p0, Lorg/jdom/transform/JDOMResult;->factory:Lorg/jdom/JDOMFactory;

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 3

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0}, Lorg/jdom/transform/JDOMResult;->retrieveResult()V

    iget-object v1, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lorg/jdom/Document;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/jdom/transform/JDOMResult;->queried:Z

    if-nez v2, :cond_2

    check-cast v1, Lorg/jdom/Document;

    invoke-virtual {v1}, Lorg/jdom/Document;->getContent()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom/transform/JDOMResult;->queried:Z

    return-object v0
.end method

.method public setDocument(Lorg/jdom/Document;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/jdom/transform/JDOMResult;->queried:Z

    return-void
.end method

.method public setFactory(Lorg/jdom/JDOMFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/transform/JDOMResult;->factory:Lorg/jdom/JDOMFactory;

    return-void
.end method

.method public setHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0

    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/transform/JDOMResult;->result:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/jdom/transform/JDOMResult;->queried:Z

    return-void
.end method

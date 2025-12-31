.class Lorg/jdom/transform/JDOMResult$FragmentHandler;
.super Lorg/jdom/input/SAXHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/transform/JDOMResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentHandler"
.end annotation


# instance fields
.field private dummyRoot:Lorg/jdom/Element;


# direct methods
.method public constructor <init>(Lorg/jdom/JDOMFactory;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/jdom/input/SAXHandler;-><init>(Lorg/jdom/JDOMFactory;)V

    new-instance p1, Lorg/jdom/Element;

    const-string v0, "root"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lorg/jdom/Element;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/jdom/transform/JDOMResult$FragmentHandler;->dummyRoot:Lorg/jdom/Element;

    invoke-virtual {p0, p1}, Lorg/jdom/input/SAXHandler;->pushElement(Lorg/jdom/Element;)V

    return-void
.end method

.method private getDetachedContent(Lorg/jdom/Element;)Ljava/util/List;
    .locals 2

    invoke-virtual {p1}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getResult()Ljava/util/List;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/jdom/transform/JDOMResult$FragmentHandler;->dummyRoot:Lorg/jdom/Element;

    invoke-direct {p0, v0}, Lorg/jdom/transform/JDOMResult$FragmentHandler;->getDetachedContent(Lorg/jdom/Element;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.class Lorg/jdom/transform/JDOMSource$DocumentReader;
.super Lorg/jdom/output/SAXOutputter;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/transform/JDOMSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentReader"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jdom/output/SAXOutputter;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    const-string v0, "Only JDOM Documents are supported as input"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 2

    .line 2
    instance-of v0, p1, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p1, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-virtual {p1}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->getSource()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/jdom/Document;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jdom/Document;

    invoke-virtual {p0, p1}, Lorg/jdom/output/SAXOutputter;->output(Lorg/jdom/Document;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/jdom/output/SAXOutputter;->output(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :goto_1
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p1}, Lorg/jdom/JDOMException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    const-string v0, "Only JDOM Documents are supported as input"

    invoke-direct {p1, v0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

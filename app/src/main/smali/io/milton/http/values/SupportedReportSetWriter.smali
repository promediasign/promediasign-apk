.class public Lio/milton/http/values/SupportedReportSetWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/values/ValueWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported yet."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public supports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0

    const-class p1, Lio/milton/http/values/SupportedReportSetList;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public writeValue(Lio/milton/http/XmlWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/XmlWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    check-cast p5, Lio/milton/http/values/SupportedReportSetList;

    const-string p2, "d:supported-report-set"

    invoke-virtual {p1, p2}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object p2

    invoke-virtual {p2}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    move-result-object p2

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljavax/xml/namespace/QName;

    const-string p5, "d:supported-report"

    invoke-virtual {p1, p5}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object p5

    invoke-virtual {p5}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    move-result-object p5

    const-string p6, "d:report"

    invoke-virtual {p1, p6}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object p6

    invoke-virtual {p6}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    move-result-object p6

    invoke-virtual {p4}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ":"

    .line 1
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p4}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lio/milton/http/XmlWriter;->writeProperty(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v0

    const-string v1, "xmlns"

    invoke-virtual {p4}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lio/milton/http/XmlWriter$Element;->writeAtt(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    invoke-virtual {v0}, Lio/milton/http/XmlWriter$Element;->noContent()Lio/milton/http/XmlWriter$Element;

    :goto_1
    invoke-virtual {p6}, Lio/milton/http/XmlWriter$Element;->close()Lio/milton/http/XmlWriter$Element;

    invoke-virtual {p5}, Lio/milton/http/XmlWriter$Element;->close()Lio/milton/http/XmlWriter$Element;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lio/milton/http/XmlWriter$Element;->close()Lio/milton/http/XmlWriter$Element;

    return-void
.end method

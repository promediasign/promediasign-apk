.class public Lio/milton/http/webdav/PropFindXmlGeneratorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private valueWriters:Lio/milton/http/values/ValueWriters;


# direct methods
.method public constructor <init>(Lio/milton/http/values/ValueWriters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/webdav/PropFindXmlGeneratorHelper;->valueWriters:Lio/milton/http/values/ValueWriters;

    return-void
.end method

.method private sendErrorProperties(Lio/milton/http/Response$Status;Lio/milton/http/XmlWriter;Ljava/util/Map;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/Response$Status;",
            "Lio/milton/http/XmlWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse$NameAndError;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lio/milton/http/webdav/WebDavProtocol;->NS_DAV:Lio/milton/common/NameSpace;

    invoke-virtual {v0}, Lio/milton/common/NameSpace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "propstat"

    invoke-virtual {p2, v1, v2}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v1

    invoke-virtual {v1}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    move-result-object v1

    invoke-virtual {v0}, Lio/milton/common/NameSpace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v2, "prop"

    invoke-virtual {p2, v0, v2}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v0

    invoke-virtual {v0}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    move-result-object v0

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/http/webdav/PropFindResponse$NameAndError;

    invoke-virtual {v2}, Lio/milton/http/webdav/PropFindResponse$NameAndError;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Lio/milton/http/XmlWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/milton/http/XmlWriter$Element;->close()Lio/milton/http/XmlWriter$Element;

    sget-object p3, Lio/milton/http/webdav/WebDavProtocol;->NS_DAV:Lio/milton/common/NameSpace;

    invoke-virtual {p3}, Lio/milton/common/NameSpace;->getPrefix()Ljava/lang/String;

    move-result-object p3

    const-string p4, "status"

    invoke-virtual {p1}, Lio/milton/http/Response$Status;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p4, p1}, Lio/milton/http/XmlWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/milton/http/XmlWriter$Element;->close()Lio/milton/http/XmlWriter$Element;

    :cond_1
    return-void
.end method

.method private sendKnownProperties(Lio/milton/http/XmlWriter;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/XmlWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lio/milton/http/values/ValueAndType;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v1, Lio/milton/http/Response$Status;->SC_OK:Lio/milton/http/Response$Status;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/milton/http/webdav/PropFindXmlGeneratorHelper;->sendProperties(Lio/milton/http/Response$Status;Lio/milton/http/XmlWriter;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private sendProperties(Lio/milton/http/Response$Status;Lio/milton/http/XmlWriter;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/Response$Status;",
            "Lio/milton/http/XmlWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lio/milton/http/values/ValueAndType;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p2

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lio/milton/http/webdav/WebDavProtocol;->NS_DAV:Lio/milton/common/NameSpace;

    invoke-virtual {v0}, Lio/milton/common/NameSpace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "propstat"

    invoke-virtual {v7, v1, v2}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v1

    invoke-virtual {v1}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    move-result-object v8

    invoke-virtual {v0}, Lio/milton/common/NameSpace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prop"

    invoke-virtual {v7, v0, v1}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v0

    invoke-virtual {v0}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    move-result-object v9

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p3

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object/from16 v12, p4

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/milton/http/values/ValueAndType;

    move-object v13, p0

    iget-object v0, v13, Lio/milton/http/webdav/PropFindXmlGeneratorHelper;->valueWriters:Lio/milton/http/values/ValueWriters;

    move-object/from16 v1, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lio/milton/http/values/ValueWriters;->writeValue(Lio/milton/http/XmlWriter;Ljavax/xml/namespace/QName;Ljava/lang/String;Lio/milton/http/values/ValueAndType;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    move-object v13, p0

    invoke-virtual {v9}, Lio/milton/http/XmlWriter$Element;->close()Lio/milton/http/XmlWriter$Element;

    sget-object v0, Lio/milton/http/webdav/WebDavProtocol;->NS_DAV:Lio/milton/common/NameSpace;

    invoke-virtual {v0}, Lio/milton/common/NameSpace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p1}, Lio/milton/http/Response$Status;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Lio/milton/http/XmlWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lio/milton/http/XmlWriter$Element;->close()Lio/milton/http/XmlWriter$Element;

    goto :goto_1

    :cond_1
    move-object v13, p0

    :goto_1
    return-void
.end method


# virtual methods
.method public appendResponse(Lio/milton/http/XmlWriter;Lio/milton/http/webdav/PropFindResponse;Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/XmlWriter;",
            "Lio/milton/http/webdav/PropFindResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lio/milton/http/webdav/WebDavProtocol;->NS_DAV:Lio/milton/common/NameSpace;

    invoke-virtual {v0}, Lio/milton/common/NameSpace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "response"

    invoke-virtual {p1, v1, v2}, Lio/milton/http/XmlWriter;->begin(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;

    move-result-object v1

    invoke-virtual {v1}, Lio/milton/http/XmlWriter$Element;->open()Lio/milton/http/XmlWriter$Element;

    invoke-virtual {v0}, Lio/milton/common/NameSpace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lio/milton/http/webdav/PropFindResponse;->getHref()Ljava/lang/String;

    move-result-object v3

    const-string v4, "href"

    invoke-virtual {p1, v2, v4, v3}, Lio/milton/http/XmlWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/milton/http/webdav/PropFindResponse;->getStatus()Lio/milton/http/Response$Status;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lio/milton/common/NameSpace;->getPrefix()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lio/milton/http/webdav/PropFindResponse;->getStatus()Lio/milton/http/Response$Status;

    move-result-object p2

    invoke-virtual {p2}, Lio/milton/http/Response$Status;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "status"

    invoke-virtual {p1, p3, p4, p2}, Lio/milton/http/XmlWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lio/milton/http/webdav/PropFindResponse;->getKnownProperties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lio/milton/http/webdav/PropFindResponse;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p3, v0, v2}, Lio/milton/http/webdav/PropFindXmlGeneratorHelper;->sendKnownProperties(Lio/milton/http/XmlWriter;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/milton/http/webdav/PropFindResponse;->getErrorProperties()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Lio/milton/http/webdav/PropFindResponse;->getErrorProperties()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/milton/http/Response$Status;

    invoke-virtual {p2}, Lio/milton/http/webdav/PropFindResponse;->getErrorProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v0, p1, p3, v2}, Lio/milton/http/webdav/PropFindXmlGeneratorHelper;->sendErrorProperties(Lio/milton/http/Response$Status;Lio/milton/http/XmlWriter;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lio/milton/http/XmlWriter$Element;->close()Lio/milton/http/XmlWriter$Element;

    return-void
.end method

.method public appendResponses(Lio/milton/http/XmlWriter;Ljava/util/List;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/XmlWriter;",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/milton/http/webdav/PropFindResponse;

    invoke-virtual {p0, p1, v0, p3, p4}, Lio/milton/http/webdav/PropFindXmlGeneratorHelper;->appendResponse(Lio/milton/http/XmlWriter;Lio/milton/http/webdav/PropFindResponse;Ljava/util/Map;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findNameSpaces(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lio/milton/http/webdav/WebDavProtocol;->NS_DAV:Lio/milton/common/NameSpace;

    invoke-virtual {v1}, Lio/milton/common/NameSpace;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lio/milton/common/NameSpace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "urn:ietf:params:xml:ns:caldav"

    const-string v2, "cal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http://calendarserver.org/ns/"

    const-string v2, "cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "urn:ietf:params:xml:ns:carddav"

    const-string v2, "card"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/http/webdav/PropFindResponse;

    invoke-virtual {v2}, Lio/milton/http/webdav/PropFindResponse;->getKnownProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ns"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public generateNamespaceDeclarations(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " xmlns:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

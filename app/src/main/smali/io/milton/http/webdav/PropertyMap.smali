.class public Lio/milton/http/webdav/PropertyMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/webdav/PropertyMap$WritableStandardProperty;,
        Lio/milton/http/webdav/PropertyMap$StandardProperty;
    }
.end annotation


# instance fields
.field private final nameSpace:Ljava/lang/String;

.field private final writersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/milton/http/webdav/PropertyMap$StandardProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/milton/http/webdav/PropertyMap;->writersMap:Ljava/util/Map;

    iput-object p1, p0, Lio/milton/http/webdav/PropertyMap;->nameSpace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Lio/milton/http/webdav/PropertyMap$StandardProperty;)V
    .locals 2

    iget-object v0, p0, Lio/milton/http/webdav/PropertyMap;->writersMap:Ljava/util/Map;

    invoke-interface {p1}, Lio/milton/http/webdav/PropertyMap$StandardProperty;->fieldName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAllPropertyNames(Lio/milton/resource/Resource;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/Resource;",
            ")",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lio/milton/http/webdav/PropertyMap;->writersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljavax/xml/namespace/QName;

    sget-object v3, Lio/milton/http/webdav/WebDavProtocol;->NS_DAV:Lio/milton/common/NameSpace;

    invoke-virtual {v3}, Lio/milton/common/NameSpace;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getProperty(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/milton/http/webdav/PropertyMap;->nameSpace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lio/milton/http/webdav/PropertyMap;->writersMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/milton/http/webdav/PropertyMap$StandardProperty;

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    instance-of v0, p2, Lio/milton/resource/PropFindableResource;

    if-eqz v0, :cond_2

    check-cast p2, Lio/milton/resource/PropFindableResource;

    invoke-interface {p1, p2}, Lio/milton/http/webdav/PropertyMap$StandardProperty;->getValue(Lio/milton/resource/PropFindableResource;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public getPropertyMetaData(Ljavax/xml/namespace/QName;Lio/milton/resource/Resource;)Lio/milton/property/PropertySource$PropertyMetaData;
    .locals 2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/milton/http/webdav/PropertyMap;->nameSpace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lio/milton/property/PropertySource$PropertyMetaData;->UNKNOWN:Lio/milton/property/PropertySource$PropertyMetaData;

    return-object p1

    :cond_0
    iget-object v0, p0, Lio/milton/http/webdav/PropertyMap;->writersMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/milton/http/webdav/PropertyMap$StandardProperty;

    if-nez p1, :cond_1

    sget-object p1, Lio/milton/property/PropertySource$PropertyMetaData;->UNKNOWN:Lio/milton/property/PropertySource$PropertyMetaData;

    return-object p1

    :cond_1
    instance-of p2, p2, Lio/milton/resource/PropFindableResource;

    if-eqz p2, :cond_3

    instance-of p2, p1, Lio/milton/http/webdav/PropertyMap$WritableStandardProperty;

    if-eqz p2, :cond_2

    new-instance p2, Lio/milton/property/PropertySource$PropertyMetaData;

    sget-object v0, Lio/milton/property/PropertySource$PropertyAccessibility;->WRITABLE:Lio/milton/property/PropertySource$PropertyAccessibility;

    invoke-interface {p1}, Lio/milton/http/webdav/PropertyMap$StandardProperty;->getValueClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lio/milton/property/PropertySource$PropertyMetaData;-><init>(Lio/milton/property/PropertySource$PropertyAccessibility;Ljava/lang/Class;)V

    return-object p2

    :cond_2
    new-instance p2, Lio/milton/property/PropertySource$PropertyMetaData;

    sget-object v0, Lio/milton/property/PropertySource$PropertyAccessibility;->READ_ONLY:Lio/milton/property/PropertySource$PropertyAccessibility;

    invoke-interface {p1}, Lio/milton/http/webdav/PropertyMap$StandardProperty;->getValueClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lio/milton/property/PropertySource$PropertyMetaData;-><init>(Lio/milton/property/PropertySource$PropertyAccessibility;Ljava/lang/Class;)V

    return-object p2

    :cond_3
    sget-object p1, Lio/milton/property/PropertySource$PropertyMetaData;->UNKNOWN:Lio/milton/property/PropertySource$PropertyMetaData;

    return-object p1
.end method

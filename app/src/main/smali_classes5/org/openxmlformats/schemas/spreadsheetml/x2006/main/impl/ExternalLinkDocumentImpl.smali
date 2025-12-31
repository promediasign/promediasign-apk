.class public Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/ExternalLinkDocumentImpl;
.super Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/ExternalLinkDocument;


# static fields
.field private static final EXTERNALLINK$0:Lorg/apache/poi/javax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    const-string v2, "externalLink"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/ExternalLinkDocumentImpl;->EXTERNALLINK$0:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method


# virtual methods
.method public addNewExternalLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/ExternalLinkDocumentImpl;->EXTERNALLINK$0:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getExternalLink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/ExternalLinkDocumentImpl;->EXTERNALLINK$0:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setExternalLink(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/ExternalLinkDocumentImpl;->EXTERNALLINK$0:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalLink;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

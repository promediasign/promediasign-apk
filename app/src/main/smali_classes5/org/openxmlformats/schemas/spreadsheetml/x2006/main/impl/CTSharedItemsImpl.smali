.class public Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;
.super Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;


# static fields
.field private static final B$4:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final CONTAINSBLANK$20:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final CONTAINSDATE$16:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final CONTAINSINTEGER$26:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final CONTAINSMIXEDTYPES$22:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final CONTAINSNONDATE$14:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final CONTAINSNUMBER$24:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final CONTAINSSEMIMIXEDTYPES$12:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final CONTAINSSTRING$18:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final COUNT$36:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final D$10:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final E$6:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final LONGTEXT$38:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final M$0:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final MAXDATE$34:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final MAXVALUE$30:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final MINDATE$32:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final MINVALUE$28:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final N$2:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final S$8:Lorg/apache/poi/javax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "m"

    const-string v2, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->M$0:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "n"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->N$2:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "b"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->B$4:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "e"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->E$6:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "s"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->S$8:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "d"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->D$10:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "containsSemiMixedTypes"

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSSEMIMIXEDTYPES$12:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "containsNonDate"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSNONDATE$14:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "containsDate"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSDATE$16:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "containsString"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSSTRING$18:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "containsBlank"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSBLANK$20:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "containsMixedTypes"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSMIXEDTYPES$22:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "containsNumber"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSNUMBER$24:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "containsInteger"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSINTEGER$26:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "minValue"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MINVALUE$28:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "maxValue"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MAXVALUE$30:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "minDate"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MINDATE$32:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "maxDate"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MAXDATE$34:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "count"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->COUNT$36:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "longText"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->LONGTEXT$38:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method


# virtual methods
.method public addNewB()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->B$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewD()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->D$10:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewE()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->E$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewM()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->M$0:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewN()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->N$2:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewS()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->S$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->B$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;

    if-eqz p1, :cond_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->B$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v2, v3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_all_element_users(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl$1BList;

    invoke-direct {v1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl$1BList;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContainsBlank()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSBLANK$20:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getBooleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContainsDate()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSDATE$16:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getBooleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContainsInteger()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSINTEGER$26:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getBooleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContainsMixedTypes()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSMIXEDTYPES$22:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getBooleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContainsNonDate()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSNONDATE$14:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getBooleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContainsNumber()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSNUMBER$24:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getBooleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContainsSemiMixedTypes()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSSEMIMIXEDTYPES$12:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getBooleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContainsString()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSSTRING$18:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getBooleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCount()J
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->COUNT$36:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    monitor-exit v0

    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getLongValue()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->D$10:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;

    if-eqz p1, :cond_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->D$10:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v2, v3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_all_element_users(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl$1DList;

    invoke-direct {v1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl$1DList;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->E$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;

    if-eqz p1, :cond_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getEArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->E$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v2, v3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_all_element_users(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl$1EList;

    invoke-direct {v1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl$1EList;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLongText()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->LONGTEXT$38:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getBooleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->M$0:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;

    if-eqz p1, :cond_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->M$0:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v2, v3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_all_element_users(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl$1MList;

    invoke-direct {v1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl$1MList;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MAXDATE$34:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getCalendarValue()Ljava/util/Calendar;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxValue()D
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MAXVALUE$30:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    monitor-exit v0

    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getDoubleValue()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MINDATE$32:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getCalendarValue()Ljava/util/Calendar;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMinValue()D
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MINVALUE$28:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    monitor-exit v0

    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getDoubleValue()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->N$2:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;

    if-eqz p1, :cond_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getNArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->N$2:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v2, v3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_all_element_users(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl$1NList;

    invoke-direct {v1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl$1NList;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->S$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;

    if-eqz p1, :cond_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->S$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v2, v3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_all_element_users(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl$1SList;

    invoke-direct {v1, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl$1SList;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public insertNewB(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->B$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public insertNewD(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->D$10:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public insertNewE(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->E$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public insertNewM(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->M$0:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public insertNewN(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->N$2:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public insertNewS(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->S$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isSetContainsBlank()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSBLANK$20:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSetContainsDate()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSDATE$16:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSetContainsInteger()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSINTEGER$26:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSetContainsMixedTypes()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSMIXEDTYPES$22:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSetContainsNonDate()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSNONDATE$14:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSetContainsNumber()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSNUMBER$24:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSetContainsSemiMixedTypes()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSSEMIMIXEDTYPES$12:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSetContainsString()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSSTRING$18:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSetCount()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->COUNT$36:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSetLongText()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->LONGTEXT$38:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSetMaxDate()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MAXDATE$34:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSetMaxValue()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MAXVALUE$30:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSetMinDate()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MINDATE$32:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSetMinValue()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MINVALUE$28:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeB(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->B$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeD(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->D$10:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeE(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->E$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeM(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->M$0:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeN(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->N$2:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeS(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->S$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->B$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->B$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setContainsBlank(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSBLANK$20:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setBooleanValue(Z)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setContainsDate(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSDATE$16:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setBooleanValue(Z)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setContainsInteger(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSINTEGER$26:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setBooleanValue(Z)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setContainsMixedTypes(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSMIXEDTYPES$22:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setBooleanValue(Z)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setContainsNonDate(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSNONDATE$14:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setBooleanValue(Z)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setContainsNumber(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSNUMBER$24:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setBooleanValue(Z)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setContainsSemiMixedTypes(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSSEMIMIXEDTYPES$12:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setBooleanValue(Z)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setContainsString(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSSTRING$18:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setBooleanValue(Z)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCount(J)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->COUNT$36:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1, p2}, Lorg/apache/xmlbeans/SimpleValue;->setLongValue(J)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->D$10:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->D$10:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setEArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->E$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setEArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->E$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLongText(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->LONGTEXT$38:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setBooleanValue(Z)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->M$0:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->M$0:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMaxDate(Ljava/util/Calendar;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MAXDATE$34:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setCalendarValue(Ljava/util/Calendar;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMaxValue(D)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MAXVALUE$30:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1, p2}, Lorg/apache/xmlbeans/SimpleValue;->setDoubleValue(D)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMinDate(Ljava/util/Calendar;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MINDATE$32:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setCalendarValue(Ljava/util/Calendar;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMinValue(D)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MINVALUE$28:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1, p2}, Lorg/apache/xmlbeans/SimpleValue;->setDoubleValue(D)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->N$2:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->N$2:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->S$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->S$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sizeOfBArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->B$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sizeOfDArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->D$10:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sizeOfEArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->E$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sizeOfMArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->M$0:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sizeOfNArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->N$2:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sizeOfSArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->S$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetContainsBlank()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSBLANK$20:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetContainsDate()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSDATE$16:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetContainsInteger()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSINTEGER$26:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetContainsMixedTypes()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSMIXEDTYPES$22:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetContainsNonDate()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSNONDATE$14:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetContainsNumber()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSNUMBER$24:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetContainsSemiMixedTypes()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSSEMIMIXEDTYPES$12:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetContainsString()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSSTRING$18:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetCount()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->COUNT$36:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetLongText()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->LONGTEXT$38:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetMaxDate()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MAXDATE$34:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetMaxValue()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MAXVALUE$30:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetMinDate()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MINDATE$32:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetMinValue()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MINVALUE$28:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetContainsBlank()Lorg/apache/xmlbeans/XmlBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSBLANK$20:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetContainsDate()Lorg/apache/xmlbeans/XmlBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSDATE$16:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetContainsInteger()Lorg/apache/xmlbeans/XmlBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSINTEGER$26:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetContainsMixedTypes()Lorg/apache/xmlbeans/XmlBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSMIXEDTYPES$22:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetContainsNonDate()Lorg/apache/xmlbeans/XmlBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSNONDATE$14:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetContainsNumber()Lorg/apache/xmlbeans/XmlBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSNUMBER$24:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetContainsSemiMixedTypes()Lorg/apache/xmlbeans/XmlBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSSEMIMIXEDTYPES$12:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetContainsString()Lorg/apache/xmlbeans/XmlBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSSTRING$18:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->COUNT$36:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlUnsignedInt;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetLongText()Lorg/apache/xmlbeans/XmlBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->LONGTEXT$38:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetMaxDate()Lorg/apache/xmlbeans/XmlDateTime;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MAXDATE$34:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlDateTime;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetMaxValue()Lorg/apache/xmlbeans/XmlDouble;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MAXVALUE$30:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlDouble;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetMinDate()Lorg/apache/xmlbeans/XmlDateTime;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MINDATE$32:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlDateTime;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetMinValue()Lorg/apache/xmlbeans/XmlDouble;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MINVALUE$28:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlDouble;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xsetContainsBlank(Lorg/apache/xmlbeans/XmlBoolean;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSBLANK$20:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

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

.method public xsetContainsDate(Lorg/apache/xmlbeans/XmlBoolean;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSDATE$16:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

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

.method public xsetContainsInteger(Lorg/apache/xmlbeans/XmlBoolean;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSINTEGER$26:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

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

.method public xsetContainsMixedTypes(Lorg/apache/xmlbeans/XmlBoolean;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSMIXEDTYPES$22:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

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

.method public xsetContainsNonDate(Lorg/apache/xmlbeans/XmlBoolean;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSNONDATE$14:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

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

.method public xsetContainsNumber(Lorg/apache/xmlbeans/XmlBoolean;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSNUMBER$24:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

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

.method public xsetContainsSemiMixedTypes(Lorg/apache/xmlbeans/XmlBoolean;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSSEMIMIXEDTYPES$12:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

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

.method public xsetContainsString(Lorg/apache/xmlbeans/XmlBoolean;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->CONTAINSSTRING$18:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

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

.method public xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->COUNT$36:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlUnsignedInt;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlUnsignedInt;

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

.method public xsetLongText(Lorg/apache/xmlbeans/XmlBoolean;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->LONGTEXT$38:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlBoolean;

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

.method public xsetMaxDate(Lorg/apache/xmlbeans/XmlDateTime;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MAXDATE$34:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlDateTime;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlDateTime;

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

.method public xsetMaxValue(Lorg/apache/xmlbeans/XmlDouble;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MAXVALUE$30:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlDouble;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlDouble;

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

.method public xsetMinDate(Lorg/apache/xmlbeans/XmlDateTime;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MINDATE$32:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlDateTime;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlDateTime;

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

.method public xsetMinValue(Lorg/apache/xmlbeans/XmlDouble;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/impl/CTSharedItemsImpl;->MINVALUE$28:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlDouble;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlDouble;

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

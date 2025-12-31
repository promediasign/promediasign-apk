.class public Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;
.super Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineChart;


# static fields
.field private static final AXID$18:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final DLBLS$6:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final DROPLINES$8:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final EXTLST$20:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final GROUPING$0:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final HILOWLINES$10:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final MARKER$14:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final SER$4:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final SMOOTH$16:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final UPDOWNBARS$12:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final VARYCOLORS$2:Lorg/apache/poi/javax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "grouping"

    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/chart"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->GROUPING$0:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "varyColors"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->VARYCOLORS$2:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "ser"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SER$4:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "dLbls"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->DLBLS$6:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "dropLines"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->DROPLINES$8:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "hiLowLines"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->HILOWLINES$10:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "upDownBars"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->UPDOWNBARS$12:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "marker"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->MARKER$14:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "smooth"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SMOOTH$16:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "axId"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->AXID$18:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "extLst"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->EXTLST$20:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method


# virtual methods
.method public addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->AXID$18:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->DLBLS$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewDropLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->DROPLINES$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->EXTLST$20:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewGrouping()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGrouping;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->GROUPING$0:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGrouping;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewHiLowLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->HILOWLINES$10:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->MARKER$14:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewSer()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SER$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewSmooth()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SMOOTH$16:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewUpDownBars()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->UPDOWNBARS$12:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->VARYCOLORS$2:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAxIdArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->AXID$18:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

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

.method public getAxIdArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
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

    sget-object v3, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->AXID$18:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v2, v3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_all_element_users(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

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

.method public getAxIdList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl$1AxIdList;

    invoke-direct {v1, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl$1AxIdList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDLbls()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->DLBLS$6:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

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

.method public getDropLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->DROPLINES$8:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

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

.method public getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->EXTLST$20:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

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

.method public getGrouping()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGrouping;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->GROUPING$0:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGrouping;

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

.method public getHiLowLines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->HILOWLINES$10:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

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

.method public getMarker()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->MARKER$14:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

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

.method public getSerArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SER$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;

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

.method public getSerArray()[Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;
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

    sget-object v3, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SER$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v2, v3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_all_element_users(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;

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

.method public getSerList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    new-instance v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl$1SerList;

    invoke-direct {v1, p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl$1SerList;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSmooth()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SMOOTH$16:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

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

.method public getUpDownBars()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->UPDOWNBARS$12:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;

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

.method public getVaryColors()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->VARYCOLORS$2:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

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

.method public insertNewAxId(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->AXID$18:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public insertNewSer(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SER$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isSetDLbls()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->DLBLS$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

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

.method public isSetDropLines()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->DROPLINES$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

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

.method public isSetExtLst()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->EXTLST$20:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

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

.method public isSetHiLowLines()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->HILOWLINES$10:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

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

.method public isSetMarker()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->MARKER$14:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

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

.method public isSetSmooth()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SMOOTH$16:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

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

.method public isSetUpDownBars()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->UPDOWNBARS$12:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

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

.method public isSetVaryColors()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->VARYCOLORS$2:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

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

.method public removeAxId(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->AXID$18:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public removeSer(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SER$4:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public setAxIdArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->AXID$18:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

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

.method public setAxIdArray([Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->AXID$18:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public setDLbls(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->DLBLS$6:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDLbls;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDropLines(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->DROPLINES$8:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->EXTLST$20:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setGrouping(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGrouping;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->GROUPING$0:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGrouping;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGrouping;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTGrouping;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setHiLowLines(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->HILOWLINES$10:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMarker(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->MARKER$14:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

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

.method public setSerArray(ILorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SER$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

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

.method public setSerArray([Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLineSer;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SER$4:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public setSmooth(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SMOOTH$16:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

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

.method public setUpDownBars(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->UPDOWNBARS$12:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUpDownBars;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVaryColors(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->VARYCOLORS$2:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;

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

.method public sizeOfAxIdArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->AXID$18:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public sizeOfSerArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SER$4:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetDLbls()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->DLBLS$6:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetDropLines()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->DROPLINES$8:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetExtLst()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->EXTLST$20:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetHiLowLines()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->HILOWLINES$10:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetMarker()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->MARKER$14:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetSmooth()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->SMOOTH$16:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetUpDownBars()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->UPDOWNBARS$12:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsetVaryColors()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineChartImpl;->VARYCOLORS$2:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

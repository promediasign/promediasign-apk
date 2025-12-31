.class public Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;
.super Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/AnnotatedImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;


# static fields
.field private static final ABSTRACT$28:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final BLOCK$32:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final COMPLEXTYPE$2:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final DEFAULT$22:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final FINAL$30:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final FIXED$24:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final FORM$34:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final KEY$6:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final KEYREF$8:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final MAXOCCURS$20:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final MINOCCURS$18:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final NAME$10:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final NILLABLE$26:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final REF$12:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final SIMPLETYPE$0:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final SUBSTITUTIONGROUP$16:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final TYPE$14:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final UNIQUE$4:Lorg/apache/poi/javax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "simpleType"

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->SIMPLETYPE$0:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "complexType"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->COMPLEXTYPE$2:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "unique"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->UNIQUE$4:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "key"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEY$6:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "keyref"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEYREF$8:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "name"

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->NAME$10:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "ref"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->REF$12:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "type"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->TYPE$14:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "substitutionGroup"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->SUBSTITUTIONGROUP$16:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "minOccurs"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->MINOCCURS$18:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "maxOccurs"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->MAXOCCURS$20:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "default"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->DEFAULT$22:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "fixed"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FIXED$24:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "nillable"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->NILLABLE$26:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "abstract"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->ABSTRACT$28:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "final"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FINAL$30:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "block"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->BLOCK$32:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "form"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FORM$34:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/AnnotatedImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method


# virtual methods
.method public addNewComplexType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalComplexType;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->COMPLEXTYPE$2:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalComplexType;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewKey()Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEY$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewKeyref()Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEYREF$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->SIMPLETYPE$0:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addNewUnique()Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->UNIQUE$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAbstract()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->ABSTRACT$28:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public getBlock()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->BLOCK$32:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getObjectValue()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getComplexType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalComplexType;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->COMPLEXTYPE$2:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalComplexType;

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

.method public getDefault()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->DEFAULT$22:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getStringValue()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFinal()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FINAL$30:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getObjectValue()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFixed()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FIXED$24:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getStringValue()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getForm()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FORM$34:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getKeyArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEY$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;

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

.method public getKeyArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
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

    sget-object v3, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEY$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v2, v3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_all_element_users(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;

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

.method public getKeyrefArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEYREF$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;

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

.method public getKeyrefArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;
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

    sget-object v3, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEYREF$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v2, v3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_all_element_users(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;

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

.method public getMaxOccurs()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->MAXOCCURS$20:Lorg/apache/poi/javax/xml/namespace/QName;

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

    return-object v0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getObjectValue()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMinOccurs()Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->MINOCCURS$18:Lorg/apache/poi/javax/xml/namespace/QName;

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

    return-object v0

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->NAME$10:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getStringValue()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNillable()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->NILLABLE$26:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public getRef()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->REF$12:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->SIMPLETYPE$0:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

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

.method public getSubstitutionGroup()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->SUBSTITUTIONGROUP$16:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getType()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->TYPE$14:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUniqueArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->UNIQUE$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;

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

.method public getUniqueArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
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

    sget-object v3, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->UNIQUE$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v2, v3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_all_element_users(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;

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

.method public insertNewKey(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEY$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public insertNewKeyref(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEYREF$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public insertNewUnique(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->UNIQUE$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isSetAbstract()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->ABSTRACT$28:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public isSetBlock()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->BLOCK$32:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public isSetComplexType()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->COMPLEXTYPE$2:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public isSetDefault()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->DEFAULT$22:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public isSetFinal()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FINAL$30:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public isSetFixed()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FIXED$24:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public isSetForm()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FORM$34:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public isSetMaxOccurs()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->MAXOCCURS$20:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public isSetMinOccurs()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->MINOCCURS$18:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public isSetName()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->NAME$10:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public isSetNillable()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->NILLABLE$26:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public isSetRef()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->REF$12:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public isSetSimpleType()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->SIMPLETYPE$0:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public isSetSubstitutionGroup()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->SUBSTITUTIONGROUP$16:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public isSetType()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->TYPE$14:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public removeKey(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEY$6:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public removeKeyref(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEYREF$8:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public removeUnique(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->UNIQUE$4:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public setAbstract(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->ABSTRACT$28:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public setBlock(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->BLOCK$32:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setObjectValue(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setComplexType(Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalComplexType;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->COMPLEXTYPE$2:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalComplexType;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalComplexType;

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

.method public setDefault(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->DEFAULT$22:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setStringValue(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFinal(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FINAL$30:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setObjectValue(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFixed(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FIXED$24:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setStringValue(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setForm(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FORM$34:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setKeyArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEY$6:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;

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

.method public setKeyArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEY$6:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public setKeyrefArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEYREF$8:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;

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

.method public setKeyrefArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/KeyrefDocument$Keyref;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEYREF$8:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public setMaxOccurs(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->MAXOCCURS$20:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setObjectValue(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMinOccurs(Ljava/math/BigInteger;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->MINOCCURS$18:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setBigIntegerValue(Ljava/math/BigInteger;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->NAME$10:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setStringValue(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNillable(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->NILLABLE$26:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public setRef(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->REF$12:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setQNameValue(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSimpleType(Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->SIMPLETYPE$0:Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

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

.method public setSubstitutionGroup(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->SUBSTITUTIONGROUP$16:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setQNameValue(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setType(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->TYPE$14:Lorg/apache/poi/javax/xml/namespace/QName;

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
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SimpleValue;->setQNameValue(Lorg/apache/poi/javax/xml/namespace/QName;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setUniqueArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->UNIQUE$4:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2, p1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;

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

.method public setUniqueArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/Keybase;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    sget-object v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->UNIQUE$4:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public sizeOfKeyArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEY$6:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public sizeOfKeyrefArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->KEYREF$8:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public sizeOfUniqueArray()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->UNIQUE$4:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetAbstract()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->ABSTRACT$28:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetBlock()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->BLOCK$32:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetComplexType()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->COMPLEXTYPE$2:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetDefault()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->DEFAULT$22:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetFinal()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FINAL$30:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetFixed()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FIXED$24:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetForm()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FORM$34:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetMaxOccurs()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->MAXOCCURS$20:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetMinOccurs()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->MINOCCURS$18:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetName()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->NAME$10:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetNillable()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->NILLABLE$26:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetRef()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->REF$12:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetSimpleType()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->SIMPLETYPE$0:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetSubstitutionGroup()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->SUBSTITUTIONGROUP$16:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public unsetType()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->TYPE$14:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public xgetAbstract()Lorg/apache/xmlbeans/XmlBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->ABSTRACT$28:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public xgetBlock()Lorg/apache/xmlbeans/impl/xb/xsdschema/BlockSet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->BLOCK$32:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/BlockSet;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetDefault()Lorg/apache/xmlbeans/XmlString;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->DEFAULT$22:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlString;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetFinal()Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationSet;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FINAL$30:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationSet;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetFixed()Lorg/apache/xmlbeans/XmlString;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FIXED$24:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlString;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetForm()Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FORM$34:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetMaxOccurs()Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->MAXOCCURS$20:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;

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

.method public xgetMinOccurs()Lorg/apache/xmlbeans/XmlNonNegativeInteger;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->MINOCCURS$18:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlNonNegativeInteger;

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_value(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlNonNegativeInteger;

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

.method public xgetName()Lorg/apache/xmlbeans/XmlNCName;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->NAME$10:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlNCName;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetNillable()Lorg/apache/xmlbeans/XmlBoolean;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->NILLABLE$26:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public xgetRef()Lorg/apache/xmlbeans/XmlQName;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->REF$12:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlQName;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetSubstitutionGroup()Lorg/apache/xmlbeans/XmlQName;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->SUBSTITUTIONGROUP$16:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlQName;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xgetType()Lorg/apache/xmlbeans/XmlQName;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->TYPE$14:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlQName;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public xsetAbstract(Lorg/apache/xmlbeans/XmlBoolean;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->ABSTRACT$28:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public xsetBlock(Lorg/apache/xmlbeans/impl/xb/xsdschema/BlockSet;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->BLOCK$32:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/BlockSet;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/BlockSet;

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

.method public xsetDefault(Lorg/apache/xmlbeans/XmlString;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->DEFAULT$22:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlString;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlString;

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

.method public xsetFinal(Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationSet;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FINAL$30:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationSet;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationSet;

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

.method public xsetFixed(Lorg/apache/xmlbeans/XmlString;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FIXED$24:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlString;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlString;

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

.method public xsetForm(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->FORM$34:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice;

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

.method public xsetMaxOccurs(Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->MAXOCCURS$20:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/AllNNI;

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

.method public xsetMinOccurs(Lorg/apache/xmlbeans/XmlNonNegativeInteger;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->MINOCCURS$18:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlNonNegativeInteger;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlNonNegativeInteger;

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

.method public xsetName(Lorg/apache/xmlbeans/XmlNCName;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->NAME$10:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlNCName;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlNCName;

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

.method public xsetNillable(Lorg/apache/xmlbeans/XmlBoolean;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->NILLABLE$26:Lorg/apache/poi/javax/xml/namespace/QName;

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

.method public xsetRef(Lorg/apache/xmlbeans/XmlQName;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->REF$12:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlQName;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlQName;

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

.method public xsetSubstitutionGroup(Lorg/apache/xmlbeans/XmlQName;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->SUBSTITUTIONGROUP$16:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlQName;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlQName;

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

.method public xsetType(Lorg/apache/xmlbeans/XmlQName;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/xb/xsdschema/impl/ElementImpl;->TYPE$14:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlQName;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlQName;

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

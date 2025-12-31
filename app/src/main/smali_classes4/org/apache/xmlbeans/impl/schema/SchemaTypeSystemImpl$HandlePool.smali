.class Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlePool"
.end annotation


# instance fields
.field private _componentsToHandles:Ljava/util/Map;

.field private _handlesToRefs:Ljava/util/Map;

.field private _started:Z

.field private final synthetic this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_handlesToRefs:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_componentsToHandles:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$500(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_componentsToHandles:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_handlesToRefs:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_started:Z

    return p0
.end method

.method private addUniqueHandle(Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    move-object v1, p2

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_handlesToRefs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_handlesToRefs:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getComponentRef()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public handleForAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->addUniqueHandle(Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot supply handles for types from another type system"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleForAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaAttributeGroup;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "AttributeGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->addUniqueHandle(Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot supply handles for types from another type system"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleForComponent(Lorg/apache/xmlbeans/SchemaComponent;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-ne v0, v1, :cond_7

    instance-of v0, p1, Lorg/apache/xmlbeans/SchemaType;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/apache/xmlbeans/SchemaGlobalElement;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/xmlbeans/SchemaGlobalElement;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForElement(Lorg/apache/xmlbeans/SchemaGlobalElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Lorg/apache/xmlbeans/SchemaModelGroup;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/apache/xmlbeans/SchemaModelGroup;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p1, Lorg/apache/xmlbeans/SchemaAttributeGroup;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/apache/xmlbeans/SchemaAttributeGroup;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of v0, p1, Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Component type cannot have a handle"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot supply handles for types from another type system"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleForElement(Lorg/apache/xmlbeans/SchemaGlobalElement;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Element"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->addUniqueHandle(Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot supply handles for types from another type system"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleForIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "IdentityConstraint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->addUniqueHandle(Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot supply handles for types from another type system"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleForModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaModelGroup;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "ModelGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->addUniqueHandle(Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot supply handles for types from another type system"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->this$0:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-ne v0, v1, :cond_7

    .line 16
    .line 17
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_componentsToHandles:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    if-nez v0, :cond_6

    .line 26
    .line 27
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_4

    .line 32
    .line 33
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "Doc"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "AttrType"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->isAttribute()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    const-string v1, "Attr"

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const-string v1, "Elem"

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    const-string v1, ""

    .line 90
    .line 91
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    const/high16 v3, -0x80000000

    .line 100
    .line 101
    or-int/2addr v2, v3

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const/4 v3, 0x4

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v3, "Type"

    .line 116
    .line 117
    if-nez v0, :cond_5

    .line 118
    .line 119
    const-string v0, "Anon"

    .line 120
    .line 121
    invoke-static {v0, v2, v3}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    goto :goto_1

    .line 126
    :cond_5
    new-instance v4, Ljava/lang/StringBuffer;

    .line 127
    .line 128
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/NameUtil;->upperCamelCase(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    :goto_1
    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->addUniqueHandle(Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    :cond_6
    return-object v0

    .line 160
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 161
    .line 162
    const-string v0, "Cannot supply handles for types from another type system"

    .line 163
    .line 164
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1
.end method

.method public refForHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent$Ref;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_handlesToRefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaComponent$Ref;

    return-object p1
.end method

.method public startWriteMode()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_started:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_componentsToHandles:Ljava/util/Map;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_handlesToRefs:Ljava/util/Map;

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

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_handlesToRefs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/SchemaComponent$Ref;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/SchemaComponent$Ref;->getComponent()Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->_componentsToHandles:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.class public final Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaType;
.implements Lorg/apache/xmlbeans/impl/values/TypeStoreUserFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl$SequencerImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NO_PROPERTIES:[Lorg/apache/xmlbeans/SchemaProperty;

.field static synthetic class$org$apache$xmlbeans$SchemaType:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$impl$schema$SchemaTypeImpl:Ljava/lang/Class;


# instance fields
.field private _abs:Z

.field private _annotation:Lorg/apache/xmlbeans/SchemaAnnotation;

.field private _anonymousTyperefs:[Lorg/apache/xmlbeans/SchemaType$Ref;

.field private _anonymousUnionMemberOrdinal:I

.field private _attFormDefault:Ljava/lang/String;

.field private volatile _attrToIndexMap:Ljava/util/Map;

.field private _attributeModel:Lorg/apache/xmlbeans/SchemaAttributeModel;

.field private _baseDepth:I

.field private _baseEnumTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

.field private _baseTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

.field private _blockExt:Z

.field private _blockRest:Z

.field private _builtinTypeCode:I

.field private _chameleon:Z

.field private _complexTypeVariety:I

.field private _container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

.field private volatile _containerField:Lorg/apache/xmlbeans/SchemaField;

.field private volatile _containerFieldCode:I

.field private volatile _containerFieldIndex:I

.field private volatile _containerFieldRef:Lorg/apache/xmlbeans/SchemaComponent$Ref;

.field private _contentBasedOnTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

.field private _contentModel:Lorg/apache/xmlbeans/SchemaParticle;

.field private final _ctrArgs:[Ljava/lang/Object;

.field private _decimalSize:I

.field private _derivationType:I

.field private _elemFormDefault:Ljava/lang/String;

.field private volatile _eltToIndexMap:Ljava/util/Map;

.field private _enumerationValues:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private _facetArray:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private _filename:Ljava/lang/String;

.field private _finalExt:Z

.field private _finalList:Z

.field private _finalRest:Z

.field private _finalUnion:Z

.field private _fixedFacetArray:[Z

.field private _fullJavaImplName:Ljava/lang/String;

.field private _fullJavaName:Ljava/lang/String;

.field private volatile _groupReferenceContext:[Lorg/apache/poi/javax/xml/namespace/QName;

.field private _hasAllContent:Z

.field private _hasPatterns:Z

.field private _hasWildcardAttributes:Z

.field private _hasWildcardElements:Z

.field private volatile _implNotAvailable:Z

.field private _interfaces:[Lorg/apache/xmlbeans/InterfaceExtension;

.field private _isAttributeType:Z

.field private _isBounded:Z

.field private _isCompiled:Z

.field private _isDocumentType:Z

.field private _isFinite:Z

.field private _isNumeric:Z

.field private _isSimpleType:Z

.field private _isUnionOfLists:Z

.field private volatile _javaClass:Ljava/lang/Class;

.field private volatile _javaEnumClass:Ljava/lang/Class;

.field private volatile _javaImplClass:Ljava/lang/Class;

.field private volatile _javaImplConstructor:Ljava/lang/reflect/Constructor;

.field private volatile _javaImplConstructor2:Ljava/lang/reflect/Constructor;

.field private _listItemTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

.field private volatile _listOfStringEnum:Ljava/util/List;

.field private volatile _localElts:[Lorg/apache/xmlbeans/SchemaLocalElement;

.field private volatile _lookupStringEnum:Ljava/util/Map;

.field private volatile _lookupStringEnumEntry:Ljava/util/Map;

.field private _name:Lorg/apache/poi/javax/xml/namespace/QName;

.field private _orderSensitive:Z

.field private _ordered:I

.field private _outerSchemaTypeRef:Lorg/apache/xmlbeans/SchemaType$Ref;

.field private _parseObject:Lorg/apache/xmlbeans/XmlObject;

.field private _parseTNS:Ljava/lang/String;

.field private _patterns:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

.field private _prepost:Lorg/apache/xmlbeans/PrePostExtension;

.field private _primitiveTypeRef:Lorg/apache/xmlbeans/SchemaType$Ref;

.field private _propertyModelByAttributeName:Ljava/util/Map;

.field private _propertyModelByElementName:Ljava/util/Map;

.field private _redefinition:Z

.field private _resolvePhase:I

.field private _selfref:Lorg/apache/xmlbeans/SchemaType$Ref;

.field private _sg:Lorg/apache/poi/javax/xml/namespace/QName;

.field private _sgMembers:Ljava/util/List;

.field private _shortJavaImplName:Ljava/lang/String;

.field private _shortJavaName:Ljava/lang/String;

.field private _simpleTypeVariety:I

.field private _stringEnumEnsured:Z

.field private _stringEnumEntries:[Lorg/apache/xmlbeans/SchemaStringEnumEntry;

.field private _typedWildcardAttributes:Lorg/apache/xmlbeans/QNameSet;

.field private _typedWildcardElements:Lorg/apache/xmlbeans/QNameSet;

.field private volatile _unionCommonBaseType:Lorg/apache/xmlbeans/SchemaType;

.field private volatile _unionConstituentTypes:[Lorg/apache/xmlbeans/SchemaType;

.field private _unionMemberTyperefs:[Lorg/apache/xmlbeans/SchemaType$Ref;

.field private volatile _unionSubTypes:[Lorg/apache/xmlbeans/SchemaType;

.field private volatile _unloaded:Z

.field private volatile _userData:Ljava/lang/Object;

.field private volatile _userTypeClass:Ljava/lang/Class;

.field private _userTypeHandler:Ljava/lang/String;

.field private volatile _userTypeHandlerClass:Ljava/lang/Class;

.field private _userTypeName:Ljava/lang/String;

.field private _validSubstitutions:Ljava/util/Set;

.field private _whiteSpaceRule:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.schema.SchemaTypeImpl"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeImpl:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->$assertionsDisabled:Z

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaProperty;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->NO_PROPERTIES:[Lorg/apache/xmlbeans/SchemaProperty;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_ctrArgs:[Ljava/lang/Object;

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_validSubstitutions:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_sgMembers:Ljava/util/List;

    new-instance v0, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/SchemaType$Ref;-><init>(Lorg/apache/xmlbeans/SchemaType;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_selfref:Lorg/apache/xmlbeans/SchemaType$Ref;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_ctrArgs:[Ljava/lang/Object;

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_validSubstitutions:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_sgMembers:Ljava/util/List;

    new-instance v0, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/SchemaType$Ref;-><init>(Lorg/apache/xmlbeans/SchemaType;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_selfref:Lorg/apache/xmlbeans/SchemaType$Ref;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unloaded:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->finishQuick()V

    :cond_0
    return-void
.end method

.method private assertJavaizing()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unloaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private assertResolved()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unloaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private assertResolving()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unloaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private assertSGResolved()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unloaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private assertSGResolving()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unloaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private assertUnresolved()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unloaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static boaCopy([Z)[Z
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Z

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static buildEltList(Ljava/util/List;Lorg/apache/xmlbeans/SchemaParticle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->countOfParticleChild()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->buildEltList(Ljava/util/List;Lorg/apache/xmlbeans/SchemaParticle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private buildLocalElts()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_contentModel:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->buildEltList(Ljava/util/List;Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/xmlbeans/SchemaLocalElement;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/SchemaLocalElement;

    check-cast v0, [Lorg/apache/xmlbeans/SchemaLocalElement;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_localElts:[Lorg/apache/xmlbeans/SchemaLocalElement;

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method

.method private static computeAllContainedElements(Lorg/apache/xmlbeans/SchemaParticle;Ljava/util/Map;)Lorg/apache/xmlbeans/QNameSet;
    .locals 3

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/QNameSet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->countOfParticleChild()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->computeAllContainedElements(Lorg/apache/xmlbeans/SchemaParticle;Ljava/util/Map;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->toQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->acceptedStartNames()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    :goto_1
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private computeFlatUnionModel()V
    .locals 8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSimpleVariety()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unionMemberTyperefs:[Lorg/apache/xmlbeans/SchemaType$Ref;

    array-length v6, v5

    if-ge v4, v6, :cond_4

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSimpleVariety()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    if-eq v6, v1, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    sget-boolean v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->$assertionsDisabled:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getCommonBaseType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUnionConstituentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUnionSubTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUnionCommonBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5, v3}, Lorg/apache/xmlbeans/SchemaType;->getCommonBaseType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/StscState;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/SchemaType;

    check-cast v0, [Lorg/apache/xmlbeans/SchemaType;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUnionConstituentTypes([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/SchemaType;

    check-cast v0, [Lorg/apache/xmlbeans/SchemaType;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUnionSubTypes([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUnionCommonBaseType(Lorg/apache/xmlbeans/SchemaType;)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation is only supported on union types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static computeNondelimitingElements(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaParticle;Ljava/util/Map;)Lorg/apache/xmlbeans/QNameSet;
    .locals 4

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->computeAllContainedElements(Lorg/apache/xmlbeans/SchemaParticle;Ljava/util/Map;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 p1, 0x5

    if-eq v1, p1, :cond_2

    return-object v0

    :cond_2
    invoke-static {p0}, Lorg/apache/xmlbeans/QNameSet;->singleton(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->countOfParticleChild()I

    move-result v1

    :cond_4
    :goto_0
    if-lez v1, :cond_6

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->computeAllContainedElements(Lorg/apache/xmlbeans/SchemaParticle;Ljava/util/Map;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v2

    if-eqz v3, :cond_5

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2, p0}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->computeNondelimitingElements(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaParticle;Ljava/util/Map;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->toQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>()V

    :goto_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->countOfParticleChild()I

    move-result v1

    if-ge v3, v1, :cond_9

    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->computeAllContainedElements(Lorg/apache/xmlbeans/SchemaParticle;Ljava/util/Map;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->computeNondelimitingElements(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaParticle;Ljava/util/Map;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->toQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_2
    return-object v0
.end method

.method private static computeWildcardSet(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/QNameSetBuilder;)V
    .locals 2

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaParticle;->countOfParticleChild()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->computeWildcardSet(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/QNameSetBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private containsElements()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private createBuiltinInstance()Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBuiltinTypeCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unrecognized builtin type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBuiltinTypeCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlNmTokensImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlNmTokensImpl;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlNmTokenImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlNmTokenImpl;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlEntitiesImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlEntitiesImpl;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlEntityImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlEntityImpl;-><init>()V

    return-object v0

    :pswitch_4
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlIdRefsImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlIdRefsImpl;-><init>()V

    return-object v0

    :pswitch_5
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlIdRefImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlIdRefImpl;-><init>()V

    return-object v0

    :pswitch_6
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlIdImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlIdImpl;-><init>()V

    return-object v0

    :pswitch_7
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlLanguageImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlLanguageImpl;-><init>()V

    return-object v0

    :pswitch_8
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlNCNameImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlNCNameImpl;-><init>()V

    return-object v0

    :pswitch_9
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlNameImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlNameImpl;-><init>()V

    return-object v0

    :pswitch_a
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlTokenImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlTokenImpl;-><init>()V

    return-object v0

    :pswitch_b
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlNormalizedStringImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlNormalizedStringImpl;-><init>()V

    return-object v0

    :pswitch_c
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlUnsignedByteImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlUnsignedByteImpl;-><init>()V

    return-object v0

    :pswitch_d
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlUnsignedShortImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlUnsignedShortImpl;-><init>()V

    return-object v0

    :pswitch_e
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlUnsignedIntImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlUnsignedIntImpl;-><init>()V

    return-object v0

    :pswitch_f
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlUnsignedLongImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlUnsignedLongImpl;-><init>()V

    return-object v0

    :pswitch_10
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlPositiveIntegerImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlPositiveIntegerImpl;-><init>()V

    return-object v0

    :pswitch_11
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlNonNegativeIntegerImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlNonNegativeIntegerImpl;-><init>()V

    return-object v0

    :pswitch_12
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlNegativeIntegerImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlNegativeIntegerImpl;-><init>()V

    return-object v0

    :pswitch_13
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlNonPositiveIntegerImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlNonPositiveIntegerImpl;-><init>()V

    return-object v0

    :pswitch_14
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlByteImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlByteImpl;-><init>()V

    return-object v0

    :pswitch_15
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlShortImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlShortImpl;-><init>()V

    return-object v0

    :pswitch_16
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlIntImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlIntImpl;-><init>()V

    return-object v0

    :pswitch_17
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlLongImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlLongImpl;-><init>()V

    return-object v0

    :pswitch_18
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlIntegerImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlIntegerImpl;-><init>()V

    return-object v0

    :pswitch_19
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlGMonthImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlGMonthImpl;-><init>()V

    return-object v0

    :pswitch_1a
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlGDayImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlGDayImpl;-><init>()V

    return-object v0

    :pswitch_1b
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlGMonthDayImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlGMonthDayImpl;-><init>()V

    return-object v0

    :pswitch_1c
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlGYearImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlGYearImpl;-><init>()V

    return-object v0

    :pswitch_1d
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlGYearMonthImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlGYearMonthImpl;-><init>()V

    return-object v0

    :pswitch_1e
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlDateImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlDateImpl;-><init>()V

    return-object v0

    :pswitch_1f
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlTimeImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlTimeImpl;-><init>()V

    return-object v0

    :pswitch_20
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlDateTimeImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlDateTimeImpl;-><init>()V

    return-object v0

    :pswitch_21
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlDurationImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlDurationImpl;-><init>()V

    return-object v0

    :pswitch_22
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlStringImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlStringImpl;-><init>()V

    return-object v0

    :pswitch_23
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlDecimalImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlDecimalImpl;-><init>()V

    return-object v0

    :pswitch_24
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlDoubleImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlDoubleImpl;-><init>()V

    return-object v0

    :pswitch_25
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlFloatImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlFloatImpl;-><init>()V

    return-object v0

    :pswitch_26
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlNotationImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlNotationImpl;-><init>()V

    return-object v0

    :pswitch_27
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlQNameImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlQNameImpl;-><init>()V

    return-object v0

    :pswitch_28
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlAnyUriImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlAnyUriImpl;-><init>()V

    return-object v0

    :pswitch_29
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlHexBinaryImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlHexBinaryImpl;-><init>()V

    return-object v0

    :pswitch_2a
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlBase64BinaryImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlBase64BinaryImpl;-><init>()V

    return-object v0

    :pswitch_2b
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlBooleanImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlBooleanImpl;-><init>()V

    return-object v0

    :pswitch_2c
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlAnySimpleTypeImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlAnySimpleTypeImpl;-><init>()V

    return-object v0

    :pswitch_2d
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;-><init>()V

    return-object v0

    :pswitch_2e
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createBuiltinSubclass(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBuiltinTypeCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unrecognized builtin type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBuiltinTypeCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlNmTokensImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlNmTokensImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_1
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlNmTokenImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlNmTokenImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_2
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlEntitiesImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlEntitiesImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_3
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlEntityImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlEntityImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_4
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlIdRefsImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlIdRefsImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_5
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlIdRefImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlIdRefImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_6
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlIdImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlIdImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_7
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlLanguageImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlLanguageImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_8
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlNCNameImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlNCNameImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_9
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlNameImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlNameImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_a
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlTokenImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlTokenImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_b
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlNormalizedStringImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlNormalizedStringImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_c
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlUnsignedByteImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnsignedByteImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_d
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlUnsignedShortImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnsignedShortImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_e
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlUnsignedIntImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnsignedIntImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_f
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlUnsignedLongImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnsignedLongImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_10
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlPositiveIntegerImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlPositiveIntegerImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_11
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlNonNegativeIntegerImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlNonNegativeIntegerImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_12
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlNegativeIntegerImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlNegativeIntegerImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_13
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlNonPositiveIntegerImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlNonPositiveIntegerImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_14
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlByteImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlByteImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_15
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlShortImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlShortImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_16
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlIntRestriction;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlIntRestriction;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_17
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlLongRestriction;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlLongRestriction;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_18
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlIntegerRestriction;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlIntegerRestriction;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_19
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlGMonthImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlGMonthImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_1a
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlGDayImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlGDayImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_1b
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlGMonthDayImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlGMonthDayImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_1c
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlGYearImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlGYearImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_1d
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlGYearMonthImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlGYearMonthImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_1e
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlDateImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlDateImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_1f
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlTimeImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlTimeImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_20
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlDateTimeImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlDateTimeImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_21
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlDurationImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlDurationImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_22
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->hasStringEnumValues()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlStringEnumeration;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlStringEnumeration;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlStringRestriction;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlStringRestriction;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_23
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlDecimalRestriction;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlDecimalRestriction;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_24
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlDoubleRestriction;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlDoubleRestriction;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_25
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlFloatRestriction;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlFloatRestriction;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_26
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlNotationRestriction;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlNotationRestriction;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_27
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlQNameRestriction;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlQNameRestriction;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_28
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlAnyUriRestriction;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlAnyUriRestriction;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_29
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlHexBinaryRestriction;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlHexBinaryRestriction;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_2a
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlBase64BinaryRestriction;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlBase64BinaryRestriction;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_2b
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlBooleanRestriction;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlBooleanRestriction;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :pswitch_2c
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v2

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlListImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :cond_3
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlAnySimpleTypeRestriction;

    invoke-direct {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlAnySimpleTypeRestriction;-><init>(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-object v1

    :cond_4
    new-instance v0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;)V

    return-object v0

    :pswitch_2d
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-direct {p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;-><init>(Lorg/apache/xmlbeans/SchemaType;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createUnattachedNode(Lorg/apache/xmlbeans/SchemaProperty;)Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isBuiltinType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNoType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getJavaImplConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_ctrArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Exception trying to instantiate impl class."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->createBuiltinInstance()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    :goto_0
    move-object v1, p0

    :goto_1
    if-nez v0, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->createUnattachedSubclass(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->init_flags(Lorg/apache/xmlbeans/SchemaProperty;)V

    return-object v0
.end method

.method private createUnattachedSubclass(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlObject;
    .locals 7

    const/4 v0, 0x1

    const-string v1, "Exception trying to instantiate impl class."

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isBuiltinType()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNoType()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getJavaImplConstructor2()Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    aput-object v4, v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    :goto_1
    return-object p1

    :goto_2
    :try_start_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :goto_3
    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_3
    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_4
    :cond_1
    :goto_5
    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->createBuiltinSubclass(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1
.end method

.method private ensureStringEnumInfo()V
    .locals 13

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_stringEnumEnsured:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_stringEnumEntries:[Lorg/apache/xmlbeans/SchemaStringEnumEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_stringEnumEnsured:Z

    return-void

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    add-int/2addr v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/HashMap;

    array-length v5, v0

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_2

    aget-object v7, v0, v6

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v0, v6

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_baseEnumTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v6}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/SchemaType;->getEnumJavaClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    :try_start_0
    const-string v8, "table"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    const/4 v9, 0x0

    :goto_1
    array-length v10, v0

    if-ge v9, v10, :cond_4

    aget-object v10, v0, v9

    invoke-interface {v10}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getIntValue()I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object v11

    aget-object v12, v0, v9

    invoke-interface {v12}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v12, v10, :cond_3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "Something wrong: could not locate enum table for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object v6, v7

    :cond_4
    if-nez v6, :cond_6

    :goto_3
    array-length v6, v0

    if-ge v5, v6, :cond_6

    aget-object v6, v0, v5

    invoke-interface {v6}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getIntValue()I

    move-result v6

    aget-object v8, v0, v5

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/apache/xmlbeans/impl/values/StringEnumValue;

    invoke-direct {v9, v8, v6}, Lorg/apache/xmlbeans/impl/values/StringEnumValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v6, :cond_5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-virtual {v3, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_stringEnumEnsured:Z

    if-nez v0, :cond_7

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_lookupStringEnum:Ljava/util/Map;

    iput-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_listOfStringEnum:Ljava/util/List;

    iput-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_lookupStringEnumEntry:Ljava/util/Map;

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_7
    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-enter p0

    :try_start_2
    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_stringEnumEnsured:Z

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private static eq(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static eq(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 0

    .line 2
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private finishQuick()V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    return-void
.end method

.method private setUnionCommonBaseType(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unionCommonBaseType:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method

.method private setUnionConstituentTypes([Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unionConstituentTypes:[Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method

.method private setUnionSubTypes([Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unionSubTypes:[Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method

.method private static staCopy([Lorg/apache/xmlbeans/SchemaType;)[Lorg/apache/xmlbeans/SchemaType;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaType;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public addSubstitutionGroupMember(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertSGResolved()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_sgMembers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized assignJavaElementSetterModel()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getElementProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->computeAllContainedElements(Lorg/apache/xmlbeans/SchemaParticle;Ljava/util/Map;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    aget-object v5, v0, v4

    check-cast v5, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v6

    invoke-static {v6, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->computeNondelimitingElements(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaParticle;Ljava/util/Map;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v6

    new-instance v7, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v7, v3}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-virtual {v7, v6}, Lorg/apache/xmlbeans/QNameSetBuilder;->removeAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-virtual {v7}, Lorg/apache/xmlbeans/QNameSetBuilder;->toQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->setJavaSetterDelimiter(Lorg/apache/xmlbeans/QNameSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public blockExtension()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_blockExt:Z

    return v0
.end method

.method public blockRestriction()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_blockRest:Z

    return v0
.end method

.method public copyEnumerationValues(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_enumerationValues:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_enumerationValues:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_baseEnumTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_baseEnumTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

    return-void
.end method

.method public createAttributeType(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isSimpleType()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNoType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isURType()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    :goto_0
    move-object v0, v1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByAttributeName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaProperty;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    :goto_1
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_typedWildcardAttributes:Lorg/apache/xmlbeans/QNameSet;

    invoke-virtual {v2, p1}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    sget-object p1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_3

    :cond_4
    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_1

    :cond_5
    :goto_2
    sget-object p1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :goto_3
    if-eqz p1, :cond_6

    invoke-direct {p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->createUnattachedNode(Lorg/apache/xmlbeans/SchemaProperty;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v1
.end method

.method public createElementType(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/XmlObject;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isSimpleType()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->containsElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNoType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByElementName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaProperty;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_typedWildcardElements:Lorg/apache/xmlbeans/QNameSet;

    invoke-virtual {v2, p1}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_validSubstitutions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-interface {p3, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-interface {p3, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findDocumentType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3, p1}, Lorg/apache/xmlbeans/SchemaType;->getElementProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v0

    :cond_4
    move-object p1, v2

    :goto_1
    if-eqz p2, :cond_6

    invoke-interface {p3, p2}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/SchemaType;->isAssignableFrom(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result p3

    if-eqz p3, :cond_6

    move-object p1, p2

    goto :goto_3

    :cond_5
    :goto_2
    sget-object p1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-object v0, v1

    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-direct {p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->createUnattachedNode(Lorg/apache/xmlbeans/SchemaProperty;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v1
.end method

.method public createTypeStoreUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->createUnattachedNode(Lorg/apache/xmlbeans/SchemaProperty;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    return-object v0
.end method

.method public createUnwrappedNode()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->createUnattachedNode(Lorg/apache/xmlbeans/SchemaProperty;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    return-object v0
.end method

.method public enumEntryForString(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaStringEnumEntry;
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->ensureStringEnumInfo()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_lookupStringEnumEntry:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_lookupStringEnumEntry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaStringEnumEntry;

    return-object p1
.end method

.method public enumForInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->ensureStringEnumInfo()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_listOfStringEnum:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_listOfStringEnum:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_listOfStringEnum:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/StringEnumAbstractBase;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public enumForString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->ensureStringEnumInfo()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_lookupStringEnum:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_lookupStringEnum:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/StringEnumAbstractBase;

    return-object p1
.end method

.method public finalExtension()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_finalExt:Z

    return v0
.end method

.method public finalList()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_finalList:Z

    return v0
.end method

.method public finalRestriction()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_finalRest:Z

    return v0
.end method

.method public finalUnion()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_finalUnion:Z

    return v0
.end method

.method public finishJavaizing()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public finishLoading()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unloaded:Z

    return-void
.end method

.method public finishResolving()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public finishResolvingSGs()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAnnotation()Lorg/apache/xmlbeans/SchemaAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_annotation:Lorg/apache/xmlbeans/SchemaAnnotation;

    return-object v0
.end method

.method public getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_anonymousTyperefs:[Lorg/apache/xmlbeans/SchemaType$Ref;

    array-length v0, v0

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaType;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_anonymousTyperefs:[Lorg/apache/xmlbeans/SchemaType$Ref;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getAnonymousUnionMemberOrdinal()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_anonymousUnionMemberOrdinal:I

    return v0
.end method

.method public getAttFormDefault()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_attFormDefault:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_attributeModel:Lorg/apache/xmlbeans/SchemaAttributeModel;

    return-object v0
.end method

.method public getAttributeProperties()[Lorg/apache/xmlbeans/SchemaProperty;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByAttributeName:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->NO_PROPERTIES:[Lorg/apache/xmlbeans/SchemaProperty;

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByAttributeName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/xmlbeans/SchemaProperty;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/SchemaProperty;

    check-cast v0, [Lorg/apache/xmlbeans/SchemaProperty;

    return-object v0
.end method

.method public getAttributeProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByAttributeName:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaProperty;

    :goto_0
    return-object p1
.end method

.method public getAttributeType(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isSimpleType()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNoType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isURType()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByAttributeName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaProperty;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_typedWildcardAttributes:Lorg/apache/xmlbeans/QNameSet;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p1

    :cond_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    sget-object p1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p1

    :cond_6
    :goto_1
    sget-object p1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p1
.end method

.method public getAttributeTypeAttributeName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isAttributeType:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getAttributes()[Lorg/apache/xmlbeans/SchemaLocalAttribute;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseDepth()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_baseDepth:I

    return v0
.end method

.method public getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_baseEnumTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBaseType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_baseTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBasicFacets()[Lorg/apache/xmlbeans/XmlAnySimpleType;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lorg/apache/xmlbeans/XmlAnySimpleType;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xb

    if-gt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getBuiltinTypeCode()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_builtinTypeCode:I

    return v0
.end method

.method public getChameleonNamespace()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_chameleon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_parseTNS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCommonBaseType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaType;
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    if-eq p0, v0, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isNoType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    if-eq p1, v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNoType()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    :goto_0
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v2

    if-le v1, v2, :cond_3

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    return-object p1

    :cond_7
    :goto_4
    return-object p0
.end method

.method public getComponentRef()Lorg/apache/xmlbeans/SchemaComponent$Ref;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContainer()Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-object v0
.end method

.method public declared-synchronized getContainerField()Lorg/apache/xmlbeans/SchemaField;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerFieldCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerFieldCode:I

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerFieldRef:Lorg/apache/xmlbeans/SchemaComponent$Ref;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerFieldRef:Lorg/apache/xmlbeans/SchemaComponent$Ref;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/SchemaComponent$Ref;->getComponent()Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaField;

    :goto_0
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerField:Lorg/apache/xmlbeans/SchemaField;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerFieldCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getAttributes()[Lorg/apache/xmlbeans/SchemaLocalAttribute;

    move-result-object v0

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerFieldIndex:I

    aget-object v0, v0, v2

    goto :goto_0

    :cond_2
    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerFieldIndex:I

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getLocalElementByIndex(I)Lorg/apache/xmlbeans/SchemaLocalElement;

    move-result-object v0

    goto :goto_0

    :goto_1
    iput v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerFieldCode:I

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerField:Lorg/apache/xmlbeans/SchemaField;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public getContentBasedOnType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_contentBasedOnTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getContentModel()Lorg/apache/xmlbeans/SchemaParticle;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_contentModel:Lorg/apache/xmlbeans/SchemaParticle;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_complexTypeVariety:I

    return v0
.end method

.method public getDecimalSize()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_decimalSize:I

    return v0
.end method

.method public getDerivationType()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_derivationType:I

    return v0
.end method

.method public getDerivedProperties()[Lorg/apache/xmlbeans/SchemaProperty;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByElementName:Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByAttributeName:Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaProperty;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/xmlbeans/SchemaType;->getAttributeProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/xmlbeans/SchemaType;->getElementProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaProperty;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->getMinOccurs()Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->eq(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaProperty;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->eq(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v5

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaProperty;->getDefaultText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->getDefaultText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaProperty;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/SchemaProperty;

    check-cast v0, [Lorg/apache/xmlbeans/SchemaProperty;

    return-object v0
.end method

.method public getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isDocumentType:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaParticle;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElemFormDefault()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_elemFormDefault:Ljava/lang/String;

    return-object v0
.end method

.method public getElementProperties()[Lorg/apache/xmlbeans/SchemaProperty;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByElementName:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->NO_PROPERTIES:[Lorg/apache/xmlbeans/SchemaProperty;

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByElementName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/xmlbeans/SchemaProperty;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/SchemaProperty;

    check-cast v0, [Lorg/apache/xmlbeans/SchemaProperty;

    return-object v0
.end method

.method public getElementProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByElementName:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaProperty;

    :goto_0
    return-object p1
.end method

.method public getElementSequencer()Lorg/apache/xmlbeans/SchemaTypeElementSequencer;
    .locals 4

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_complexTypeVariety:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl$SequencerImpl;

    invoke-direct {v0, v1, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl$SequencerImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl$SequencerImpl;

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_contentModel:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-direct {v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;-><init>(Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl$SequencerImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl$1;)V

    return-object v0
.end method

.method public getElementType(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isSimpleType()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->containsElements()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNoType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByElementName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaProperty;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    sget-object p1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_typedWildcardElements:Lorg/apache/xmlbeans/QNameSet;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_validSubstitutions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p1

    :cond_4
    :goto_0
    invoke-interface {p3, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object p1

    if-nez p1, :cond_5

    sget-object p1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p1

    :cond_5
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    :goto_1
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    invoke-interface {p3, p2}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/SchemaType;->isAssignableFrom(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result p3

    if-eqz p3, :cond_6

    return-object p2

    :cond_6
    return-object p1

    :cond_7
    :goto_2
    sget-object p1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p1
.end method

.method public getEnumJavaClass()Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaEnumClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "$Enum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaEnumClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaEnumClass:Ljava/lang/Class;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaEnumClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_enumerationValues:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, v0

    new-array v2, v0, [Lorg/apache/xmlbeans/XmlAnySimpleType;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_enumerationValues:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aget-object v4, v4, v3

    if-nez v4, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;->get()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_facetArray:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    aget-object p1, v0, p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;->get()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p1

    return-object p1
.end method

.method public getFixedFacets()[Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_fixedFacetArray:[Z

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->boaCopy([Z)[Z

    move-result-object v0

    return-object v0
.end method

.method public getFullJavaImplName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_fullJavaImplName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullJavaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_fullJavaName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupReferenceContext()[Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_groupReferenceContext:[Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getIndexForLocalAttribute(Lorg/apache/xmlbeans/SchemaLocalAttribute;)I
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_attrToIndexMap:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_attributeModel:Lorg/apache/xmlbeans/SchemaAttributeModel;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getAttributes()[Lorg/apache/xmlbeans/SchemaLocalAttribute;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_attrToIndexMap:Ljava/util/Map;

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getIndexForLocalElement(Lorg/apache/xmlbeans/SchemaLocalElement;)I
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_eltToIndexMap:Ljava/util/Map;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_localElts:[Lorg/apache/xmlbeans/SchemaLocalElement;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->buildLocalElts()V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_localElts:[Lorg/apache/xmlbeans/SchemaLocalElement;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_localElts:[Lorg/apache/xmlbeans/SchemaLocalElement;

    aget-object v2, v2, v1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_eltToIndexMap:Ljava/util/Map;

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getInterfaceExtensions()[Lorg/apache/xmlbeans/InterfaceExtension;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_interfaces:[Lorg/apache/xmlbeans/InterfaceExtension;

    return-object v0
.end method

.method public getJavaClass()Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFullJavaName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFullJavaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaClass:Ljava/lang/Class;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getJavaImplClass()Ljava/lang/Class;
    .locals 4

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_implNotAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaImplClass:Ljava/lang/Class;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFullJavaImplName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFullJavaImplName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaTypeSystem;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaImplClass:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_implNotAvailable:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_implNotAvailable:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaImplClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getJavaImplConstructor()Ljava/lang/reflect/Constructor;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaImplConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_implNotAvailable:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getJavaImplClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->class$org$apache$xmlbeans$SchemaType:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.apache.xmlbeans.SchemaType"

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->class$org$apache$xmlbeans$SchemaType:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaImplConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaImplConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getJavaImplConstructor2()Ljava/lang/reflect/Constructor;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaImplConstructor2:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_implNotAvailable:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getJavaImplClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->class$org$apache$xmlbeans$SchemaType:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.apache.xmlbeans.SchemaType"

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->class$org$apache$xmlbeans$SchemaType:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaImplConstructor2:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaImplConstructor2:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getListItemType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_listItemTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLocalElementByIndex(I)Lorg/apache/xmlbeans/SchemaLocalElement;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_localElts:[Lorg/apache/xmlbeans/SchemaLocalElement;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->buildLocalElts()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_localElts:[Lorg/apache/xmlbeans/SchemaLocalElement;

    :cond_0
    aget-object p1, v0, p1

    return-object p1
.end method

.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getOuterType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_outerSchemaTypeRef:Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getParseObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_parseObject:Lorg/apache/xmlbeans/XmlObject;

    return-object v0
.end method

.method public getPatternExpressions()[Lorg/apache/xmlbeans/impl/regex/RegularExpression;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_patterns:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    return-object v0

    :cond_0
    array-length v2, v0

    new-array v2, v2, [Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getPatterns()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_patterns:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    :cond_0
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_patterns:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPattern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPrePostExtension()Lorg/apache/xmlbeans/PrePostExtension;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_prepost:Lorg/apache/xmlbeans/PrePostExtension;

    return-object v0
.end method

.method public getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_primitiveTypeRef:Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getProperties()[Lorg/apache/xmlbeans/SchemaProperty;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByElementName:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttributeProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByAttributeName:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getElementProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByElementName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByAttributeName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/xmlbeans/SchemaProperty;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/SchemaProperty;

    check-cast v0, [Lorg/apache/xmlbeans/SchemaProperty;

    return-object v0
.end method

.method public getRef()Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_selfref:Lorg/apache/xmlbeans/SchemaType$Ref;

    return-object v0
.end method

.method public getShortJavaImplName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_shortJavaImplName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortJavaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_shortJavaName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleVariety()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_simpleTypeVariety:I

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Lorg/apache/xmlbeans/SchemaGlobalElement;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/apache/xmlbeans/SchemaGlobalElement;

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringEnumEntries()[Lorg/apache/xmlbeans/SchemaStringEnumEntry;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_stringEnumEntries:[Lorg/apache/xmlbeans/SchemaStringEnumEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v1, v0

    new-array v2, v1, [Lorg/apache/xmlbeans/SchemaStringEnumEntry;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getSubstitutionGroup()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_sg:Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getSubstitutionGroupMembers()[Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_sgMembers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/javax/xml/namespace/QName;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_sgMembers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_parseTNS:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getUnionCommonBaseType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unionCommonBaseType:Lorg/apache/xmlbeans/SchemaType;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->computeFlatUnionModel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unionCommonBaseType:Lorg/apache/xmlbeans/SchemaType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnionConstituentTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unionCommonBaseType:Lorg/apache/xmlbeans/SchemaType;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->computeFlatUnionModel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unionConstituentTypes:[Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->staCopy([Lorg/apache/xmlbeans/SchemaType;)[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getUnionMemberTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unionMemberTyperefs:[Lorg/apache/xmlbeans/SchemaType$Ref;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    new-array v2, v0, [Lorg/apache/xmlbeans/SchemaType;

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unionMemberTyperefs:[Lorg/apache/xmlbeans/SchemaType$Ref;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public declared-synchronized getUnionSubTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unionCommonBaseType:Lorg/apache/xmlbeans/SchemaType;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->computeFlatUnionModel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unionSubTypes:[Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->staCopy([Lorg/apache/xmlbeans/SchemaType;)[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserTypeClass()Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userTypeClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUserTypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userTypeName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userTypeClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userTypeClass:Ljava/lang/Class;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userTypeClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getUserTypeHandlerClass()Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userTypeHandlerClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUserTypeHandlerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userTypeHandler:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userTypeHandlerClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userTypeHandlerClass:Ljava/lang/Class;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userTypeHandlerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getUserTypeHandlerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userTypeHandler:Ljava/lang/String;

    return-object v0
.end method

.method public getUserTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getWhiteSpaceRule()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_whiteSpaceRule:I

    return v0
.end method

.method public hasAllContent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_hasAllContent:Z

    return v0
.end method

.method public hasAttributeWildcards()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_hasWildcardAttributes:Z

    return v0
.end method

.method public hasElementWildcards()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_hasWildcardElements:Z

    return v0
.end method

.method public hasPatternFacet()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_hasPatterns:Z

    return v0
.end method

.method public hasStringEnumValues()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_stringEnumEntries:[Lorg/apache/xmlbeans/SchemaStringEnumEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAbstract()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_abs:Z

    return v0
.end method

.method public isAnonymousType()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAssignableFrom(Lorg/apache/xmlbeans/SchemaType;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isNoType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNoType()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSimpleVariety()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUnionMemberTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    aget-object v4, v1, v3

    invoke-interface {v4, p1}, Lorg/apache/xmlbeans/SchemaType;->isAssignableFrom(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_4

    return v2

    :cond_4
    :goto_1
    if-lez v0, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_2
    return v0
.end method

.method public isAttributeType()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isAttributeType:Z

    return v0
.end method

.method public isBounded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isBounded:Z

    return v0
.end method

.method public isBuiltinType()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBuiltinTypeCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChameleon()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_chameleon:Z

    return v0
.end method

.method public isCompiled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isCompiled:Z

    return v0
.end method

.method public isDocumentType()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isDocumentType:Z

    return v0
.end method

.method public isFacetFixed(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_fixedFacetArray:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public isFinite()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isFinite:Z

    return v0
.end method

.method public isJavaized()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNoType()Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumeric()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isNumeric:Z

    return v0
.end method

.method public isOrderSensitive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_orderSensitive:Z

    return v0
.end method

.method public isPrimitiveType()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBuiltinTypeCode()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBuiltinTypeCode()I

    move-result v0

    const/16 v1, 0x15

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRedefinition()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_redefinition:Z

    return v0
.end method

.method public isResolved()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResolving()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSGResolved()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSGResolving()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSimpleType()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isSimpleType:Z

    return v0
.end method

.method public isSkippedAnonymousType()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    if-eq v2, p0, :cond_1

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getContentBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public isURType()Z
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_builtinTypeCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isUnionOfLists()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isUnionOfLists:Z

    return v0
.end method

.method public isUnjavaized()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnloaded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unloaded:Z

    return v0
.end method

.method public isValidSubstitution(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_validSubstitutions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public matchPatternFacet(Ljava/lang/String;)Z
    .locals 4

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_hasPatterns:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_patterns:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_patterns:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_patterns:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaType;->matchPatternFacet(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public newValidatingValue(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlAnySimpleType;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->newValue(Ljava/lang/Object;Z)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p1

    return-object p1
.end method

.method public newValue(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlAnySimpleType;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->newValue(Ljava/lang/Object;Z)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p1

    return-object p1
.end method

.method public newValue(Ljava/lang/Object;Z)Lorg/apache/xmlbeans/XmlAnySimpleType;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isSimpleType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->createUnattachedNode(Lorg/apache/xmlbeans/SchemaProperty;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setValidateOnSet()V

    :cond_2
    instance-of p2, p1, Lorg/apache/xmlbeans/XmlObject;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_newValue(Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->objectSet(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setImmutable()V

    check-cast v0, Lorg/apache/xmlbeans/XmlAnySimpleType;

    return-object v0
.end method

.method public ordered()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_ordered:I

    return v0
.end method

.method public qnameSetForWildcardAttributes()Lorg/apache/xmlbeans/QNameSet;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getWildcardSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttributeProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/xmlbeans/QNameSetBuilder;->remove(Lorg/apache/poi/javax/xml/namespace/QName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/xmlbeans/QNameSetBuilder;->toQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    return-object v0
.end method

.method public qnameSetForWildcardElements()Lorg/apache/xmlbeans/QNameSet;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v1}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->computeWildcardSet(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/QNameSetBuilder;)V

    new-instance v0, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getElementProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/QNameSetBuilder;->remove(Lorg/apache/poi/javax/xml/namespace/QName;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->toQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    return-object v0
.end method

.method public setAbstractFinal(ZZZZZ)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_abs:Z

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_finalExt:Z

    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_finalRest:Z

    iput-boolean p4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_finalList:Z

    iput-boolean p5, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_finalUnion:Z

    return-void
.end method

.method public setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertUnresolved()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_annotation:Lorg/apache/xmlbeans/SchemaAnnotation;

    return-void
.end method

.method public setAnonymousTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_anonymousTyperefs:[Lorg/apache/xmlbeans/SchemaType$Ref;

    return-void
.end method

.method public setAnonymousUnionMemberOrdinal(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertUnresolved()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_anonymousUnionMemberOrdinal:I

    return-void
.end method

.method public setAttributeType(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertUnresolved()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isAttributeType:Z

    return-void
.end method

.method public setBaseDepth(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_baseDepth:I

    return-void
.end method

.method public setBaseEnumTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_baseEnumTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

    return-void
.end method

.method public setBaseTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_baseTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

    return-void
.end method

.method public setBasicFacets([Lorg/apache/xmlbeans/impl/schema/XmlValueRef;[Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_facetArray:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_fixedFacetArray:[Z

    return-void
.end method

.method public setBlock(ZZ)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_blockExt:Z

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_blockRest:Z

    return-void
.end method

.method public setBounded(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isBounded:Z

    return-void
.end method

.method public setBuiltinTypeCode(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_builtinTypeCode:I

    return-void
.end method

.method public setCompiled(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertJavaizing()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isCompiled:Z

    return-void
.end method

.method public setComplexTypeVariety(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_complexTypeVariety:I

    return-void
.end method

.method public setContainer(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-void
.end method

.method public setContainerField(Lorg/apache/xmlbeans/SchemaField;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertUnresolved()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerField:Lorg/apache/xmlbeans/SchemaField;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerFieldCode:I

    return-void
.end method

.method public setContainerFieldIndex(SI)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertUnresolved()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerFieldCode:I

    iput p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerFieldIndex:I

    return-void
.end method

.method public setContainerFieldRef(Lorg/apache/xmlbeans/SchemaComponent$Ref;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertUnresolved()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerFieldRef:Lorg/apache/xmlbeans/SchemaComponent$Ref;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_containerFieldCode:I

    return-void
.end method

.method public setContentBasedOnTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_contentBasedOnTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

    return-void
.end method

.method public setContentModel(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaAttributeModel;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_contentModel:Lorg/apache/xmlbeans/SchemaParticle;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_attributeModel:Lorg/apache/xmlbeans/SchemaAttributeModel;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByElementName:Ljava/util/Map;

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByAttributeName:Ljava/util/Map;

    iput-boolean p5, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_hasAllContent:Z

    if-eqz p3, :cond_2

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_validSubstitutions:Ljava/util/Set;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByElementName:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/SchemaProperty;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaProperty;->acceptedNames()[Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    array-length p4, p2

    if-ge p3, p4, :cond_0

    iget-object p4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_propertyModelByElementName:Ljava/util/Map;

    aget-object p5, p2, p3

    invoke-interface {p4, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_validSubstitutions:Ljava/util/Set;

    aget-object p5, p2, p3

    invoke-interface {p4, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setDecimalSize(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_decimalSize:I

    return-void
.end method

.method public setDerivationType(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_derivationType:I

    return-void
.end method

.method public setDocumentType(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertUnresolved()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isDocumentType:Z

    return-void
.end method

.method public setEnumerationValues([Lorg/apache/xmlbeans/impl/schema/XmlValueRef;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_enumerationValues:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertUnresolved()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_filename:Ljava/lang/String;

    return-void
.end method

.method public setFinite(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isFinite:Z

    return-void
.end method

.method public setFullJavaImplName(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolved()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_fullJavaImplName:Ljava/lang/String;

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_fullJavaImplName:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_fullJavaImplName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_shortJavaImplName:Ljava/lang/String;

    return-void
.end method

.method public setFullJavaName(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolved()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_fullJavaName:Ljava/lang/String;

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_fullJavaName:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_fullJavaName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_shortJavaName:Ljava/lang/String;

    return-void
.end method

.method public setGroupReferenceContext([Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertUnresolved()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_groupReferenceContext:[Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public setInterfaceExtensions([Lorg/apache/xmlbeans/InterfaceExtension;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolved()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_interfaces:[Lorg/apache/xmlbeans/InterfaceExtension;

    return-void
.end method

.method public setJavaClass(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolved()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_javaClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFullJavaName(Ljava/lang/String;)V

    return-void
.end method

.method public setListItemTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_listItemTyperef:Lorg/apache/xmlbeans/SchemaType$Ref;

    return-void
.end method

.method public setName(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertUnresolved()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public setNumeric(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isNumeric:Z

    return-void
.end method

.method public setOrderSensitive(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertJavaizing()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_orderSensitive:Z

    return-void
.end method

.method public setOrdered(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_ordered:I

    return-void
.end method

.method public setOuterSchemaTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertUnresolved()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_outerSchemaTypeRef:Lorg/apache/xmlbeans/SchemaType$Ref;

    return-void
.end method

.method public setParseContext(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_parseObject:Lorg/apache/xmlbeans/XmlObject;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_parseTNS:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_chameleon:Z

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_elemFormDefault:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_attFormDefault:Ljava/lang/String;

    iput-boolean p6, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_redefinition:Z

    return-void
.end method

.method public setPatternFacet(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_hasPatterns:Z

    return-void
.end method

.method public setPatterns([Lorg/apache/xmlbeans/impl/regex/RegularExpression;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_patterns:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    return-void
.end method

.method public setPrePostExtension(Lorg/apache/xmlbeans/PrePostExtension;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolved()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_prepost:Lorg/apache/xmlbeans/PrePostExtension;

    return-void
.end method

.method public setPrimitiveTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_primitiveTypeRef:Lorg/apache/xmlbeans/SchemaType$Ref;

    return-void
.end method

.method public setShortJavaImplName(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolved()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_shortJavaImplName:Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_outerSchemaTypeRef:Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaImplName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaImplName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_shortJavaImplName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_fullJavaImplName:Ljava/lang/String;

    return-void
.end method

.method public setShortJavaName(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolved()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_shortJavaName:Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_outerSchemaTypeRef:Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_shortJavaName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_fullJavaName:Ljava/lang/String;

    return-void
.end method

.method public setSimpleFinal(ZZZ)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_finalRest:Z

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_finalList:Z

    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_finalUnion:Z

    return-void
.end method

.method public setSimpleType(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertUnresolved()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isSimpleType:Z

    return-void
.end method

.method public setSimpleTypeVariety(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_simpleTypeVariety:I

    return-void
.end method

.method public setStringEnumEntries([Lorg/apache/xmlbeans/SchemaStringEnumEntry;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertJavaizing()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_stringEnumEntries:[Lorg/apache/xmlbeans/SchemaStringEnumEntry;

    return-void
.end method

.method public setSubstitutionGroup(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertSGResolving()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_sg:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public setUnionMemberTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_unionMemberTyperefs:[Lorg/apache/xmlbeans/SchemaType$Ref;

    return-void
.end method

.method public setUnionOfLists(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isUnionOfLists:Z

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userData:Ljava/lang/Object;

    return-void
.end method

.method public setUserTypeHandlerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userTypeHandler:Ljava/lang/String;

    return-void
.end method

.method public setUserTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_userTypeName:Ljava/lang/String;

    return-void
.end method

.method public setWhiteSpaceRule(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_whiteSpaceRule:I

    return-void
.end method

.method public setWildcardSummary(Lorg/apache/xmlbeans/QNameSet;ZLorg/apache/xmlbeans/QNameSet;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assertResolving()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_typedWildcardElements:Lorg/apache/xmlbeans/QNameSet;

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_hasWildcardElements:Z

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_typedWildcardAttributes:Lorg/apache/xmlbeans/QNameSet;

    iput-boolean p4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_hasWildcardAttributes:Z

    return-void
.end method

.method public startJavaizing()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public startResolving()V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_isDocumentType:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    return-void
.end method

.method public startResolvingSGs()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->_resolvePhase:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    .line 8
    .line 9
    const-string v1, "T="

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isDocumentType()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    .line 37
    .line 38
    const-string v1, "D="

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isAttributeType()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuffer;

    .line 66
    .line 67
    const-string v1, "R="

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttributeTypeAttributeName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0

    .line 88
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-lez v1, :cond_4

    .line 116
    .line 117
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->isAttribute()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_3

    .line 126
    .line 127
    const-string v1, "Q="

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    const-string v1, "E="

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->isAttribute()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    const-string v1, "A="

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_5
    const-string v1, "U="

    .line 147
    .line 148
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-nez v1, :cond_d

    .line 175
    .line 176
    const-string v1, "@"

    .line 177
    .line 178
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    return-object v0

    .line 202
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNoType()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_7

    .line 207
    .line 208
    const-string v0, "N="

    .line 209
    .line 210
    return-object v0

    .line 211
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-nez v0, :cond_8

    .line 216
    .line 217
    const-string v0, "noouter"

    .line 218
    .line 219
    return-object v0

    .line 220
    :cond_8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-ne v0, p0, :cond_9

    .line 229
    .line 230
    const-string v0, "B="

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getContentBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    if-ne v0, p0, :cond_a

    .line 242
    .line 243
    const-string v0, "S="

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_a
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    const/4 v1, 0x3

    .line 255
    if-ne v0, v1, :cond_b

    .line 256
    .line 257
    const-string v0, "I="

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_b
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    const/4 v1, 0x2

    .line 269
    if-ne v0, v1, :cond_c

    .line 270
    .line 271
    new-instance v0, Ljava/lang/StringBuffer;

    .line 272
    .line 273
    const-string v1, "M="

    .line 274
    .line 275
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAnonymousUnionMemberOrdinal()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    goto :goto_1

    .line 290
    :cond_c
    const-string v0, "strange="

    .line 291
    .line 292
    :cond_d
    :goto_1
    const-string v1, "|"

    .line 293
    .line 294
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    return-object v0
.end method

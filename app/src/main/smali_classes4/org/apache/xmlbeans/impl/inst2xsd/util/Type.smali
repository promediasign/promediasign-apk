.class public Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final COMPLEX_TYPE_COMPLEX_CONTENT:I = 0x3

.field public static final COMPLEX_TYPE_EMPTY_CONTENT:I = 0x5

.field public static final COMPLEX_TYPE_MIXED_CONTENT:I = 0x4

.field public static final COMPLEX_TYPE_SIMPLE_CONTENT:I = 0x2

.field public static final PARTICLE_CHOICE_UNBOUNDED:I = 0x2

.field public static final PARTICLE_SEQUENCE:I = 0x1

.field public static final SIMPLE_TYPE_SIMPLE_CONTENT:I = 0x1

.field static synthetic class$org$apache$xmlbeans$impl$inst2xsd$util$Type:Ljava/lang/Class;


# instance fields
.field private _acceptsEnumerationValue:Z

.field private _attributes:Ljava/util/List;

.field private _elements:Ljava/util/List;

.field private _enumerationQNames:Ljava/util/List;

.field private _enumerationValues:Ljava/util/List;

.field private _extensionType:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

.field private _isGlobal:Z

.field private _kind:I

.field private _name:Lorg/apache/poi/javax/xml/namespace/QName;

.field private _topParticleForComplexOrMixedContent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->class$org$apache$xmlbeans$impl$inst2xsd$util$Type:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.inst2xsd.util.Type"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->class$org$apache$xmlbeans$impl$inst2xsd$util$Type:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_topParticleForComplexOrMixedContent:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_isGlobal:Z

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_acceptsEnumerationValue:Z

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

.method public static createNamedType(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setContentType(I)V

    return-object v0
.end method

.method public static createUnnamedType(I)Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;
    .locals 2

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->$assertionsDisabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p0, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x5

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 22
    .line 23
    const-string v1, "Unknown contentType: "

    .line 24
    .line 25
    invoke-static {p0, v1}, Lorg/apache/ftpserver/main/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    .line 34
    .line 35
    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setContentType(I)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method private ensureAttributes()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_attributes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_attributes:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureElements()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_elements:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_elements:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureEnumerationValues()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationQNames:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllEnumerationsFrom(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Enumerations possible only on simple content"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureEnumerationValues()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object v1, Lorg/apache/xmlbeans/XmlQName;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationQNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/javax/xml/namespace/QName;

    iget-boolean v3, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_acceptsEnumerationValue:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationQNames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationQNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_acceptsEnumerationValue:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public addAttribute(Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureAttributes()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureElements()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEnumerationValue(Ljava/lang/String;Lorg/apache/xmlbeans/XmlCursor;)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Enumerations possible only on simple content"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureEnumerationValues()V

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_acceptsEnumerationValue:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object v2, Lorg/apache/xmlbeans/XmlQName;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type$1;

    invoke-direct {v1, p0, p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type$1;-><init>(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/XmlCursor;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v1}, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;Lorg/apache/xmlbeans/impl/common/PrefixResolver;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "The check for QName should allready have happened."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationQNames:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public closeEnumeration()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_acceptsEnumerationValue:Z

    return-void
.end method

.method public getAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureAttributes()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_attributes:Ljava/util/List;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

    return v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureElements()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_elements:Ljava/util/List;

    return-object v0
.end method

.method public getEnumerationQNames()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureEnumerationValues()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationQNames:Ljava/util/List;

    return-object v0
.end method

.method public getEnumerationValues()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureEnumerationValues()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    return-object v0
.end method

.method public getExtensionType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_extensionType:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    return-object v0
.end method

.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getTopParticleForComplexOrMixedContent()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_topParticleForComplexOrMixedContent:I

    return v0
.end method

.method public hasSimpleContent()Z
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

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

.method public isComplexType()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

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

.method public isEnumeration()Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_acceptsEnumerationValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationValues:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isGlobal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_isGlobal:Z

    return v0
.end method

.method public isQNameEnumeration()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isEnumeration()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object v1, Lorg/apache/xmlbeans/XmlQName;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_enumerationQNames:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setContentType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

    return-void
.end method

.method public setElements(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->ensureElements()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setExtensionType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Extension used only for type which are COMPLEX_TYPE_SIMPLE_CONTENT"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Extended type must be a named type."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_extensionType:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    return-void
.end method

.method public setGlobal(Z)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_isGlobal:Z

    return-void
.end method

.method public setName(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public setTopParticleForComplexOrMixedContent(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_topParticleForComplexOrMixedContent:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Type{_name = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", _extensionType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_extensionType:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", _kind = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_kind:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", _elements = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_elements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", _attributes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->_attributes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

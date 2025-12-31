.class public final Lorg/apache/xmlbeans/QNameSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/QNameSetSpecification;
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL:Lorg/apache/xmlbeans/QNameSet;

.field public static final EMPTY:Lorg/apache/xmlbeans/QNameSet;

.field public static final LOCAL:Lorg/apache/xmlbeans/QNameSet;

.field public static final NONLOCAL:Lorg/apache/xmlbeans/QNameSet;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _excludedQNames:Ljava/util/Set;

.field private final _includedQNames:Ljava/util/Set;

.field private final _includedURIs:Ljava/util/Set;

.field private final _inverted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/xmlbeans/QNameSet;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1, v1}, Lorg/apache/xmlbeans/QNameSet;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    sput-object v0, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    new-instance v0, Lorg/apache/xmlbeans/QNameSet;

    invoke-direct {v0, v1, v2, v1, v1}, Lorg/apache/xmlbeans/QNameSet;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    sput-object v0, Lorg/apache/xmlbeans/QNameSet;->ALL:Lorg/apache/xmlbeans/QNameSet;

    new-instance v0, Lorg/apache/xmlbeans/QNameSet;

    const-string v3, ""

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v2, v4, v1, v1}, Lorg/apache/xmlbeans/QNameSet;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    sput-object v0, Lorg/apache/xmlbeans/QNameSet;->LOCAL:Lorg/apache/xmlbeans/QNameSet;

    new-instance v0, Lorg/apache/xmlbeans/QNameSet;

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3, v2, v1, v1}, Lorg/apache/xmlbeans/QNameSet;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    sput-object v0, Lorg/apache/xmlbeans/QNameSet;->NONLOCAL:Lorg/apache/xmlbeans/QNameSet;

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/QNameSet;->_inverted:Z

    iput-object p2, p0, Lorg/apache/xmlbeans/QNameSet;->_includedURIs:Ljava/util/Set;

    iput-object p3, p0, Lorg/apache/xmlbeans/QNameSet;->_excludedQNames:Ljava/util/Set;

    iput-object p4, p0, Lorg/apache/xmlbeans/QNameSet;->_includedQNames:Ljava/util/Set;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/xmlbeans/QNameSet;->_inverted:Z

    iput-object p1, p0, Lorg/apache/xmlbeans/QNameSet;->_includedURIs:Ljava/util/Set;

    iput-object p4, p0, Lorg/apache/xmlbeans/QNameSet;->_excludedQNames:Ljava/util/Set;

    iput-object p3, p0, Lorg/apache/xmlbeans/QNameSet;->_includedQNames:Ljava/util/Set;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exactly one of excludedURIs and includedURIs must be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static forArray([Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/QNameSet;
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/QNameSet;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    invoke-direct {v0, p0, v1, v1, v2}, Lorg/apache/xmlbeans/QNameSet;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "includedQNames cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static forSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lorg/apache/xmlbeans/QNameSet;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eq v2, v0, :cond_6

    if-nez p0, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    return-object p0

    :cond_2
    if-nez p1, :cond_3

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lorg/apache/xmlbeans/QNameSet;->ALL:Lorg/apache/xmlbeans/QNameSet;

    return-object p0

    :cond_3
    const-string v0, ""

    if-nez p0, :cond_4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object p0, Lorg/apache/xmlbeans/QNameSet;->LOCAL:Lorg/apache/xmlbeans/QNameSet;

    return-object p0

    :cond_4
    if-nez p1, :cond_5

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_5

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lorg/apache/xmlbeans/QNameSet;->NONLOCAL:Lorg/apache/xmlbeans/QNameSet;

    return-object p0

    :cond_5
    new-instance v0, Lorg/apache/xmlbeans/QNameSet;

    invoke-static {p0}, Lorg/apache/xmlbeans/QNameSet;->minSetCopy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/xmlbeans/QNameSet;->minSetCopy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p2}, Lorg/apache/xmlbeans/QNameSet;->minSetCopy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p3}, Lorg/apache/xmlbeans/QNameSet;->minSetCopy(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/xmlbeans/QNameSet;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Exactly one of excludedURIs and includedURIs must be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static forSpecification(Lorg/apache/xmlbeans/QNameSetSpecification;)Lorg/apache/xmlbeans/QNameSet;
    .locals 3

    instance-of v0, p0, Lorg/apache/xmlbeans/QNameSet;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/xmlbeans/QNameSet;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedURIs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedQNamesInIncludedURIs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p0}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lorg/apache/xmlbeans/QNameSet;->forSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object p0

    return-object p0
.end method

.method public static forWildcardNamespaceString(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/QNameSet;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/QNameSet;->forSpecification(Lorg/apache/xmlbeans/QNameSetSpecification;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object p0

    return-object p0
.end method

.method private isDisjointImpl(Lorg/apache/xmlbeans/QNameSetSpecification;Lorg/apache/xmlbeans/QNameSetSpecification;)Z
    .locals 5

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedURIs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedURIs()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_1
    invoke-interface {p2}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {p2, v3}, Lorg/apache/xmlbeans/QNameSetSpecification;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {p2}, Lorg/apache/xmlbeans/QNameSetSpecification;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/QNameSetSpecification;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method private static minSetCopy(Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private prettyQName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static singleton(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/QNameSet;
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/QNameSet;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1, p0}, Lorg/apache/xmlbeans/QNameSet;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSet;->_includedURIs:Ljava/util/Set;

    invoke-static {p1}, Lorg/apache/xmlbeans/QNameSet;->nsFromName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSet;->_excludedQNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSet;->_includedQNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSet;->_inverted:Z

    xor-int/2addr p1, v0

    return p1
.end method

.method public containsAll(Lorg/apache/xmlbeans/QNameSetSpecification;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSet;->_inverted:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedURIs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/QNameSet;->inverse()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/QNameSet;->isDisjoint(Lorg/apache/xmlbeans/QNameSetSpecification;)Z

    move-result p1

    return p1
.end method

.method public excludedQNamesInIncludedURIs()Ljava/util/Set;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSet;->_inverted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSet;->_includedQNames:Ljava/util/Set;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSet;->_excludedQNames:Ljava/util/Set;

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public excludedURIs()Ljava/util/Set;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSet;->_inverted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSet;->_includedURIs:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public includedQNamesInExcludedURIs()Ljava/util/Set;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSet;->_inverted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSet;->_excludedQNames:Ljava/util/Set;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSet;->_includedQNames:Ljava/util/Set;

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public includedURIs()Ljava/util/Set;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSet;->_inverted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSet;->_includedURIs:Ljava/util/Set;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public intersect(Lorg/apache/xmlbeans/QNameSetSpecification;)Lorg/apache/xmlbeans/QNameSet;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->restrict(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->toQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object p1

    return-object p1
.end method

.method public inverse()Lorg/apache/xmlbeans/QNameSet;
    .locals 5

    sget-object v0, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    if-ne p0, v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/QNameSet;->ALL:Lorg/apache/xmlbeans/QNameSet;

    return-object v0

    :cond_0
    sget-object v1, Lorg/apache/xmlbeans/QNameSet;->ALL:Lorg/apache/xmlbeans/QNameSet;

    if-ne p0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/xmlbeans/QNameSet;->LOCAL:Lorg/apache/xmlbeans/QNameSet;

    if-ne p0, v0, :cond_2

    sget-object v0, Lorg/apache/xmlbeans/QNameSet;->NONLOCAL:Lorg/apache/xmlbeans/QNameSet;

    return-object v0

    :cond_2
    sget-object v1, Lorg/apache/xmlbeans/QNameSet;->NONLOCAL:Lorg/apache/xmlbeans/QNameSet;

    if-ne p0, v1, :cond_3

    return-object v0

    :cond_3
    new-instance v0, Lorg/apache/xmlbeans/QNameSet;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/QNameSet;->includedURIs()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/QNameSet;->excludedURIs()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/QNameSet;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/QNameSet;->excludedQNamesInIncludedURIs()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xmlbeans/QNameSet;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public isAll()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSet;->_inverted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSet;->_includedURIs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSet;->_includedQNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisjoint(Lorg/apache/xmlbeans/QNameSetSpecification;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSet;->_inverted:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/QNameSetSpecification;->excludedURIs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSet;->_inverted:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p0}, Lorg/apache/xmlbeans/QNameSet;->isDisjointImpl(Lorg/apache/xmlbeans/QNameSetSpecification;Lorg/apache/xmlbeans/QNameSetSpecification;)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p0, p1}, Lorg/apache/xmlbeans/QNameSet;->isDisjointImpl(Lorg/apache/xmlbeans/QNameSetSpecification;Lorg/apache/xmlbeans/QNameSetSpecification;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/QNameSet;->_inverted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSet;->_includedURIs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/QNameSet;->_includedQNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "QNameSet"

    .line 2
    .line 3
    invoke-static {v0}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lorg/apache/xmlbeans/QNameSet;->_inverted:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, "-("

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v1, "+("

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lorg/apache/xmlbeans/QNameSet;->_includedURIs:Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, ", "

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const-string v2, "+*@"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/QNameSet;->_excludedQNames:Ljava/util/Set;

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    const-string v2, "-"

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    .line 71
    .line 72
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/QNameSet;->prettyQName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/QNameSet;->_includedQNames:Ljava/util/Set;

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    const-string v2, "+"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    .line 105
    .line 106
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/QNameSet;->prettyQName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-lez v1, :cond_4

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 124
    .line 125
    .line 126
    :cond_4
    const/16 v1, 0x29

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0
.end method

.method public union(Lorg/apache/xmlbeans/QNameSetSpecification;)Lorg/apache/xmlbeans/QNameSet;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/QNameSetBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/QNameSetBuilder;-><init>(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/QNameSetBuilder;->addAll(Lorg/apache/xmlbeans/QNameSetSpecification;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/QNameSetBuilder;->toQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object p1

    return-object p1
.end method

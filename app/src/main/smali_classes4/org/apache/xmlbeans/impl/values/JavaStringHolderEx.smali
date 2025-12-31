.class public abstract Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;
.super Lorg/apache/xmlbeans/impl/values/JavaStringHolder;
.source "SourceFile"


# instance fields
.field private _schemaType:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/JavaStringHolder;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->initComplexType(ZZ)V

    return-void
.end method

.method public static validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/SchemaType;->matchPatternFacet(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "string"

    if-nez v5, :cond_0

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v6, v0, v3

    aput-object p0, v0, v4

    aput-object p1, v0, v2

    const-string p0, "cvc-datatype-valid.1.1"

    invoke-interface {p2, p0, v0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v5

    if-eqz v5, :cond_1

    check-cast v5, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v5, :cond_1

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v7, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v3

    aput-object v7, v0, v4

    aput-object p0, v0, v2

    aput-object p1, v0, v1

    const-string p0, "cvc-length-valid.1.1"

    invoke-interface {p2, p0, v0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v5, :cond_2

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v7, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v3

    aput-object v7, v0, v4

    aput-object p0, v0, v2

    aput-object p1, v0, v1

    const-string p0, "cvc-minLength-valid.1.1"

    invoke-interface {p2, p0, v0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v5

    if-eqz v5, :cond_3

    check-cast v5, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v5, :cond_3

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v7, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v3

    aput-object v7, v0, v4

    aput-object p0, v0, v2

    aput-object p1, v0, v1

    const-string p0, "cvc-maxLength-valid.1.1"

    invoke-interface {p2, p0, v0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v5, 0x0

    :goto_0
    array-length v7, v0

    if-ge v5, v7, :cond_5

    aget-object v7, v0, v5

    invoke-interface {v7}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    return-void

    :cond_4
    add-int/2addr v5, v4

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v6, v0, v3

    aput-object p0, v0, v4

    aput-object p1, v0, v2

    const-string p0, "cvc-enumeration-valid"

    invoke-interface {p2, p0, v0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public get_wscanon_rule()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getWhiteSpaceRule()I

    move-result v0

    return v0
.end method

.method public is_defaultable_ws(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaStringHolder;->set_text(Ljava/lang/String;)V

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/JavaStringHolderEx;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    return-void
.end method

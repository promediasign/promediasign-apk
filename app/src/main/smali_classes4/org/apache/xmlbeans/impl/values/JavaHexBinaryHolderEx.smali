.class public abstract Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolderEx;
.super Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolder;
.source "SourceFile"


# instance fields
.field private _schemaType:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolder;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->initComplexType(ZZ)V

    return-void
.end method

.method public static validateValue([BLorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v5

    const-string v6, "hexBinary"

    if-eqz v5, :cond_0

    check-cast v5, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    array-length v7, p0

    if-eq v5, v7, :cond_0

    new-instance v7, Ljava/lang/Integer;

    array-length v8, p0

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v5

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v6, v9, v4

    aput-object v7, v9, v3

    aput-object v8, v9, v2

    aput-object v5, v9, v0

    const-string v5, "cvc-length-valid.1.2"

    invoke-interface {p2, v5, v9}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v5

    if-eqz v5, :cond_1

    check-cast v5, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    array-length v7, p0

    if-le v5, v7, :cond_1

    new-instance v7, Ljava/lang/Integer;

    array-length v8, p0

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v5

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v6, v9, v4

    aput-object v7, v9, v3

    aput-object v8, v9, v2

    aput-object v5, v9, v0

    const-string v5, "cvc-minLength-valid.1.2"

    invoke-interface {p2, v5, v9}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    array-length v7, p0

    if-ge v5, v7, :cond_2

    new-instance v7, Ljava/lang/Integer;

    array-length v8, p0

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v4

    aput-object v7, v1, v3

    aput-object v8, v1, v2

    aput-object v5, v1, v0

    const-string v0, "cvc-maxLength-valid.1.2"

    invoke-interface {p2, v0, v1}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_5

    aget-object v5, v0, v1

    check-cast v5, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->byteArrayValue()[B

    move-result-object v5

    array-length v7, v5

    array-length v8, p0

    if-eq v7, v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_5

    aget-byte v8, v5, v7

    aget-byte v9, p0, v7

    if-eq v8, v9, :cond_4

    :goto_2
    add-int/2addr v1, v3

    goto :goto_0

    :cond_4
    add-int/2addr v7, v3

    goto :goto_1

    :cond_5
    array-length p0, v0

    if-lt v1, p0, :cond_6

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v6, p1, v4

    aput-object p0, p1, v3

    const-string p0, "cvc-enumeration-valid.b"

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public get_wscanon_rule()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getWhiteSpaceRule()I

    move-result v0

    return v0
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolderEx;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public set_ByteArray([B)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolderEx;->validateValue([BLorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolder;->set_ByteArray([B)V

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolder;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolder;->lex(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)[B

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_voorVc:Lorg/apache/xmlbeans/impl/common/ValidationContext;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolderEx;->validateValue([BLorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    :cond_1
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolder;->set_ByteArray([B)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolder;->_value:[B

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolder;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)[B

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->byteArrayValue()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolderEx;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/values/JavaHexBinaryHolderEx;->validateValue([BLorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    return-void
.end method

.class public Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_REGEX_ARRAY:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

.field static synthetic class$org$apache$xmlbeans$impl$schema$StscSimpleTypeResolver:Ljava/lang/Class;

.field private static final facetCodeMap:Ljava/util/Map;

.field private static facetCodes:[Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/16 v6, 0x9

    const/16 v7, 0xb

    const/16 v8, 0xa

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    sget-object v12, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->class$org$apache$xmlbeans$impl$schema$StscSimpleTypeResolver:Ljava/lang/Class;

    if-nez v12, :cond_0

    const-string v12, "org.apache.xmlbeans.impl.schema.StscSimpleTypeResolver"

    invoke-static {v12}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->class$org$apache$xmlbeans$impl$schema$StscSimpleTypeResolver:Ljava/lang/Class;

    :cond_0
    sput-boolean v11, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->$assertionsDisabled:Z

    new-array v12, v10, [Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    sput-object v12, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->EMPTY_REGEX_ARRAY:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    new-instance v12, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    const-string v13, "length"

    const-string v14, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v13, v14}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v13

    invoke-direct {v12, v13, v10}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    new-instance v13, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    const-string v15, "minLength"

    invoke-static {v15, v14}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v15

    invoke-direct {v13, v15, v11}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    new-instance v15, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    const-string v11, "maxLength"

    invoke-static {v11, v14}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v11

    invoke-direct {v15, v11, v9}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    new-instance v11, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    const-string v9, "pattern"

    invoke-static {v9, v14}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v9

    invoke-direct {v11, v9, v8}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    new-instance v9, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    const-string v8, "enumeration"

    invoke-static {v8, v14}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v8

    invoke-direct {v9, v8, v7}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    new-instance v8, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    const-string v7, "whiteSpace"

    invoke-static {v7, v14}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v7

    invoke-direct {v8, v7, v6}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    new-instance v7, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    const-string v6, "maxInclusive"

    invoke-static {v6, v14}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v6

    invoke-direct {v7, v6, v5}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    new-instance v6, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    const-string v5, "maxExclusive"

    invoke-static {v5, v14}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-direct {v6, v5, v4}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    new-instance v5, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    const-string v4, "minInclusive"

    invoke-static {v4, v14}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-direct {v5, v4, v3}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    new-instance v4, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    const-string v3, "minExclusive"

    invoke-static {v3, v14}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    new-instance v3, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    const-string v2, "totalDigits"

    invoke-static {v2, v14}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    new-instance v2, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    const-string v1, "fractionDigits"

    invoke-static {v1, v14}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    const/16 v1, 0xc

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    aput-object v12, v1, v10

    const/4 v10, 0x1

    aput-object v13, v1, v10

    const/4 v10, 0x2

    aput-object v15, v1, v10

    const/4 v10, 0x3

    aput-object v11, v1, v10

    const/4 v10, 0x4

    aput-object v9, v1, v10

    const/4 v9, 0x5

    aput-object v8, v1, v9

    const/4 v8, 0x6

    aput-object v7, v1, v8

    const/4 v7, 0x7

    aput-object v6, v1, v7

    aput-object v5, v1, v0

    const/16 v0, 0x9

    aput-object v4, v1, v0

    const/16 v0, 0xa

    aput-object v3, v1, v0

    const/16 v0, 0xb

    aput-object v2, v1, v0

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->facetCodes:[Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->buildFacetCodeMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->facetCodeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildFacetCodeMap()Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->facetCodes:[Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    iget-object v3, v2, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;->name:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v4, Ljava/lang/Integer;

    iget v2, v2, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver$CodeForNameEntry;->code:I

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
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

.method private static decimalSizeOfType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)I
    .locals 3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->mathematicalSizeOfType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0x10

    if-ne v0, v1, :cond_0

    sget-object v1, Lorg/apache/xmlbeans/XmlByte;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/SchemaType;->isAssignableFrom(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    if-ne v0, v2, :cond_1

    sget-object v1, Lorg/apache/xmlbeans/XmlShort;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/SchemaType;->isAssignableFrom(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/xmlbeans/XmlUnsignedByte;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/SchemaType;->isAssignableFrom(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 v0, 0x20

    :cond_1
    return v0
.end method

.method public static facetAppliesToType(ILorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Z
    .locals 6

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSimpleVariety()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    sget-boolean p0, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->$assertionsDisabled:Z

    if-eqz p0, :cond_0

    return v3

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    packed-switch p0, :pswitch_data_1

    return v3

    :pswitch_1
    return v4

    :pswitch_2
    packed-switch p0, :pswitch_data_2

    :pswitch_3
    return v3

    :pswitch_4
    return v4

    :pswitch_5
    if-eqz p0, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v2, :cond_1

    packed-switch p0, :pswitch_data_3

    return v3

    :cond_1
    :pswitch_6
    return v4

    :pswitch_7
    const/16 p1, 0x9

    if-eq p0, p1, :cond_2

    if-eq p0, v1, :cond_2

    return v3

    :cond_2
    return v4

    :pswitch_8
    return v3

    :cond_3
    if-eqz p0, :cond_4

    if-eq p0, v4, :cond_4

    if-eq p0, v2, :cond_4

    packed-switch p0, :pswitch_data_4

    return v3

    :cond_4
    :pswitch_9
    return v4

    :cond_5
    if-eq p0, v1, :cond_6

    const/16 p1, 0xb

    if-eq p0, p1, :cond_6

    return v3

    :cond_6
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private static isDiscreteType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Z
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isMultipleFacet(I)Z
    .locals 1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isNumericPrimitive(Lorg/apache/xmlbeans/SchemaType;)Z
    .locals 0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static makeRefArray(Ljava/util/Collection;)[Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 3

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static makeValueRefArray([Lorg/apache/xmlbeans/XmlAnySimpleType;)[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;
    .locals 5

    array-length v0, p0

    new-array v1, v0, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    new-instance v4, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-direct {v4, v3}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;-><init>(Lorg/apache/xmlbeans/XmlAnySimpleType;)V

    move-object v3, v4

    :goto_1
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static mathematicalSizeOfType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)I
    .locals 6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v1

    :cond_3
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SimpleValue;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SimpleValue;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v2

    :cond_5
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v5

    if-eqz v5, :cond_8

    :try_start_0
    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SimpleValue;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-wide v4, 0xde0b6b3a763ffffL

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :pswitch_1
    const-wide/32 v4, 0x3b9ac9ff

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_2

    :pswitch_2
    const-wide/16 v4, 0x270f

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_2

    :pswitch_3
    const-wide/16 v4, 0x63

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    if-nez v1, :cond_6

    :goto_3
    move-object v1, p0

    goto :goto_4

    :cond_6
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_3

    :goto_4
    if-nez v2, :cond_7

    move-object v2, v3

    goto :goto_5

    :cond_7
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    move-object v2, p0

    :cond_8
    :goto_5
    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_9

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_9
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_a

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :cond_a
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-wide/16 v1, 0x7f

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_b

    return v0

    :cond_b
    const-wide/16 v0, 0x7fff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_c

    const/16 p0, 0x10

    return p0

    :cond_c
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_d

    const/16 p0, 0x20

    return p0

    :cond_d
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_e

    const/16 p0, 0x40

    return p0

    :cond_e
    const p0, 0xf4240

    return p0

    :cond_f
    :goto_6
    const p0, 0xf4241

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static other_similar_limit(I)I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    sget-boolean p0, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->$assertionsDisabled:Z

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method public static resolveErrorSimpleType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleTypeVariety(I)V

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseDepth(I)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPrimitiveTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    return-void
.end method

.method public static resolveFacets(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x2

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v5

    const/16 v0, 0xc

    new-array v6, v0, [Z

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBasicFacets()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFixedFacets()[Z

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_30

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-eqz v0, :cond_2f

    invoke-interface {v13}, Lorg/apache/xmlbeans/XmlCursor;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v17

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->translateFacetCode(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v12

    const/4 v0, -0x1

    if-ne v12, v0, :cond_0

    :goto_1
    move-object/from16 v18, v6

    :goto_2
    const/16 v19, 0x0

    goto/16 :goto_19

    :cond_0
    invoke-interface {v13}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;

    invoke-static {v12, v3}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->facetAppliesToType(ILorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v17, v12, v11

    aput-object v0, v12, v10

    const-string v0, "cos-applicable-facets"

    invoke-virtual {v5, v0, v12, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSimpleVariety()I

    move-result v0

    if-ne v0, v10, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v0

    const/16 v11, 0x8

    if-ne v0, v11, :cond_3

    if-eqz v12, :cond_2

    if-eq v12, v10, :cond_2

    if-ne v12, v4, :cond_3

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    new-array v11, v4, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v17, v11, v19

    aput-object v0, v11, v10

    const-string v0, "notation-facets"

    invoke-virtual {v5, v0, v11, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->warning(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_3
    aget-boolean v0, v6, v12

    if-eqz v0, :cond_4

    invoke-static {v12}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->isMultipleFacet(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "src-single-facet-value"

    const/4 v11, 0x0

    invoke-virtual {v5, v0, v11, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_1

    :cond_4
    aput-boolean v10, v6, v12

    const-string v11, "length-minLength-maxLength"

    const-string v0, "Must be a nonnegative integer"

    const-string v4, "facet-fixed"

    const/16 v10, 0x14

    packed-switch v12, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    :try_start_0
    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;->getValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->newValue(Ljava/lang/Object;Z)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v15, :cond_5

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object/from16 v18, v6

    :goto_4
    const/4 v4, 0x2

    const/16 v19, 0x0

    goto/16 :goto_1a

    :catch_0
    move-exception v0

    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;->getValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v11, v10

    const/4 v4, 0x1

    aput-object v0, v11, v4

    const-string v0, "enumeration-valid-restriction"

    invoke-virtual {v5, v0, v11, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :goto_5
    move-object/from16 v18, v6

    :goto_6
    const/4 v4, 0x2

    goto/16 :goto_2

    :pswitch_1
    :try_start_1
    new-instance v0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;->getValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const-string v10, "X"

    invoke-direct {v0, v4, v10}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/regex/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v16, :cond_6

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    move-object/from16 v4, v16

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v4

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;->getValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v11, v10

    const/4 v4, 0x1

    aput-object v0, v11, v4

    const-string v0, "pattern-regex"

    invoke-virtual {v5, v0, v11, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_5

    :pswitch_2
    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;->getValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->translateWhitespaceCode(Lorg/apache/xmlbeans/XmlAnySimpleType;)I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getWhiteSpaceRule()I

    move-result v0

    if-le v0, v14, :cond_7

    const-string v0, "whiteSpace-valid-restriction"

    const/4 v4, 0x0

    invoke-virtual {v5, v0, v4, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    move-object/from16 v18, v6

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v14, 0x0

    const/16 v19, 0x0

    goto/16 :goto_1b

    :cond_7
    invoke-static {v14}, Lorg/apache/xmlbeans/impl/schema/StscState;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;->get()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    aput-object v0, v7, v12

    goto/16 :goto_3

    :pswitch_3
    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;->getValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->buildNnInteger(Lorg/apache/xmlbeans/XmlAnySimpleType;)Lorg/apache/xmlbeans/XmlNonNegativeInteger;

    move-result-object v11

    if-nez v11, :cond_8

    :goto_7
    invoke-virtual {v5, v0, v10, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_3

    :cond_8
    aget-boolean v0, v8, v12

    if-eqz v0, :cond_9

    aget-object v0, v7, v12

    invoke-interface {v0, v11}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v17, v0, v10

    invoke-virtual {v5, v4, v0, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_5

    :cond_9
    const/16 v4, 0x8

    aget-object v0, v7, v4

    if-eqz v0, :cond_a

    invoke-interface {v11, v0}, Lorg/apache/xmlbeans/XmlObject;->compareValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "fractionDigits-valid-restriction"

    const/4 v4, 0x0

    invoke-virtual {v5, v0, v4, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :goto_8
    const/4 v0, 0x7

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    goto :goto_8

    :goto_9
    aget-object v0, v7, v0

    if-eqz v0, :cond_b

    invoke-interface {v11, v0}, Lorg/apache/xmlbeans/XmlObject;->compareValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "fractionDigits-totalDigits"

    invoke-virtual {v5, v0, v4, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_b
    aput-object v11, v7, v12

    goto/16 :goto_3

    :pswitch_4
    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;->getValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->buildPosInteger(Lorg/apache/xmlbeans/XmlAnySimpleType;)Lorg/apache/xmlbeans/XmlPositiveInteger;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "Must be a positive integer"

    goto :goto_7

    :cond_c
    aget-boolean v10, v8, v12

    if-eqz v10, :cond_d

    aget-object v10, v7, v12

    invoke-interface {v10, v0}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v10

    if-nez v10, :cond_d

    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v17, v0, v10

    invoke-virtual {v5, v4, v0, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_5

    :cond_d
    const/4 v4, 0x7

    aget-object v4, v7, v4

    if-eqz v4, :cond_e

    invoke-interface {v0, v4}, Lorg/apache/xmlbeans/XmlObject;->compareValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result v4

    if-lez v4, :cond_e

    const-string v4, "totalDigits-valid-restriction"

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v10, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_e
    aput-object v0, v7, v12

    goto/16 :goto_3

    :pswitch_5
    invoke-static {v12}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->other_similar_limit(I)I

    move-result v0

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_f

    const-string v0, "Cannot define both inclusive and exclusive limit in the same restriciton"

    const/16 v4, 0x13

    :goto_a
    invoke-virtual {v5, v0, v4, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_5

    :cond_f
    const/4 v11, 0x4

    const/4 v10, 0x3

    if-eq v12, v10, :cond_11

    if-ne v12, v11, :cond_10

    goto :goto_b

    :cond_10
    const/4 v0, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v0, 0x1

    :goto_c
    const/4 v11, 0x6

    if-eq v12, v10, :cond_13

    if-ne v12, v11, :cond_12

    goto :goto_d

    :cond_12
    const/16 v21, 0x0

    goto :goto_e

    :cond_13
    :goto_d
    const/16 v21, 0x1

    :goto_e
    :try_start_2
    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;->getValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v11

    const/4 v10, 0x1

    invoke-virtual {v3, v11, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->newValue(Ljava/lang/Object;Z)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v11
    :try_end_2
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_2 .. :try_end_2} :catch_2

    aget-boolean v20, v8, v12

    if-eqz v20, :cond_14

    aget-object v10, v7, v12

    invoke-interface {v10, v11}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v10

    if-nez v10, :cond_14

    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v17, v0, v10

    invoke-virtual {v5, v4, v0, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_5

    :cond_14
    aget-object v4, v7, v12

    if-eqz v4, :cond_1c

    invoke-interface {v11}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v10

    if-nez v10, :cond_15

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v4

    const/4 v10, 0x2

    if-ne v4, v10, :cond_16

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;->getValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v11

    invoke-interface {v4, v11}, Lorg/apache/xmlbeans/SchemaType;->newValue(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v11

    goto :goto_f

    :cond_15
    const/4 v10, 0x2

    :cond_16
    :goto_f
    aget-object v4, v7, v12

    invoke-interface {v11, v4}, Lorg/apache/xmlbeans/XmlObject;->compareValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result v4

    if-eq v4, v10, :cond_18

    if-eqz v0, :cond_17

    const/4 v10, -0x1

    goto :goto_10

    :cond_17
    const/4 v10, 0x1

    :goto_10
    if-ne v4, v10, :cond_1c

    :cond_18
    if-eqz v0, :cond_1a

    if-eqz v21, :cond_19

    const-string v0, "Must be greater than or equal to previous minExclusive"

    :goto_11
    const/16 v4, 0x14

    goto :goto_a

    :cond_19
    const-string v0, "Must be greater than or equal to previous minInclusive"

    goto :goto_11

    :cond_1a
    if-eqz v21, :cond_1b

    const-string v0, "Must be less than or equal to previous maxExclusive"

    goto :goto_11

    :cond_1b
    const-string v0, "Must be less than or equal to previous maxInclusive"

    goto :goto_11

    :cond_1c
    aput-object v11, v7, v12

    invoke-static {v12}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->other_similar_limit(I)I

    move-result v0

    const/4 v4, 0x0

    aput-object v4, v7, v0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    const/4 v4, 0x3

    if-eq v12, v4, :cond_20

    const/4 v4, 0x4

    if-eq v12, v4, :cond_1f

    const/4 v4, 0x5

    if-eq v12, v4, :cond_1e

    const/4 v4, 0x6

    if-eq v12, v4, :cond_1d

    goto/16 :goto_5

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const-string v0, "maxExclusive-valid-restriction"

    invoke-virtual {v5, v0, v10, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_5

    :cond_1e
    const/4 v4, 0x1

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v0, v10, v11

    const-string v0, "maxInclusive-valid-restriction"

    invoke-virtual {v5, v0, v10, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_5

    :cond_1f
    const/4 v4, 0x1

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v0, v10, v11

    const-string v0, "minInclusive-valid-restriction"

    invoke-virtual {v5, v0, v10, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_5

    :cond_20
    const/4 v4, 0x1

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v0, v10, v11

    const-string v0, "minExclusive-valid-restriction"

    invoke-virtual {v5, v0, v10, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_5

    :pswitch_6
    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;->getValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->buildNnInteger(Lorg/apache/xmlbeans/XmlAnySimpleType;)Lorg/apache/xmlbeans/XmlNonNegativeInteger;

    move-result-object v10

    move-object/from16 v18, v6

    if-nez v10, :cond_21

    const/16 v6, 0x14

    invoke-virtual {v5, v0, v6, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_6

    :cond_21
    aget-boolean v0, v8, v12

    if-eqz v0, :cond_22

    aget-object v0, v7, v12

    invoke-interface {v0, v10}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v17, v0, v6

    invoke-virtual {v5, v4, v0, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_6

    :cond_22
    const/4 v6, 0x0

    aget-object v0, v7, v6

    if-eqz v0, :cond_23

    invoke-virtual {v3, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-interface {v0, v10}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v4, 0x1

    if-ne v12, v4, :cond_25

    aget-object v4, v7, v6

    invoke-interface {v0, v4}, Lorg/apache/xmlbeans/XmlObject;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_24

    :cond_23
    const/4 v4, 0x0

    const/4 v6, 0x2

    goto :goto_14

    :cond_24
    :goto_12
    const/4 v4, 0x0

    goto :goto_13

    :cond_25
    aget-object v4, v7, v6

    invoke-interface {v0, v4}, Lorg/apache/xmlbeans/XmlObject;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_23

    goto :goto_12

    :goto_13
    invoke-virtual {v5, v11, v4, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_6

    :goto_14
    aget-object v0, v7, v6

    if-eqz v0, :cond_26

    invoke-interface {v10, v0}, Lorg/apache/xmlbeans/XmlObject;->compareValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result v0

    if-lez v0, :cond_26

    const-string v0, "maxLength-valid-restriction"

    :goto_15
    invoke-virtual {v5, v0, v4, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_6

    :cond_26
    const/4 v6, 0x1

    aget-object v0, v7, v6

    if-eqz v0, :cond_27

    invoke-interface {v10, v0}, Lorg/apache/xmlbeans/XmlObject;->compareValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result v0

    if-gez v0, :cond_27

    const-string v0, "minLength-valid-restriction"

    goto :goto_15

    :cond_27
    aput-object v10, v7, v12

    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v18, v6

    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;->getValue()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->buildNnInteger(Lorg/apache/xmlbeans/XmlAnySimpleType;)Lorg/apache/xmlbeans/XmlNonNegativeInteger;

    move-result-object v6

    if-nez v6, :cond_28

    const/16 v10, 0x14

    invoke-virtual {v5, v0, v10, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto/16 :goto_6

    :cond_28
    aget-boolean v0, v8, v12

    if-eqz v0, :cond_29

    aget-object v0, v7, v12

    invoke-interface {v0, v6}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v17, v0, v19

    invoke-virtual {v5, v4, v0, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :goto_16
    const/4 v4, 0x2

    goto :goto_19

    :cond_29
    const/4 v10, 0x1

    const/16 v19, 0x0

    aget-object v0, v7, v10

    if-eqz v0, :cond_2b

    invoke-virtual {v3, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    if-eqz v0, :cond_2a

    aget-object v4, v7, v10

    invoke-interface {v0, v4}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v0, v6}, Lorg/apache/xmlbeans/XmlObject;->compareValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result v0

    if-lez v0, :cond_2b

    :cond_2a
    const/4 v4, 0x0

    goto :goto_17

    :cond_2b
    const/4 v4, 0x2

    goto :goto_18

    :goto_17
    invoke-virtual {v5, v11, v4, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_16

    :goto_18
    aget-object v0, v7, v4

    if-eqz v0, :cond_2e

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    if-eqz v0, :cond_2c

    aget-object v10, v7, v4

    invoke-interface {v0, v10}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-interface {v0, v6}, Lorg/apache/xmlbeans/XmlObject;->compareValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result v0

    if-gez v0, :cond_2e

    :cond_2c
    const/4 v6, 0x0

    invoke-virtual {v5, v11, v6, v9}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_2d
    :goto_19
    const/4 v6, 0x1

    goto :goto_1b

    :cond_2e
    aput-object v6, v7, v12

    :goto_1a
    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;->getFixed()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v6, 0x1

    aput-boolean v6, v8, v12

    :goto_1b
    invoke-interface {v13}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    move-result v0

    move-object/from16 v6, v18

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_2f
    const/4 v6, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v16

    goto :goto_1c

    :cond_30
    const/4 v6, 0x1

    const/16 v19, 0x0

    const/4 v0, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1c
    invoke-static {v7}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->makeValueRefArray([Lorg/apache/xmlbeans/XmlAnySimpleType;)[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    invoke-virtual {v1, v4, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBasicFacets([Lorg/apache/xmlbeans/impl/schema/XmlValueRef;[Z)V

    if-nez v14, :cond_31

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getWhiteSpaceRule()I

    move-result v14

    :cond_31
    invoke-virtual {v1, v14}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setWhiteSpaceRule(I)V

    if-eqz v15, :cond_35

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/xmlbeans/XmlAnySimpleType;

    invoke-interface {v15, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/xmlbeans/XmlAnySimpleType;

    check-cast v4, [Lorg/apache/xmlbeans/XmlAnySimpleType;

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->makeValueRefArray([Lorg/apache/xmlbeans/XmlAnySimpleType;)[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setEnumerationValues([Lorg/apache/xmlbeans/impl/schema/XmlValueRef;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isRedefinition()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v7

    if-ne v7, v4, :cond_34

    goto :goto_1d

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    goto :goto_1e

    :cond_33
    :goto_1d
    move-object v4, v1

    :cond_34
    :goto_1e
    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseEnumTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_1f

    :cond_35
    invoke-virtual {v1, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->copyEnumerationValues(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    :goto_1f
    if-eqz v0, :cond_36

    sget-object v4, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->EMPTY_REGEX_ARRAY:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    goto :goto_20

    :cond_36
    sget-object v0, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->EMPTY_REGEX_ARRAY:[Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    :goto_20
    array-length v4, v0

    if-gtz v4, :cond_38

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->hasPatternFacet()Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_21

    :cond_37
    const/4 v10, 0x0

    goto :goto_22

    :cond_38
    :goto_21
    const/4 v10, 0x1

    :goto_22
    invoke-virtual {v1, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPatternFacet(Z)V

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPatterns([Lorg/apache/xmlbeans/impl/regex/RegularExpression;)V

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBuiltinTypeCode()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_39

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    if-nez v0, :cond_39

    const-string v0, "enumeration-required-notation"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->recover(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_39
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static resolveFundamentalFacets(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 9

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSimpleVariety()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    if-eq v0, v1, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setOrdered(I)V

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBounded(Z)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getListItemType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isFinite()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFinite(Z)V

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setNumeric(Z)V

    :goto_3
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDecimalSize(I)V

    goto/16 :goto_a

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUnionMemberTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_4
    array-length v8, v0

    if-ge v1, v8, :cond_9

    aget-object v8, v0, v1

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaType;->ordered()I

    move-result v8

    if-eqz v8, :cond_5

    const/4 v4, 0x1

    :cond_5
    aget-object v8, v0, v1

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaType;->isBounded()Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v5, 0x0

    :cond_6
    aget-object v8, v0, v1

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaType;->isFinite()Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v6, 0x0

    :cond_7
    aget-object v8, v0, v1

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaType;->isNumeric()Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v7, 0x0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setOrdered(I)V

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBounded(Z)V

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFinite(Z)V

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setNumeric(Z)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->ordered()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setOrdered(I)V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-nez v1, :cond_b

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_c

    :cond_b
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-nez v1, :cond_d

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v1, 0x1

    :goto_6
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBounded(Z)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isFinite()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isBounded()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->isDiscreteType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v1, 0x1

    :goto_8
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFinite(Z)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNumeric()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->isNumericPrimitive(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    :cond_11
    :goto_9
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setNumeric(Z)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->decimalSizeOfType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDecimalSize(I)V

    :goto_a
    return-void
.end method

.method public static resolveListType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/xb/xsdschema/ListDocument$List;Ljava/util/List;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    const/4 v0, 0x0

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleTypeVariety(I)V

    sget-object v11, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v1

    const/4 v12, 0x1

    add-int/2addr v1, v12

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseDepth(I)V

    invoke-virtual {p0, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDerivationType(I)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isRedefinition()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v12, [Ljava/lang/Object;

    const-string v2, "list"

    aput-object v2, v1, v0

    const-string v2, "src-redefine.5a"

    invoke-virtual {v9, v2, v1, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ListDocument$List;->getItemType()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ListDocument$List;->getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    move-result-object v2

    const/4 v13, 0x0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const-string v2, "src-simple-type.3a"

    invoke-virtual {v9, v2, v13, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    move-object v14, v13

    goto :goto_0

    :cond_1
    move-object v14, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v1, v2, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->findGlobalType(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ListDocument$List;->xgetItemType()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v14

    if-nez v2, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ListDocument$List;->xgetItemType()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v2

    invoke-virtual {v9, v1, v0, v2, v12}, Lorg/apache/xmlbeans/impl/schema/StscState;->notFoundError(Lorg/apache/poi/javax/xml/namespace/QName;ILorg/apache/xmlbeans/XmlObject;Z)V

    move-object v2, v11

    goto :goto_2

    :cond_2
    if-eqz v14, :cond_c

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getElemFormDefault()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttFormDefault()Ljava/lang/String;

    move-result-object v4

    move-object v0, v14

    move-object/from16 v5, p2

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateAnonymousSimpleType(Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->finalList()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "st-props-correct.4.2.1"

    invoke-virtual {v9, v0, v13, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_5
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscResolver;->resolveType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Z

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isSimpleType()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "cos-st-restricts.2.1a"

    invoke-virtual {v9, v0, v13, v14}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    move-object v7, v11

    :cond_6
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSimpleVariety()I

    move-result v0

    if-eq v0, v12, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    if-eq v0, v10, :cond_8

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->$assertionsDisabled:Z

    if-eqz v0, :cond_7

    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setListItemTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    const-string v0, "cos-st-restricts.2.1b"

    invoke-virtual {v9, v0, v13, v14}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    invoke-static {v7}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveErrorSimpleType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    return-void

    :cond_9
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isUnionOfLists()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "cos-st-restricts.2.1c"

    invoke-virtual {v9, v0, v13, v14}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    invoke-static {v7}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveErrorSimpleType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    return-void

    :cond_a
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setListItemTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBuiltinTypeCode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    const-string v0, "enumeration-required-notation"

    invoke-virtual {v9, v0, v13, v14}, Lorg/apache/xmlbeans/impl/schema/StscState;->recover(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_b
    :goto_3
    sget-object v0, Lorg/apache/xmlbeans/impl/schema/StscState;->FACETS_LIST:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/StscState;->FIXED_FACETS_LIST:[Z

    invoke-virtual {v7, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBasicFacets([Lorg/apache/xmlbeans/impl/schema/XmlValueRef;[Z)V

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setWhiteSpaceRule(I)V

    invoke-static {v7}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveFundamentalFacets(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    return-void

    :cond_c
    const-string v0, "src-simple-type.3b"

    invoke-virtual {v9, v0, v13, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveErrorSimpleType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    return-void
.end method

.method public static resolveSimpleRestrictionType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;Ljava/util/List;)V
    .locals 14

    move-object v7, p0

    move-object v8, p1

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;->getBase()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;->getSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    move-result-object v2

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const-string v2, "src-simple-type.2a"

    invoke-virtual {v12, v2, v13, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    move-object v2, v13

    :cond_0
    const-string v3, "<simpleType>"

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isRedefinition()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;->getBase()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->findRedefinedGlobalType(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v0

    aput-object v4, v6, v11

    aput-object v5, v6, v9

    const-string v3, "src-redefine.5b"

    invoke-virtual {v12, v3, v6, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v1, v2, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->findGlobalType(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v2

    :cond_2
    :goto_0
    if-nez v2, :cond_7

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;->xgetBase()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v2

    invoke-virtual {v12, v1, v0, v2, v11}, Lorg/apache/xmlbeans/impl/schema/StscState;->notFoundError(Lorg/apache/poi/javax/xml/namespace/QName;ILorg/apache/xmlbeans/XmlObject;Z)V

    :goto_1
    sget-object v2, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isRedefinition()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v1

    const-string v4, "src-redefine.5a"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v0

    invoke-virtual {v1, v4, v5, v2}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getElemFormDefault()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttFormDefault()Ljava/lang/String;

    move-result-object v5

    move-object v0, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p2

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateAnonymousSimpleType(Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v2

    goto :goto_3

    :cond_6
    const-string v0, "src-simple-type.2b"

    invoke-virtual {v12, v0, v13, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_1

    :cond_7
    :goto_3
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/StscResolver;->resolveType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    :cond_8
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->finalRestriction()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "st-props-correct.3"

    invoke-virtual {v12, v0, v13, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_9
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseDepth(I)V

    invoke-virtual {p0, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDerivationType(I)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isSimpleType()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "cos-st-restricts.1.1"

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;->xgetBase()Lorg/apache/xmlbeans/XmlQName;

    move-result-object v1

    invoke-virtual {v12, v0, v13, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveErrorSimpleType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    return-void

    :cond_a
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSimpleVariety()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleTypeVariety(I)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSimpleVariety()I

    move-result v0

    if-eq v0, v11, :cond_d

    if-eq v0, v9, :cond_c

    if-eq v0, v10, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getListItemType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setListItemTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isUnionOfLists()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUnionOfLists(Z)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUnionMemberTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->makeRefArray(Ljava/util/Collection;)[Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUnionMemberTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_4

    :cond_d
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPrimitiveTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    :goto_4
    invoke-static {p0, p1, v2}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveFacets(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveFundamentalFacets(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    return-void
.end method

.method public static resolveSimpleType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isSimpleType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;->getSchema(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;->isSetList()Z

    move-result v2

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;->isSetUnion()Z

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;->isSetRestriction()Z

    move-result v2

    add-int/2addr v2, v3

    const/16 v3, 0x34

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v2

    const-string v5, "A simple type must define either a list, a union, or a restriction: more than one found."

    invoke-virtual {v2, v5, v3, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_1

    :cond_2
    if-ge v2, v4, :cond_3

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v1

    const-string v2, "A simple type must define either a list, a union, or a restriction: none was found."

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveErrorSimpleType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    return-void

    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;->isSetFinal()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;->getFinal()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->isSetFinalDefault()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->getFinalDefault()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x0

    if-eqz v1, :cond_7

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_6

    const-string v3, "#all"

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_7

    check-cast v1, Ljava/util/List;

    const-string v3, "restriction"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "list"

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "union"

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    move v4, v3

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_8
    :goto_3
    invoke-virtual {p0, v4, v5, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleFinal(ZZZ)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;->getList()Lorg/apache/xmlbeans/impl/xb/xsdschema/ListDocument$List;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;->getList()Lorg/apache/xmlbeans/impl/xb/xsdschema/ListDocument$List;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveListType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/xb/xsdschema/ListDocument$List;Ljava/util/List;)V

    goto :goto_4

    :cond_9
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;->getUnion()Lorg/apache/xmlbeans/impl/xb/xsdschema/UnionDocument$Union;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;->getUnion()Lorg/apache/xmlbeans/impl/xb/xsdschema/UnionDocument$Union;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveUnionType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/xb/xsdschema/UnionDocument$Union;Ljava/util/List;)V

    goto :goto_4

    :cond_a
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;->getRestriction()Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;->getRestriction()Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveSimpleRestrictionType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;Ljava/util/List;)V

    :cond_b
    :goto_4
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->makeRefArray(Ljava/util/Collection;)[Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnonymousTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    return-void
.end method

.method public static resolveUnionType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;Lorg/apache/xmlbeans/impl/xb/xsdschema/UnionDocument$Union;Ljava/util/List;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleTypeVariety(I)V

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v0

    const/4 v11, 0x1

    add-int/2addr v0, v11

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseDepth(I)V

    invoke-virtual {v7, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDerivationType(I)V

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isRedefinition()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "union"

    aput-object v1, v0, v9

    const-string v1, "src-redefine.5a"

    invoke-virtual {v12, v1, v0, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/UnionDocument$Union;->getMemberTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/UnionDocument$Union;->getSimpleTypeArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    array-length v1, v13

    const/4 v15, 0x0

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "src-union-memberTypes-or-simpleTypes"

    invoke-virtual {v12, v1, v15, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v1, v2, v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->findGlobalType(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/UnionDocument$Union;->xgetMemberTypes()Lorg/apache/xmlbeans/impl/xb/xsdschema/UnionDocument$Union$MemberTypes;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v2, v11}, Lorg/apache/xmlbeans/impl/schema/StscState;->notFoundError(Lorg/apache/poi/javax/xml/namespace/QName;ILorg/apache/xmlbeans/XmlObject;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_1
    array-length v0, v13

    if-ge v6, v0, :cond_6

    aget-object v0, v13, v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getChameleonNamespace()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getElemFormDefault()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getAttFormDefault()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p2

    move/from16 v16, v6

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->translateAnonymousSimpleType(Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v16, 0x1

    invoke-virtual {v0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnonymousUnionMemberOrdinal(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/StscResolver;->resolveType(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    goto :goto_4

    :cond_8
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/UnionDocument$Union;->xgetMemberTypes()Lorg/apache/xmlbeans/impl/xb/xsdschema/UnionDocument$Union$MemberTypes;

    move-result-object v1

    :goto_4
    const-string v2, "src-simple-type.4"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v9

    invoke-virtual {v12, v2, v4, v1}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isSimpleType()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getParseObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    move-object v5, v4

    move-object v4, v3

    goto :goto_6

    :cond_b
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/UnionDocument$Union;->xgetMemberTypes()Lorg/apache/xmlbeans/impl/xb/xsdschema/UnionDocument$Union$MemberTypes;

    move-result-object v5

    :goto_6
    const-string v6, "cos-st-restricts.3.1"

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v4, v13, v9

    invoke-virtual {v12, v6, v13, v5}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_c
    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSimpleVariety()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_d

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getSimpleVariety()I

    move-result v5

    if-ne v5, v10, :cond_a

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isUnionOfLists()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_d
    const/4 v1, 0x1

    goto :goto_5

    :cond_e
    :goto_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_10

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->finalUnion()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "st-props-correct.4.2.2"

    invoke-virtual {v12, v0, v15, v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_f
    add-int/2addr v9, v11

    goto :goto_7

    :cond_10
    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUnionOfLists(Z)V

    invoke-static {v14}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->makeRefArray(Ljava/util/Collection;)[Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setUnionMemberTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/StscState;->FACETS_UNION:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/StscState;->FIXED_FACETS_UNION:[Z

    invoke-virtual {v7, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBasicFacets([Lorg/apache/xmlbeans/impl/schema/XmlValueRef;[Z)V

    invoke-static/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->resolveFundamentalFacets(Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    return-void
.end method

.method private static translateFacetCode(Lorg/apache/poi/javax/xml/namespace/QName;)I
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/StscSimpleTypeResolver;->facetCodeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static translateWhitespaceCode(Lorg/apache/xmlbeans/XmlAnySimpleType;)I
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "collapse"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x3

    .line 14
    return p0

    .line 15
    :cond_0
    const-string v1, "preserve"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_1
    const-string v1, "replace"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/4 p0, 0x2

    .line 34
    return p0

    .line 35
    :cond_2
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "Unrecognized whitespace value \""

    .line 40
    .line 41
    const-string v3, "\""

    .line 42
    .line 43
    invoke-static {v2, v0, v3}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/16 v2, 0x14

    .line 48
    .line 49
    invoke-virtual {v1, v0, v2, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return p0
.end method

.class public Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;
.super Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaTypeSystem;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final BTC_ANY_ATOMIC:I = 0x34

.field public static final BTC_DAY_TIME_DURATION:I = 0x35

.field public static final BTC_FIRST_XQUERY:I = 0x34

.field public static final BTC_LAST_XQUERY:I = 0x36

.field public static final BTC_YEAR_MONTH_DURATION:I = 0x36

.field private static final EMPTY_SCHEMAANNOTATION_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

.field private static final EMPTY_SCHEMAATTRIBUTEGROUP_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

.field private static final EMPTY_SCHEMAATTRIBUTE_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

.field private static final EMPTY_SCHEMAELEMENT_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

.field private static final EMPTY_SCHEMAMODELGROUP_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

.field private static final EMPTY_SCHEMATYPEREF_ARRAY:[Lorg/apache/xmlbeans/SchemaType$Ref;

.field private static final EMPTY_SCHEMATYPE_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

.field private static final FACETS_BUILTIN_LIST:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_BYTE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_INT:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_INTEGER:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field static final FACETS_LIST:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_LONG:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_NEGATIVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_NONE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_NONNEGATIVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_NONPOSITIVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_POSITIVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_SHORT:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field static final FACETS_UNION:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_UNSIGNED_BYTE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_UNSIGNED_INT:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_UNSIGNED_LONG:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_UNSIGNED_SHORT:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_WS_COLLAPSE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_WS_PRESERVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FACETS_WS_REPLACE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final FIXED_FACETS_INTEGER:[Z

.field static final FIXED_FACETS_LIST:[Z

.field private static final FIXED_FACETS_NONE:[Z

.field static final FIXED_FACETS_UNION:[Z

.field private static final FIXED_FACETS_WS:[Z

.field public static final ST_ANY_ATOMIC:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_ANY_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_ANY_URI:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_BASE_64_BINARY:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_BOOLEAN:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_BYTE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_DATE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_DATE_TIME:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_DAY_TIME_DURATION:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_DECIMAL:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_DOUBLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_DURATION:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_ENTITIES:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_ENTITY:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_FLOAT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_G_DAY:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_G_MONTH:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_G_MONTH_DAY:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_G_YEAR:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_G_YEAR_MONTH:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_HEX_BINARY:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_ID:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_IDREF:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_IDREFS:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_INT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_INTEGER:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_LANGUAGE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_LONG:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_NAME:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_NCNAME:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_NEGATIVE_INTEGER:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_NMTOKEN:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_NMTOKENS:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_NON_NEGATIVE_INTEGER:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_NON_POSITIVE_INTEGER:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_NORMALIZED_STRING:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_NOTATION:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_POSITIVE_INTEGER:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_QNAME:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_SHORT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_STRING:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_TIME:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_TOKEN:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_UNSIGNED_BYTE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_UNSIGNED_INT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_UNSIGNED_LONG:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_UNSIGNED_SHORT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field public static final ST_YEAR_MONTH_DURATION:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field private static final XMLSTR_COLLAPSE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final XMLSTR_PRESERVE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static final XMLSTR_REPLACE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private static _global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

.field static synthetic class$org$apache$xmlbeans$impl$schema$BuiltinSchemaTypeSystem:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$impl$schema$XQuerySchemaTypeSystem:Ljava/lang/Class;


# instance fields
.field private _container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

.field private _handlesToObjects:Ljava/util/Map;

.field private _objectsToHandles:Ljava/util/Map;

.field private _typeArray:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field private _typeMap:Ljava/util/Map;

.field private _typesByClassname:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const/16 v0, 0x36

    const/16 v1, 0x2e

    const/16 v2, 0xb

    const/16 v3, 0xa

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/16 v11, 0xc

    const/4 v12, 0x1

    const/4 v13, 0x3

    const/4 v14, 0x0

    sget-object v16, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->class$org$apache$xmlbeans$impl$schema$XQuerySchemaTypeSystem:Ljava/lang/Class;

    if-nez v16, :cond_0

    const-string v16, "org.apache.xmlbeans.impl.schema.XQuerySchemaTypeSystem"

    invoke-static/range {v16 .. v16}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    sput-object v16, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->class$org$apache$xmlbeans$impl$schema$XQuerySchemaTypeSystem:Ljava/lang/Class;

    :cond_0
    sput-boolean v12, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->$assertionsDisabled:Z

    new-array v15, v14, [Lorg/apache/xmlbeans/SchemaType;

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMATYPE_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    new-array v15, v14, [Lorg/apache/xmlbeans/SchemaType$Ref;

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMATYPEREF_ARRAY:[Lorg/apache/xmlbeans/SchemaType$Ref;

    new-array v15, v14, [Lorg/apache/xmlbeans/SchemaGlobalElement;

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMAELEMENT_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

    new-array v15, v14, [Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMAATTRIBUTE_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    new-array v15, v14, [Lorg/apache/xmlbeans/SchemaModelGroup;

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMAMODELGROUP_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

    new-array v15, v14, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMAATTRIBUTEGROUP_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    new-array v15, v14, [Lorg/apache/xmlbeans/SchemaAnnotation;

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMAANNOTATION_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

    new-instance v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;-><init>()V

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v15, v12}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_ANY_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v15, v10}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v10, 0x34

    invoke-direct {v15, v10}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_ANY_ATOMIC:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v15, v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_BOOLEAN:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v15, v9}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_BASE_64_BINARY:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v15, v8}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_HEX_BINARY:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v15, v7}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_ANY_URI:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v15, v6}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_QNAME:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v15, v5}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NOTATION:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v15, v4}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_FLOAT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v15, v3}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_DOUBLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v15, v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_DECIMAL:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v15, v11}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_STRING:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v10, 0xd

    invoke-direct {v15, v10}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_DURATION:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0xe

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_DATE_TIME:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0xf

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_TIME:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x10

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_DATE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x11

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_G_YEAR_MONTH:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x12

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_G_YEAR:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x13

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_G_MONTH_DAY:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x14

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_G_DAY:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x15

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_G_MONTH:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x16

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_INTEGER:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x17

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_LONG:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x18

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_INT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x19

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_SHORT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x1a

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_BYTE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x1b

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NON_POSITIVE_INTEGER:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x1c

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NEGATIVE_INTEGER:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x1d

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NON_NEGATIVE_INTEGER:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x1e

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_POSITIVE_INTEGER:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x1f

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_UNSIGNED_LONG:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x20

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_UNSIGNED_INT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x21

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_UNSIGNED_SHORT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x22

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_UNSIGNED_BYTE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x23

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NORMALIZED_STRING:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x24

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_TOKEN:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x25

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NAME:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x26

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NCNAME:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x27

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_LANGUAGE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x28

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_ID:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x29

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_IDREF:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x2a

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_IDREFS:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x2b

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_ENTITY:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x2c

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_ENTITIES:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x2d

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NMTOKEN:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v10, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NMTOKENS:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    const/16 v15, 0x35

    invoke-direct {v10, v15}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_DAY_TIME_DURATION:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v10, v0}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_YEAR_MONTH_DURATION:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-direct {v10, v14}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    const-string v10, "preserve"

    invoke-static {v10}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->XMLSTR_PRESERVE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-static {v10}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v15

    sput-object v15, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->XMLSTR_REPLACE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-static {v10}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v10

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->XMLSTR_COLLAPSE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    new-array v10, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    const/4 v15, 0x0

    aput-object v15, v10, v14

    aput-object v15, v10, v12

    const/16 v16, 0x2

    aput-object v15, v10, v16

    aput-object v15, v10, v13

    aput-object v15, v10, v9

    aput-object v15, v10, v8

    aput-object v15, v10, v7

    aput-object v15, v10, v6

    aput-object v15, v10, v5

    aput-object v15, v10, v4

    aput-object v15, v10, v3

    aput-object v15, v10, v2

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_NONE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    new-array v0, v11, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_NONE:[Z

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v18

    new-array v1, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v1, v14

    aput-object v15, v1, v12

    const/16 v17, 0x2

    aput-object v15, v1, v17

    aput-object v15, v1, v13

    aput-object v15, v1, v9

    aput-object v15, v1, v8

    aput-object v15, v1, v7

    aput-object v15, v1, v6

    aput-object v15, v1, v5

    aput-object v18, v1, v4

    aput-object v15, v1, v3

    aput-object v15, v1, v2

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_WS_COLLAPSE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-static/range {v17 .. v17}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v18

    new-array v2, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v2, v14

    aput-object v15, v2, v12

    aput-object v15, v2, v17

    aput-object v15, v2, v13

    aput-object v15, v2, v9

    aput-object v15, v2, v8

    aput-object v15, v2, v7

    aput-object v15, v2, v6

    aput-object v15, v2, v5

    aput-object v18, v2, v4

    aput-object v15, v2, v3

    const/16 v18, 0xb

    aput-object v15, v2, v18

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_WS_REPLACE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-static {v12}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v2

    new-array v3, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v3, v14

    aput-object v15, v3, v12

    const/16 v17, 0x2

    aput-object v15, v3, v17

    aput-object v15, v3, v13

    aput-object v15, v3, v9

    aput-object v15, v3, v8

    aput-object v15, v3, v7

    aput-object v15, v3, v6

    aput-object v15, v3, v5

    aput-object v2, v3, v4

    const/16 v2, 0xa

    aput-object v15, v3, v2

    const/16 v2, 0xb

    aput-object v15, v3, v2

    sput-object v3, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_WS_PRESERVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v3

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v19

    new-array v4, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v4, v14

    aput-object v15, v4, v12

    const/16 v17, 0x2

    aput-object v15, v4, v17

    aput-object v15, v4, v13

    aput-object v15, v4, v9

    aput-object v15, v4, v8

    aput-object v15, v4, v7

    aput-object v15, v4, v6

    aput-object v3, v4, v5

    const/16 v3, 0x9

    aput-object v19, v4, v3

    const/16 v3, 0xa

    aput-object v15, v4, v3

    const/16 v3, 0xb

    aput-object v15, v4, v3

    sput-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_INTEGER:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v3

    const-wide v20, 0x7fffffffffffffffL

    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v19

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v20

    new-array v5, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v5, v14

    aput-object v15, v5, v12

    const/16 v17, 0x2

    aput-object v15, v5, v17

    aput-object v15, v5, v13

    aput-object v3, v5, v9

    aput-object v4, v5, v8

    aput-object v15, v5, v7

    aput-object v15, v5, v6

    const/16 v3, 0x8

    aput-object v19, v5, v3

    const/16 v3, 0x9

    aput-object v20, v5, v3

    const/16 v3, 0xa

    aput-object v15, v5, v3

    const/16 v3, 0xb

    aput-object v15, v5, v3

    sput-object v5, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_LONG:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    const-wide/32 v3, -0x80000000

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v3

    const-wide/32 v4, 0x7fffffff

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v5

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v19

    new-array v6, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v6, v14

    aput-object v15, v6, v12

    const/16 v17, 0x2

    aput-object v15, v6, v17

    aput-object v15, v6, v13

    aput-object v3, v6, v9

    aput-object v4, v6, v8

    aput-object v15, v6, v7

    const/4 v3, 0x7

    aput-object v15, v6, v3

    const/16 v3, 0x8

    aput-object v5, v6, v3

    const/16 v3, 0x9

    aput-object v19, v6, v3

    const/16 v3, 0xa

    aput-object v15, v6, v3

    const/16 v3, 0xb

    aput-object v15, v6, v3

    sput-object v6, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_INT:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    const-wide/16 v3, -0x8000

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v3

    const-wide/16 v4, 0x7fff

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v5

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v6

    new-array v7, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v7, v14

    aput-object v15, v7, v12

    const/16 v17, 0x2

    aput-object v15, v7, v17

    aput-object v15, v7, v13

    aput-object v3, v7, v9

    aput-object v4, v7, v8

    const/4 v3, 0x6

    aput-object v15, v7, v3

    const/4 v3, 0x7

    aput-object v15, v7, v3

    const/16 v3, 0x8

    aput-object v5, v7, v3

    const/16 v3, 0x9

    aput-object v6, v7, v3

    const/16 v3, 0xa

    aput-object v15, v7, v3

    const/16 v3, 0xb

    aput-object v15, v7, v3

    sput-object v7, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_SHORT:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    const-wide/16 v3, -0x80

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v3

    const-wide/16 v4, 0x7f

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v5

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v6

    new-array v7, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v7, v14

    aput-object v15, v7, v12

    const/16 v17, 0x2

    aput-object v15, v7, v17

    aput-object v15, v7, v13

    aput-object v3, v7, v9

    aput-object v4, v7, v8

    const/4 v3, 0x6

    aput-object v15, v7, v3

    const/4 v3, 0x7

    aput-object v15, v7, v3

    const/16 v3, 0x8

    aput-object v5, v7, v3

    const/16 v3, 0x9

    aput-object v6, v7, v3

    const/16 v3, 0xa

    aput-object v15, v7, v3

    const/16 v3, 0xb

    aput-object v15, v7, v3

    sput-object v7, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_BYTE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v3

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v5

    new-array v6, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v6, v14

    aput-object v15, v6, v12

    const/4 v7, 0x2

    aput-object v15, v6, v7

    aput-object v15, v6, v13

    aput-object v3, v6, v9

    aput-object v15, v6, v8

    const/4 v3, 0x6

    aput-object v15, v6, v3

    const/4 v3, 0x7

    aput-object v15, v6, v3

    const/16 v3, 0x8

    aput-object v4, v6, v3

    const/16 v3, 0x9

    aput-object v5, v6, v3

    const/16 v3, 0xa

    aput-object v15, v6, v3

    const/16 v3, 0xb

    aput-object v15, v6, v3

    sput-object v6, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_NONNEGATIVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v5

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v6

    new-array v7, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v7, v14

    aput-object v15, v7, v12

    const/16 v17, 0x2

    aput-object v15, v7, v17

    aput-object v15, v7, v13

    aput-object v4, v7, v9

    aput-object v15, v7, v8

    const/4 v4, 0x6

    aput-object v15, v7, v4

    const/4 v4, 0x7

    aput-object v15, v7, v4

    const/16 v4, 0x8

    aput-object v5, v7, v4

    const/16 v4, 0x9

    aput-object v6, v7, v4

    const/16 v4, 0xa

    aput-object v15, v7, v4

    const/16 v4, 0xb

    aput-object v15, v7, v4

    sput-object v7, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_POSITIVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v5

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v6

    new-array v7, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v7, v14

    aput-object v15, v7, v12

    const/16 v17, 0x2

    aput-object v15, v7, v17

    aput-object v15, v7, v13

    aput-object v15, v7, v9

    aput-object v4, v7, v8

    const/4 v4, 0x6

    aput-object v15, v7, v4

    const/4 v4, 0x7

    aput-object v15, v7, v4

    const/16 v4, 0x8

    aput-object v5, v7, v4

    const/16 v4, 0x9

    aput-object v6, v7, v4

    const/16 v4, 0xa

    aput-object v15, v7, v4

    const/16 v4, 0xb

    aput-object v15, v7, v4

    sput-object v7, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_NONPOSITIVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v5

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v6

    new-array v7, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v7, v14

    aput-object v15, v7, v12

    const/16 v17, 0x2

    aput-object v15, v7, v17

    aput-object v15, v7, v13

    aput-object v15, v7, v9

    aput-object v4, v7, v8

    const/4 v4, 0x6

    aput-object v15, v7, v4

    const/4 v4, 0x7

    aput-object v15, v7, v4

    const/16 v4, 0x8

    aput-object v5, v7, v4

    const/16 v4, 0x9

    aput-object v6, v7, v4

    const/16 v4, 0xa

    aput-object v15, v7, v4

    const/16 v4, 0xb

    aput-object v15, v7, v4

    sput-object v7, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_NEGATIVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "18446744073709551615"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v5

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v6

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v7

    new-array v8, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v8, v14

    aput-object v15, v8, v12

    const/16 v17, 0x2

    aput-object v15, v8, v17

    aput-object v15, v8, v13

    aput-object v4, v8, v9

    const/4 v4, 0x5

    aput-object v5, v8, v4

    const/4 v4, 0x6

    aput-object v15, v8, v4

    const/4 v4, 0x7

    aput-object v15, v8, v4

    const/16 v4, 0x8

    aput-object v6, v8, v4

    const/16 v4, 0x9

    aput-object v7, v8, v4

    const/16 v4, 0xa

    aput-object v15, v8, v4

    const/16 v4, 0xb

    aput-object v15, v8, v4

    sput-object v8, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_UNSIGNED_LONG:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    const-wide v5, 0xffffffffL

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v5

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v6

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v7

    new-array v8, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v8, v14

    aput-object v15, v8, v12

    const/16 v17, 0x2

    aput-object v15, v8, v17

    aput-object v15, v8, v13

    aput-object v4, v8, v9

    const/4 v4, 0x5

    aput-object v5, v8, v4

    const/4 v4, 0x6

    aput-object v15, v8, v4

    const/4 v4, 0x7

    aput-object v15, v8, v4

    const/16 v4, 0x8

    aput-object v6, v8, v4

    const/16 v4, 0x9

    aput-object v7, v8, v4

    const/16 v4, 0xa

    aput-object v15, v8, v4

    const/16 v4, 0xb

    aput-object v15, v8, v4

    sput-object v8, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_UNSIGNED_INT:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    const-wide/32 v5, 0xffff

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v5

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v6

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v7

    new-array v8, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v8, v14

    aput-object v15, v8, v12

    const/16 v17, 0x2

    aput-object v15, v8, v17

    aput-object v15, v8, v13

    aput-object v4, v8, v9

    const/4 v4, 0x5

    aput-object v5, v8, v4

    const/4 v4, 0x6

    aput-object v15, v8, v4

    const/4 v4, 0x7

    aput-object v15, v8, v4

    const/16 v4, 0x8

    aput-object v6, v8, v4

    const/16 v4, 0x9

    aput-object v7, v8, v4

    const/16 v4, 0xa

    aput-object v15, v8, v4

    const/16 v4, 0xb

    aput-object v15, v8, v4

    sput-object v8, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_UNSIGNED_SHORT:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v4

    const-wide/16 v5, 0xff

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v5

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v2

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v6

    new-array v7, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v7, v14

    aput-object v15, v7, v12

    const/4 v8, 0x2

    aput-object v15, v7, v8

    aput-object v15, v7, v13

    aput-object v4, v7, v9

    const/4 v4, 0x5

    aput-object v5, v7, v4

    const/4 v4, 0x6

    aput-object v15, v7, v4

    const/4 v4, 0x7

    aput-object v15, v7, v4

    const/16 v4, 0x8

    aput-object v2, v7, v4

    const/16 v2, 0x9

    aput-object v6, v7, v2

    const/16 v2, 0xa

    aput-object v15, v7, v2

    const/16 v2, 0xb

    aput-object v15, v7, v2

    sput-object v7, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_UNSIGNED_BYTE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v2

    invoke-static {v13}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    move-result-object v3

    new-array v4, v11, [Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    aput-object v15, v4, v14

    aput-object v2, v4, v12

    const/4 v2, 0x2

    aput-object v15, v4, v2

    aput-object v15, v4, v13

    aput-object v15, v4, v9

    const/4 v2, 0x5

    aput-object v15, v4, v2

    const/4 v2, 0x6

    aput-object v15, v4, v2

    const/4 v2, 0x7

    aput-object v15, v4, v2

    const/16 v2, 0x8

    aput-object v15, v4, v2

    const/16 v2, 0x9

    aput-object v3, v4, v2

    const/16 v2, 0xa

    aput-object v15, v4, v2

    const/16 v2, 0xb

    aput-object v15, v4, v2

    sput-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_BUILTIN_LIST:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    new-array v2, v11, [Z

    fill-array-data v2, :array_1

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_WS:[Z

    new-array v3, v11, [Z

    fill-array-data v3, :array_2

    sput-object v3, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_INTEGER:[Z

    sput-object v10, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_UNION:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_UNION:[Z

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_LIST:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sput-object v2, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_LIST:[Z

    const/16 v0, 0x2e

    :goto_0
    if-gt v14, v0, :cond_1

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-virtual {v1, v14}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->fillInType(I)V

    add-int/2addr v14, v12

    goto :goto_0

    :cond_1
    const/16 v0, 0x36

    const/16 v10, 0x34

    :goto_1
    if-gt v10, v0, :cond_2

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    invoke-virtual {v1, v10}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->fillInType(I)V

    add-int/2addr v10, v12

    goto :goto_1

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_typeMap:Ljava/util/Map;

    const/16 v0, 0x32

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_typeArray:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_handlesToObjects:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_objectsToHandles:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_typesByClassname:Ljava/util/Map;

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setTypeSystem(Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    const-string v0, "anyType"

    const-string v1, "org.apache.xmlbeans.XmlObject"

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "anySimpleType"

    const-string v1, "org.apache.xmlbeans.XmlAnySimpleType"

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x34

    const-string v1, "anyAtomicType"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "boolean"

    const-string v1, "org.apache.xmlbeans.XmlBoolean"

    const/4 v3, 0x3

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "base64Binary"

    const-string v1, "org.apache.xmlbeans.XmlBase64Binary"

    const/4 v3, 0x4

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "hexBinary"

    const-string v1, "org.apache.xmlbeans.XmlHexBinary"

    const/4 v3, 0x5

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "anyURI"

    const-string v1, "org.apache.xmlbeans.XmlAnyURI"

    const/4 v3, 0x6

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "QName"

    const-string v1, "org.apache.xmlbeans.XmlQName"

    const/4 v3, 0x7

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "NOTATION"

    const-string v1, "org.apache.xmlbeans.XmlNOTATION"

    const/16 v3, 0x8

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "float"

    const-string v1, "org.apache.xmlbeans.XmlFloat"

    const/16 v3, 0x9

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "double"

    const-string v1, "org.apache.xmlbeans.XmlDouble"

    const/16 v3, 0xa

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "decimal"

    const-string v1, "org.apache.xmlbeans.XmlDecimal"

    const/16 v3, 0xb

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "string"

    const-string v1, "org.apache.xmlbeans.XmlString"

    const/16 v3, 0xc

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "duration"

    const-string v1, "org.apache.xmlbeans.XmlDuration"

    const/16 v3, 0xd

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "dateTime"

    const-string v1, "org.apache.xmlbeans.XmlDateTime"

    const/16 v3, 0xe

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "time"

    const-string v1, "org.apache.xmlbeans.XmlTime"

    const/16 v3, 0xf

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "date"

    const-string v1, "org.apache.xmlbeans.XmlDate"

    const/16 v3, 0x10

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "gYearMonth"

    const-string v1, "org.apache.xmlbeans.XmlGYearMonth"

    const/16 v3, 0x11

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "gYear"

    const-string v1, "org.apache.xmlbeans.XmlGYear"

    const/16 v3, 0x12

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "gMonthDay"

    const-string v1, "org.apache.xmlbeans.XmlGMonthDay"

    const/16 v3, 0x13

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "gDay"

    const-string v1, "org.apache.xmlbeans.XmlGDay"

    const/16 v3, 0x14

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "gMonth"

    const-string v1, "org.apache.xmlbeans.XmlGMonth"

    const/16 v3, 0x15

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "integer"

    const-string v1, "org.apache.xmlbeans.XmlInteger"

    const/16 v3, 0x16

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "long"

    const-string v1, "org.apache.xmlbeans.XmlLong"

    const/16 v3, 0x17

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "int"

    const-string v1, "org.apache.xmlbeans.XmlInt"

    const/16 v3, 0x18

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "short"

    const-string v1, "org.apache.xmlbeans.XmlShort"

    const/16 v3, 0x19

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "byte"

    const-string v1, "org.apache.xmlbeans.XmlByte"

    const/16 v3, 0x1a

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "nonPositiveInteger"

    const-string v1, "org.apache.xmlbeans.XmlNonPositiveInteger"

    const/16 v3, 0x1b

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "negativeInteger"

    const-string v1, "org.apache.xmlbeans.XmlNegativeInteger"

    const/16 v3, 0x1c

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "nonNegativeInteger"

    const-string v1, "org.apache.xmlbeans.XmlNonNegativeInteger"

    const/16 v3, 0x1d

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "positiveInteger"

    const-string v1, "org.apache.xmlbeans.XmlPositiveInteger"

    const/16 v3, 0x1e

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "unsignedLong"

    const-string v1, "org.apache.xmlbeans.XmlUnsignedLong"

    const/16 v3, 0x1f

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "unsignedInt"

    const-string v1, "org.apache.xmlbeans.XmlUnsignedInt"

    const/16 v3, 0x20

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "unsignedShort"

    const-string v1, "org.apache.xmlbeans.XmlUnsignedShort"

    const/16 v3, 0x21

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "unsignedByte"

    const-string v1, "org.apache.xmlbeans.XmlUnsignedByte"

    const/16 v3, 0x22

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "normalizedString"

    const-string v1, "org.apache.xmlbeans.XmlNormalizedString"

    const/16 v3, 0x23

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "token"

    const-string v1, "org.apache.xmlbeans.XmlToken"

    const/16 v3, 0x24

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "Name"

    const-string v1, "org.apache.xmlbeans.XmlName"

    const/16 v3, 0x25

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "NCName"

    const-string v1, "org.apache.xmlbeans.XmlNCName"

    const/16 v3, 0x26

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "language"

    const-string v1, "org.apache.xmlbeans.XmlLanguage"

    const/16 v3, 0x27

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ID"

    const-string v1, "org.apache.xmlbeans.XmlID"

    const/16 v3, 0x28

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "IDREF"

    const-string v1, "org.apache.xmlbeans.XmlIDREF"

    const/16 v3, 0x29

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "IDREFS"

    const-string v1, "org.apache.xmlbeans.XmlIDREFS"

    const/16 v3, 0x2a

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ENTITY"

    const-string v1, "org.apache.xmlbeans.XmlENTITY"

    const/16 v3, 0x2b

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ENTITIES"

    const-string v1, "org.apache.xmlbeans.XmlENTITIES"

    const/16 v3, 0x2c

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "NMTOKEN"

    const-string v1, "org.apache.xmlbeans.XmlNMTOKEN"

    const/16 v3, 0x2d

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "NMTOKENS"

    const-string v1, "org.apache.xmlbeans.XmlNMTOKENS"

    const/16 v3, 0x2e

    invoke-direct {p0, v3, v0, v1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x35

    const-string v1, "dayTimeDuration"

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x36

    const-string v1, "yearMonthDuration"

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->setupType(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setImmutable()V

    return-void
.end method

.method private arrayIndexForBtc(I)I
    .locals 1

    const/16 v0, 0x2e

    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x5

    :cond_0
    return p1
.end method

.method private static buildInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlIntegerImpl;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/values/XmlIntegerImpl;-><init>()V

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setBigIntegerValue(Ljava/math/BigInteger;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setImmutable()V

    new-instance p0, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;-><init>(Lorg/apache/xmlbeans/XmlAnySimpleType;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static buildNnInteger(Ljava/math/BigInteger;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlIntegerImpl;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/values/XmlIntegerImpl;-><init>()V

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setBigIntegerValue(Ljava/math/BigInteger;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setImmutable()V

    new-instance p0, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;-><init>(Lorg/apache/xmlbeans/XmlAnySimpleType;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static buildString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/xmlbeans/impl/values/XmlStringImpl;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/values/XmlStringImpl;-><init>()V

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setStringValue(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setImmutable()V

    new-instance p0, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;-><init>(Lorg/apache/xmlbeans/XmlAnySimpleType;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static build_wsstring(I)Lorg/apache/xmlbeans/impl/schema/XmlValueRef;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->XMLSTR_COLLAPSE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->XMLSTR_REPLACE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->XMLSTR_PRESERVE:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    return-object p0
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

.method public static get()Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;

    return-object v0
.end method

.method private getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_typeArray:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->arrayIndexForBtc(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public static getNoType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NO_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object v0
.end method

.method private setupType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Z)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addGlobalType(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-static {p2, v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    :goto_0
    if-nez p2, :cond_1

    const-string p2, "NO_TYPE"

    :cond_1
    const-string v2, "_BI_"

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBuiltinTypeCode(I)V

    if-eqz p3, :cond_2

    invoke-virtual {v0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFullJavaName(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_typeArray:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->arrayIndexForBtc(I)I

    move-result p1

    aput-object v0, v2, p1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_typeMap:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_handlesToObjects:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_objectsToHandles:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_3

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_typesByClassname:Ljava/util/Map;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method public annotations()[Lorg/apache/xmlbeans/SchemaAnnotation;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMAANNOTATION_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

    return-object v0
.end method

.method public attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMAATTRIBUTEGROUP_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    return-object v0
.end method

.method public attributeTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMATYPE_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public documentTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMATYPE_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public fillInType(I)V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->getBuiltinType(I)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object v8

    const/4 v2, 0x3

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    sget-boolean v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->$assertionsDisabled:Z

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_DURATION:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    :goto_0
    move-object v5, v3

    const/4 v6, 0x1

    goto/16 :goto_4

    :pswitch_1
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_ANY_SIMPLE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    const/16 v5, 0x2a

    if-ne p1, v5, :cond_1

    sget-object v5, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_IDREF:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    :goto_1
    const/4 v6, 0x3

    goto :goto_4

    :cond_1
    const/16 v5, 0x2c

    if-ne p1, v5, :cond_2

    sget-object v5, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_ENTITY:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_1

    :cond_2
    sget-object v5, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NMTOKEN:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_1

    :pswitch_2
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NCNAME:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_3
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_TOKEN:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_4
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NAME:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_5
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NORMALIZED_STRING:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_6
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_STRING:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_7
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_UNSIGNED_SHORT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_8
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_UNSIGNED_INT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_9
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_UNSIGNED_LONG:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_a
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NON_NEGATIVE_INTEGER:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_b
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_INTEGER:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_c
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_NON_POSITIVE_INTEGER:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_d
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_SHORT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_e
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_INT:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_f
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_LONG:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_10
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_DECIMAL:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_11
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_ANY_ATOMIC:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :goto_2
    :pswitch_12
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_ANY_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :pswitch_13
    move-object v4, v3

    move-object v5, v4

    :goto_3
    const/4 v6, 0x0

    goto :goto_4

    :pswitch_14
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->ST_ANY_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-object v5, v3

    goto :goto_3

    :goto_4
    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDerivationType(I)V

    invoke-virtual {v8, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleTypeVariety(I)V

    if-eqz v6, :cond_3

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleType(Z)V

    goto :goto_5

    :cond_3
    sget-boolean v7, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->$assertionsDisabled:Z

    if-nez v7, :cond_5

    if-eq p1, v0, :cond_5

    if-nez p1, :cond_4

    goto :goto_5

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_5
    if-nez v4, :cond_6

    move-object v7, v3

    goto :goto_6

    :cond_6
    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v7

    :goto_6
    invoke-virtual {v8, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    if-nez v4, :cond_7

    const/4 v7, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseDepth()I

    move-result v7

    add-int/2addr v7, v0

    :goto_7
    invoke-virtual {v8, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseDepth(I)V

    if-nez v5, :cond_8

    move-object v5, v3

    goto :goto_8

    :cond_8
    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v5

    :goto_8
    invoke-virtual {v8, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setListItemTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    const/4 v5, 0x2

    if-lt p1, v5, :cond_9

    const/16 v7, 0x15

    if-le p1, v7, :cond_a

    :cond_9
    const/16 v7, 0x34

    if-ne p1, v7, :cond_b

    :cond_a
    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v4

    :goto_9
    invoke-virtual {v8, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPrimitiveTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_a

    :cond_b
    if-ne v6, v0, :cond_e

    if-eqz v4, :cond_d

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v4

    goto :goto_9

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base.gpt was null for "

    .line 1
    invoke-static {p1, v1}, Lorg/apache/ftpserver/main/a;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base was null for "

    .line 3
    invoke-static {p1, v1}, Lorg/apache/ftpserver/main/a;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_a
    const/16 v4, 0x40

    const/16 v6, 0x20

    const/16 v7, 0x10

    const v9, 0xf4240

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->$assertionsDisabled:Z

    if-eqz v2, :cond_f

    goto/16 :goto_11

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_15
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_WS_COLLAPSE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sget-object v6, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_WS:[Z

    :goto_b
    const/4 v9, 0x0

    goto/16 :goto_12

    :pswitch_16
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_BUILTIN_LIST:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    :goto_c
    sget-object v6, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_NONE:[Z

    const/4 v2, 0x0

    goto :goto_b

    :pswitch_17
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_WS_COLLAPSE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sget-object v6, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_NONE:[Z

    goto :goto_b

    :pswitch_18
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_WS_REPLACE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sget-object v6, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_NONE:[Z

    const/4 v2, 0x2

    goto :goto_b

    :pswitch_19
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_UNSIGNED_BYTE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    :goto_d
    sget-object v6, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_INTEGER:[Z

    const/16 v9, 0x10

    goto :goto_12

    :pswitch_1a
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_UNSIGNED_SHORT:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    :goto_e
    sget-object v7, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_INTEGER:[Z

    move-object v6, v7

    const/16 v9, 0x20

    goto :goto_12

    :pswitch_1b
    sget-object v6, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_UNSIGNED_INT:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    :goto_f
    sget-object v7, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_INTEGER:[Z

    move-object v4, v6

    move-object v6, v7

    const/16 v9, 0x40

    goto :goto_12

    :pswitch_1c
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_UNSIGNED_LONG:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    :goto_10
    sget-object v6, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_INTEGER:[Z

    goto :goto_12

    :pswitch_1d
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_POSITIVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    goto :goto_10

    :pswitch_1e
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_NONNEGATIVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    goto :goto_10

    :pswitch_1f
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_NEGATIVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    goto :goto_10

    :pswitch_20
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_NONPOSITIVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    goto :goto_10

    :pswitch_21
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_BYTE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sget-object v6, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_INTEGER:[Z

    const/16 v7, 0x8

    const/16 v9, 0x8

    goto :goto_12

    :pswitch_22
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_SHORT:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    goto :goto_d

    :pswitch_23
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_INT:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    goto :goto_e

    :pswitch_24
    sget-object v6, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_LONG:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    goto :goto_f

    :pswitch_25
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_INTEGER:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    goto :goto_10

    :pswitch_26
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_WS_PRESERVE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sget-object v6, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_NONE:[Z

    const/4 v2, 0x1

    goto :goto_b

    :pswitch_27
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_WS_COLLAPSE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    sget-object v6, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FIXED_FACETS_WS:[Z

    const v7, 0xf4241

    const v9, 0xf4241

    goto :goto_12

    :goto_11
    :pswitch_28
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->FACETS_NONE:[Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    goto :goto_c

    :goto_12
    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    sget-boolean v7, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->$assertionsDisabled:Z

    if-eqz v7, :cond_10

    goto :goto_16

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_29
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x1

    :goto_13
    const/4 v12, 0x1

    goto :goto_17

    :pswitch_2a
    const/4 v7, 0x1

    :goto_14
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_15
    const/4 v12, 0x0

    goto :goto_17

    :pswitch_2b
    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_15

    :pswitch_2c
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_13

    :goto_16
    :pswitch_2d
    const/4 v7, 0x0

    goto :goto_14

    :goto_17
    invoke-virtual {v8, v4, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBasicFacets([Lorg/apache/xmlbeans/impl/schema/XmlValueRef;[Z)V

    invoke-virtual {v8, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setWhiteSpaceRule(I)V

    invoke-virtual {v8, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setOrdered(I)V

    invoke-virtual {v8, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBounded(Z)V

    invoke-virtual {v8, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setNumeric(Z)V

    invoke-virtual {v8, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setFinite(Z)V

    invoke-virtual {v8, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDecimalSize(I)V

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMATYPEREF_ARRAY:[Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v8, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnonymousTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    const/16 v2, 0x2b

    if-eq p1, v2, :cond_14

    const/16 v2, 0x2d

    if-eq p1, v2, :cond_13

    const/16 v2, 0x35

    if-eq p1, v2, :cond_12

    const/16 v2, 0x36

    if-eq p1, v2, :cond_11

    packed-switch p1, :pswitch_data_6

    move-object v2, v3

    const/4 v4, 0x0

    goto :goto_19

    :pswitch_2e
    const-string v2, "[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*"

    :goto_18
    const/4 v4, 0x1

    goto :goto_19

    :pswitch_2f
    const-string v2, "[\\i-[:]][\\c-[:]]*"

    goto :goto_18

    :pswitch_30
    const-string v2, "\\i\\c*"

    goto :goto_18

    :cond_11
    const-string v2, "[^DT]*"

    goto :goto_18

    :cond_12
    const-string v2, "[^YM]*[DT].*"

    goto :goto_18

    :cond_13
    const-string v2, "\\c+"

    goto :goto_18

    :cond_14
    :pswitch_31
    move-object v2, v3

    goto :goto_18

    :goto_19
    if-eqz v2, :cond_16

    :try_start_0
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/regex/SchemaRegularExpression;->forPattern(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/regex/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1a

    :catch_0
    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->$assertionsDisabled:Z

    if-eqz v2, :cond_15

    move-object v2, v3

    :goto_1a
    new-array v6, v0, [Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    aput-object v2, v6, v1

    invoke-virtual {v8, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPatterns([Lorg/apache/xmlbeans/impl/regex/RegularExpression;)V

    goto :goto_1b

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_16
    :goto_1b
    invoke-virtual {v8, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setPatternFacet(Z)V

    if-ne p1, v0, :cond_17

    new-instance p1, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleType(I)V

    sget-object v9, Lorg/apache/xmlbeans/QNameSet;->ALL:Lorg/apache/xmlbeans/QNameSet;

    invoke-virtual {p1, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setWildcardSet(Lorg/apache/xmlbeans/QNameSet;)V

    invoke-virtual {p1, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setWildcardProcess(I)V

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setMinOccurs(Ljava/math/BigInteger;)V

    invoke-virtual {p1, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setMaxOccurs(Ljava/math/BigInteger;)V

    invoke-virtual {p1, v9, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setTransitionRules(Lorg/apache/xmlbeans/QNameSet;Z)V

    invoke-virtual {p1, v9, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setTransitionNotes(Lorg/apache/xmlbeans/QNameSet;Z)V

    new-instance v4, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;

    invoke-direct {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;-><init>()V

    invoke-virtual {v4, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->setWildcardProcess(I)V

    invoke-virtual {v4, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->setWildcardSet(Lorg/apache/xmlbeans/QNameSet;)V

    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setComplexTypeVariety(I)V

    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    move-object v5, v6

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContentModel(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaAttributeModel;Ljava/util/Map;Ljava/util/Map;Z)V

    sget-object p1, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMATYPEREF_ARRAY:[Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v8, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnonymousTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    invoke-virtual {v8, v9, v0, v9, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setWildcardSummary(Lorg/apache/xmlbeans/QNameSet;ZLorg/apache/xmlbeans/QNameSet;Z)V

    goto :goto_1c

    :cond_17
    if-nez p1, :cond_18

    new-instance v4, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;

    invoke-direct {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;-><init>()V

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setComplexTypeVariety(I)V

    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, v8

    move-object v5, v6

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContentModel(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaAttributeModel;Ljava/util/Map;Ljava/util/Map;Z)V

    sget-object p1, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMATYPEREF_ARRAY:[Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v8, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setAnonymousTypeRefs([Lorg/apache/xmlbeans/SchemaType$Ref;)V

    sget-object p1, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    invoke-virtual {v8, p1, v1, p1, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setWildcardSummary(Lorg/apache/xmlbeans/QNameSet;ZLorg/apache/xmlbeans/QNameSet;Z)V

    :cond_18
    :goto_1c
    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setOrderSensitive(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_11
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_27
        :pswitch_26
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
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
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x34
        :pswitch_28
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2d
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2b
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x34
        :pswitch_2d
        :pswitch_2a
        :pswitch_2a
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x25
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public findAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findAttributeGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findAttributeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findAttributeType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findAttributeTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDocumentType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDocumentTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findElementRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findIdentityConstraintRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findModelGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup$Ref;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_typeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType;

    return-object p1
.end method

.method public findTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->findType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->class$org$apache$xmlbeans$impl$schema$BuiltinSchemaTypeSystem:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.schema.BuiltinSchemaTypeSystem"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->class$org$apache$xmlbeans$impl$schema$BuiltinSchemaTypeSystem:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "xquery.typesystem.builtin"

    return-object v0
.end method

.method public getSourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMAATTRIBUTE_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    return-object v0
.end method

.method public globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMAELEMENT_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

    return-object v0
.end method

.method public globalTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_typeArray:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v3, v1, [Lorg/apache/xmlbeans/SchemaType;

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_objectsToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public isNamespaceDefined(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->EMPTY_SCHEMAMODELGROUP_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

    return-object v0
.end method

.method public resolve()V
    .locals 0

    return-void
.end method

.method public resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_handlesToObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaComponent;

    return-object p1
.end method

.method public save(Lorg/apache/xmlbeans/Filer;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The builtin schema type system cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveToDirectory(Ljava/io/File;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The builtin schema type system cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public typeForClassname(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_typesByClassname:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType;

    return-object p1
.end method

.method public typeForHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/XQuerySchemaTypeSystem;->_handlesToObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType;

    return-object p1
.end method

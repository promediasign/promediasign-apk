.class public final enum Lcom/fasterxml/aalto/sax/SAXFeature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/aalto/sax/SAXFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum EXTERNAL_GENERAL_ENTITIES:Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum EXTERNAL_PARAMETER_ENTITIES:Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum IS_STANDALONE:Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum LEXICAL_HANDLER_PARAMETER_ENTITIES:Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum NAMESPACES:Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum NAMESPACE_PREFIXES:Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum RESOLVE_DTD_URIS:Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum STRING_INTERNING:Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum UNICODE_NORMALIZATION_CHECKING:Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum USE_ATTRIBUTES2:Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum USE_ENTITY_RESOLVER2:Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum USE_LOCATOR2:Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum VALIDATION:Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum XMLNS_URIS:Lcom/fasterxml/aalto/sax/SAXFeature;

.field public static final enum XML_1_1:Lcom/fasterxml/aalto/sax/SAXFeature;


# instance fields
.field private final mSuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/4 v1, 0x0

    const-string v2, "external-general-entities"

    const-string v3, "EXTERNAL_GENERAL_ENTITIES"

    invoke-direct {v0, v3, v1, v2}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/aalto/sax/SAXFeature;->EXTERNAL_GENERAL_ENTITIES:Lcom/fasterxml/aalto/sax/SAXFeature;

    new-instance v2, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/4 v3, 0x1

    const-string v4, "external-parameter-entities"

    const-string v5, "EXTERNAL_PARAMETER_ENTITIES"

    invoke-direct {v2, v5, v3, v4}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/fasterxml/aalto/sax/SAXFeature;->EXTERNAL_PARAMETER_ENTITIES:Lcom/fasterxml/aalto/sax/SAXFeature;

    new-instance v4, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/4 v5, 0x2

    const-string v6, "is-standalone"

    const-string v7, "IS_STANDALONE"

    invoke-direct {v4, v7, v5, v6}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/fasterxml/aalto/sax/SAXFeature;->IS_STANDALONE:Lcom/fasterxml/aalto/sax/SAXFeature;

    new-instance v6, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/4 v7, 0x3

    const-string v8, "lexical-handler/parameter-entities"

    const-string v9, "LEXICAL_HANDLER_PARAMETER_ENTITIES"

    invoke-direct {v6, v9, v7, v8}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/fasterxml/aalto/sax/SAXFeature;->LEXICAL_HANDLER_PARAMETER_ENTITIES:Lcom/fasterxml/aalto/sax/SAXFeature;

    new-instance v8, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/4 v9, 0x4

    const-string v10, "namespaces"

    const-string v11, "NAMESPACES"

    invoke-direct {v8, v11, v9, v10}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/fasterxml/aalto/sax/SAXFeature;->NAMESPACES:Lcom/fasterxml/aalto/sax/SAXFeature;

    new-instance v10, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/4 v11, 0x5

    const-string v12, "namespace-prefixes"

    const-string v13, "NAMESPACE_PREFIXES"

    invoke-direct {v10, v13, v11, v12}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/fasterxml/aalto/sax/SAXFeature;->NAMESPACE_PREFIXES:Lcom/fasterxml/aalto/sax/SAXFeature;

    new-instance v12, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/4 v13, 0x6

    const-string v14, "resolve-dtd-uris"

    const-string v15, "RESOLVE_DTD_URIS"

    invoke-direct {v12, v15, v13, v14}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/fasterxml/aalto/sax/SAXFeature;->RESOLVE_DTD_URIS:Lcom/fasterxml/aalto/sax/SAXFeature;

    new-instance v14, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/4 v15, 0x7

    const-string v13, "string-interning"

    const-string v11, "STRING_INTERNING"

    invoke-direct {v14, v11, v15, v13}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/fasterxml/aalto/sax/SAXFeature;->STRING_INTERNING:Lcom/fasterxml/aalto/sax/SAXFeature;

    new-instance v11, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/16 v13, 0x8

    const-string v15, "unicode-normalization-checking"

    const-string v9, "UNICODE_NORMALIZATION_CHECKING"

    invoke-direct {v11, v9, v13, v15}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/fasterxml/aalto/sax/SAXFeature;->UNICODE_NORMALIZATION_CHECKING:Lcom/fasterxml/aalto/sax/SAXFeature;

    new-instance v9, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/16 v15, 0x9

    const-string v13, "use-attributes2"

    const-string v7, "USE_ATTRIBUTES2"

    invoke-direct {v9, v7, v15, v13}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/fasterxml/aalto/sax/SAXFeature;->USE_ATTRIBUTES2:Lcom/fasterxml/aalto/sax/SAXFeature;

    new-instance v7, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/16 v13, 0xa

    const-string v15, "use-locator2"

    const-string v5, "USE_LOCATOR2"

    invoke-direct {v7, v5, v13, v15}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/fasterxml/aalto/sax/SAXFeature;->USE_LOCATOR2:Lcom/fasterxml/aalto/sax/SAXFeature;

    new-instance v5, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/16 v15, 0xb

    const-string v13, "use-entity-resolver2"

    const-string v3, "USE_ENTITY_RESOLVER2"

    invoke-direct {v5, v3, v15, v13}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/fasterxml/aalto/sax/SAXFeature;->USE_ENTITY_RESOLVER2:Lcom/fasterxml/aalto/sax/SAXFeature;

    new-instance v3, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/16 v13, 0xc

    const-string v15, "validation"

    const-string v1, "VALIDATION"

    invoke-direct {v3, v1, v13, v15}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/fasterxml/aalto/sax/SAXFeature;->VALIDATION:Lcom/fasterxml/aalto/sax/SAXFeature;

    new-instance v1, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/16 v15, 0xd

    const-string v13, "xmlns-uris"

    move-object/from16 v16, v3

    const-string v3, "XMLNS_URIS"

    invoke-direct {v1, v3, v15, v13}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fasterxml/aalto/sax/SAXFeature;->XMLNS_URIS:Lcom/fasterxml/aalto/sax/SAXFeature;

    new-instance v3, Lcom/fasterxml/aalto/sax/SAXFeature;

    const/16 v13, 0xe

    const-string v15, "xml-1.1"

    move-object/from16 v17, v1

    const-string v1, "XML_1_1"

    invoke-direct {v3, v1, v13, v15}, Lcom/fasterxml/aalto/sax/SAXFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/fasterxml/aalto/sax/SAXFeature;->XML_1_1:Lcom/fasterxml/aalto/sax/SAXFeature;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/fasterxml/aalto/sax/SAXFeature;

    const/4 v15, 0x0

    aput-object v0, v1, v15

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v4, v1, v0

    const/4 v0, 0x3

    aput-object v6, v1, v0

    const/4 v0, 0x4

    aput-object v8, v1, v0

    const/4 v0, 0x5

    aput-object v10, v1, v0

    const/4 v0, 0x6

    aput-object v12, v1, v0

    const/4 v0, 0x7

    aput-object v14, v1, v0

    const/16 v0, 0x8

    aput-object v11, v1, v0

    const/16 v0, 0x9

    aput-object v9, v1, v0

    const/16 v0, 0xa

    aput-object v7, v1, v0

    const/16 v0, 0xb

    aput-object v5, v1, v0

    const/16 v0, 0xc

    aput-object v16, v1, v0

    const/16 v0, 0xd

    aput-object v17, v1, v0

    aput-object v3, v1, v13

    sput-object v1, Lcom/fasterxml/aalto/sax/SAXFeature;->$VALUES:[Lcom/fasterxml/aalto/sax/SAXFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fasterxml/aalto/sax/SAXFeature;->mSuffix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/aalto/sax/SAXFeature;
    .locals 1

    const-class v0, Lcom/fasterxml/aalto/sax/SAXFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/aalto/sax/SAXFeature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/aalto/sax/SAXFeature;
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/sax/SAXFeature;->$VALUES:[Lcom/fasterxml/aalto/sax/SAXFeature;

    invoke-virtual {v0}, [Lcom/fasterxml/aalto/sax/SAXFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/aalto/sax/SAXFeature;

    return-object v0
.end method

.class public final enum Lorg/apache/commons/text/lookup/DefaultStringLookup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/text/lookup/DefaultStringLookup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum BASE64_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum BASE64_ENCODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum CONST:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum DATE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum DNS:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum ENVIRONMENT:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum FILE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum JAVA:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum LOCAL_HOST:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum PROPERTIES:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum RESOURCE_BUNDLE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum SCRIPT:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum SYSTEM_PROPERTIES:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum URL:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum URL_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum URL_ENCODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

.field public static final enum XML:Lorg/apache/commons/text/lookup/DefaultStringLookup;


# instance fields
.field private final key:Ljava/lang/String;

.field private final lookup:Lorg/apache/commons/text/lookup/StringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    sget-object v1, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->base64DecoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v2

    const-string v3, "BASE64_DECODER"

    const/4 v4, 0x0

    const-string v5, "base64Decoder"

    invoke-direct {v0, v3, v4, v5, v2}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->BASE64_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v2, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v3, "base64Encoder"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->base64EncoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v5

    const-string v6, "BASE64_ENCODER"

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7, v3, v5}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v2, Lorg/apache/commons/text/lookup/DefaultStringLookup;->BASE64_ENCODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v3, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v5, "const"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->constantStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v6

    const-string v8, "CONST"

    const/4 v9, 0x2

    invoke-direct {v3, v8, v9, v5, v6}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v3, Lorg/apache/commons/text/lookup/DefaultStringLookup;->CONST:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v5, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v6, "date"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->dateStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v8

    const-string v10, "DATE"

    const/4 v11, 0x3

    invoke-direct {v5, v10, v11, v6, v8}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v5, Lorg/apache/commons/text/lookup/DefaultStringLookup;->DATE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v6, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v8, "dns"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->dnsStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v10

    const-string v12, "DNS"

    const/4 v13, 0x4

    invoke-direct {v6, v12, v13, v8, v10}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v6, Lorg/apache/commons/text/lookup/DefaultStringLookup;->DNS:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v8, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v10, "env"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->environmentVariableStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v12

    const-string v14, "ENVIRONMENT"

    const/4 v15, 0x5

    invoke-direct {v8, v14, v15, v10, v12}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v8, Lorg/apache/commons/text/lookup/DefaultStringLookup;->ENVIRONMENT:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v10, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v12, "file"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->fileStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v14

    const-string v15, "FILE"

    const/4 v13, 0x6

    invoke-direct {v10, v15, v13, v12, v14}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v10, Lorg/apache/commons/text/lookup/DefaultStringLookup;->FILE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v12, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v14, "java"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->javaPlatformStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v15

    const-string v13, "JAVA"

    const/4 v11, 0x7

    invoke-direct {v12, v13, v11, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v12, Lorg/apache/commons/text/lookup/DefaultStringLookup;->JAVA:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v13, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v14, "localhost"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->localHostStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v15

    const-string v11, "LOCAL_HOST"

    const/16 v9, 0x8

    invoke-direct {v13, v11, v9, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v13, Lorg/apache/commons/text/lookup/DefaultStringLookup;->LOCAL_HOST:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v11, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v14, "properties"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->propertiesStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v15

    const-string v9, "PROPERTIES"

    const/16 v7, 0x9

    invoke-direct {v11, v9, v7, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v11, Lorg/apache/commons/text/lookup/DefaultStringLookup;->PROPERTIES:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v9, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v14, "resourceBundle"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->resourceBundleStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v15

    const-string v7, "RESOURCE_BUNDLE"

    const/16 v4, 0xa

    invoke-direct {v9, v7, v4, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v9, Lorg/apache/commons/text/lookup/DefaultStringLookup;->RESOURCE_BUNDLE:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v7, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v14, "script"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->scriptStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v15

    const-string v4, "SCRIPT"

    move-object/from16 v16, v9

    const/16 v9, 0xb

    invoke-direct {v7, v4, v9, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v7, Lorg/apache/commons/text/lookup/DefaultStringLookup;->SCRIPT:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v4, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v14, "sys"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->systemPropertyStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v15

    const-string v9, "SYSTEM_PROPERTIES"

    move-object/from16 v17, v7

    const/16 v7, 0xc

    invoke-direct {v4, v9, v7, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v4, Lorg/apache/commons/text/lookup/DefaultStringLookup;->SYSTEM_PROPERTIES:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v9, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v14, "url"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->urlStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v15

    const-string v7, "URL"

    move-object/from16 v18, v4

    const/16 v4, 0xd

    invoke-direct {v9, v7, v4, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v9, Lorg/apache/commons/text/lookup/DefaultStringLookup;->URL:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v7, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v14, "urlDecoder"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->urlDecoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v15

    const-string v4, "URL_DECODER"

    move-object/from16 v19, v9

    const/16 v9, 0xe

    invoke-direct {v7, v4, v9, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v7, Lorg/apache/commons/text/lookup/DefaultStringLookup;->URL_DECODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v4, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v14, "urlEncoder"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->urlEncoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v15

    const-string v9, "URL_ENCODER"

    move-object/from16 v20, v7

    const/16 v7, 0xf

    invoke-direct {v4, v9, v7, v14, v15}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v4, Lorg/apache/commons/text/lookup/DefaultStringLookup;->URL_ENCODER:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    new-instance v9, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const-string v14, "xml"

    invoke-virtual {v1}, Lorg/apache/commons/text/lookup/StringLookupFactory;->xmlStringLookup()Lorg/apache/commons/text/lookup/StringLookup;

    move-result-object v1

    const-string v15, "XML"

    const/16 v7, 0x10

    invoke-direct {v9, v15, v7, v14, v1}, Lorg/apache/commons/text/lookup/DefaultStringLookup;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V

    sput-object v9, Lorg/apache/commons/text/lookup/DefaultStringLookup;->XML:Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const/16 v1, 0x11

    new-array v1, v1, [Lorg/apache/commons/text/lookup/DefaultStringLookup;

    const/4 v14, 0x0

    aput-object v0, v1, v14

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object v5, v1, v0

    const/4 v0, 0x4

    aput-object v6, v1, v0

    const/4 v0, 0x5

    aput-object v8, v1, v0

    const/4 v0, 0x6

    aput-object v10, v1, v0

    const/4 v0, 0x7

    aput-object v12, v1, v0

    const/16 v0, 0x8

    aput-object v13, v1, v0

    const/16 v0, 0x9

    aput-object v11, v1, v0

    const/16 v0, 0xa

    aput-object v16, v1, v0

    const/16 v0, 0xb

    aput-object v17, v1, v0

    const/16 v0, 0xc

    aput-object v18, v1, v0

    const/16 v0, 0xd

    aput-object v19, v1, v0

    const/16 v0, 0xe

    aput-object v20, v1, v0

    const/16 v0, 0xf

    aput-object v4, v1, v0

    aput-object v9, v1, v7

    sput-object v1, Lorg/apache/commons/text/lookup/DefaultStringLookup;->$VALUES:[Lorg/apache/commons/text/lookup/DefaultStringLookup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/text/lookup/StringLookup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/commons/text/lookup/StringLookup;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->key:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->lookup:Lorg/apache/commons/text/lookup/StringLookup;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/text/lookup/DefaultStringLookup;
    .locals 1

    const-class v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/text/lookup/DefaultStringLookup;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/text/lookup/DefaultStringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/DefaultStringLookup;->$VALUES:[Lorg/apache/commons/text/lookup/DefaultStringLookup;

    invoke-virtual {v0}, [Lorg/apache/commons/text/lookup/DefaultStringLookup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/text/lookup/DefaultStringLookup;

    return-object v0
.end method

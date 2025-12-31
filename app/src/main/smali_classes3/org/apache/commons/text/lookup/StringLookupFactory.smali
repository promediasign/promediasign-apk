.class public final Lorg/apache/commons/text/lookup/StringLookupFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/text/lookup/StringLookupFactory;

    invoke-direct {v0}, Lorg/apache/commons/text/lookup/StringLookupFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/apache/commons/text/lookup/StringLookupFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public base64DecoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/Base64DecoderStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/Base64DecoderStringLookup;

    return-object v0
.end method

.method public base64EncoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/Base64EncoderStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/Base64EncoderStringLookup;

    return-object v0
.end method

.method public constantStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/ConstantStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/ConstantStringLookup;

    return-object v0
.end method

.method public dateStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/DateStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/DateStringLookup;

    return-object v0
.end method

.method public dnsStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/DnsStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/DnsStringLookup;

    return-object v0
.end method

.method public environmentVariableStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/EnvironmentVariableStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/EnvironmentVariableStringLookup;

    return-object v0
.end method

.method public fileStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/FileStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/AbstractStringLookup;

    return-object v0
.end method

.method public javaPlatformStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/JavaPlatformStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/JavaPlatformStringLookup;

    return-object v0
.end method

.method public localHostStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/LocalHostStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/LocalHostStringLookup;

    return-object v0
.end method

.method public propertiesStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/PropertiesStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/PropertiesStringLookup;

    return-object v0
.end method

.method public resourceBundleStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/ResourceBundleStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/ResourceBundleStringLookup;

    return-object v0
.end method

.method public scriptStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/ScriptStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/ScriptStringLookup;

    return-object v0
.end method

.method public systemPropertyStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/SystemPropertyStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/SystemPropertyStringLookup;

    return-object v0
.end method

.method public urlDecoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/UrlDecoderStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/UrlDecoderStringLookup;

    return-object v0
.end method

.method public urlEncoderStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/UrlEncoderStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/UrlEncoderStringLookup;

    return-object v0
.end method

.method public urlStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/UrlStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/UrlStringLookup;

    return-object v0
.end method

.method public xmlStringLookup()Lorg/apache/commons/text/lookup/StringLookup;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/lookup/XmlStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/XmlStringLookup;

    return-object v0
.end method

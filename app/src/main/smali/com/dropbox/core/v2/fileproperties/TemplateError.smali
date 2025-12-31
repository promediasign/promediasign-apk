.class public final Lcom/dropbox/core/v2/fileproperties/TemplateError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;,
        Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/TemplateError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

.field private templateNotFoundValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateError;->withTag(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/TemplateError;

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateError;->withTag(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/dropbox/core/v2/fileproperties/TemplateError;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->templateNotFoundValue:Ljava/lang/String;

    return-object p0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplateError;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "(/|ptid:).*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;->withTagAndTemplateNotFound(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplateError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private withTag(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateError;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    return-object v0
.end method

.method private withTagAndTemplateNotFound(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplateError;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->templateNotFoundValue:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/fileproperties/TemplateError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$TemplateError$Tag:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_4

    const/4 p1, 0x2

    if-eq v2, p1, :cond_3

    const/4 p1, 0x3

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->templateNotFoundValue:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;->templateNotFoundValue:Ljava/lang/String;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->templateNotFoundValue:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->_tag:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

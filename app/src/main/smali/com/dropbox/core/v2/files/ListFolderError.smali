.class public final Lcom/dropbox/core/v2/files/ListFolderError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ListFolderError$Serializer;,
        Lcom/dropbox/core/v2/files/ListFolderError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/ListFolderError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/ListFolderError$Tag;

.field private pathValue:Lcom/dropbox/core/v2/files/LookupError;

.field private templateErrorValue:Lcom/dropbox/core/v2/fileproperties/TemplateError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ListFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/files/ListFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/ListFolderError;->withTag(Lcom/dropbox/core/v2/files/ListFolderError$Tag;)Lcom/dropbox/core/v2/files/ListFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/ListFolderError;->OTHER:Lcom/dropbox/core/v2/files/ListFolderError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/dropbox/core/v2/files/ListFolderError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ListFolderError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/dropbox/core/v2/files/ListFolderError;)Lcom/dropbox/core/v2/fileproperties/TemplateError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ListFolderError;->templateErrorValue:Lcom/dropbox/core/v2/fileproperties/TemplateError;

    return-object p0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/ListFolderError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ListFolderError$Tag;->PATH:Lcom/dropbox/core/v2/files/ListFolderError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/ListFolderError;->withTagAndPath(Lcom/dropbox/core/v2/files/ListFolderError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/ListFolderError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static templateError(Lcom/dropbox/core/v2/fileproperties/TemplateError;)Lcom/dropbox/core/v2/files/ListFolderError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/ListFolderError$Tag;->TEMPLATE_ERROR:Lcom/dropbox/core/v2/files/ListFolderError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/ListFolderError;->withTagAndTemplateError(Lcom/dropbox/core/v2/files/ListFolderError$Tag;Lcom/dropbox/core/v2/fileproperties/TemplateError;)Lcom/dropbox/core/v2/files/ListFolderError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/ListFolderError$Tag;)Lcom/dropbox/core/v2/files/ListFolderError;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListFolderError;-><init>()V

    iput-object p1, v0, Lcom/dropbox/core/v2/files/ListFolderError;->_tag:Lcom/dropbox/core/v2/files/ListFolderError$Tag;

    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/files/ListFolderError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/ListFolderError;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListFolderError;-><init>()V

    iput-object p1, v0, Lcom/dropbox/core/v2/files/ListFolderError;->_tag:Lcom/dropbox/core/v2/files/ListFolderError$Tag;

    iput-object p2, v0, Lcom/dropbox/core/v2/files/ListFolderError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method private withTagAndTemplateError(Lcom/dropbox/core/v2/files/ListFolderError$Tag;Lcom/dropbox/core/v2/fileproperties/TemplateError;)Lcom/dropbox/core/v2/files/ListFolderError;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListFolderError;-><init>()V

    iput-object p1, v0, Lcom/dropbox/core/v2/files/ListFolderError;->_tag:Lcom/dropbox/core/v2/files/ListFolderError$Tag;

    iput-object p2, v0, Lcom/dropbox/core/v2/files/ListFolderError;->templateErrorValue:Lcom/dropbox/core/v2/fileproperties/TemplateError;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/files/ListFolderError;

    if-eqz v2, :cond_a

    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderError;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderError;->_tag:Lcom/dropbox/core/v2/files/ListFolderError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderError;->_tag:Lcom/dropbox/core/v2/files/ListFolderError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/files/ListFolderError$1;->$SwitchMap$com$dropbox$core$v2$files$ListFolderError$Tag:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 p1, 0x3

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderError;->templateErrorValue:Lcom/dropbox/core/v2/fileproperties/TemplateError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ListFolderError;->templateErrorValue:Lcom/dropbox/core/v2/fileproperties/TemplateError;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/TemplateError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/ListFolderError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, p1, :cond_9

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_1
    return v0

    :cond_a
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderError;->_tag:Lcom/dropbox/core/v2/files/ListFolderError$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ListFolderError;->pathValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderError;->templateErrorValue:Lcom/dropbox/core/v2/fileproperties/TemplateError;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/ListFolderError$Tag;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderError;->_tag:Lcom/dropbox/core/v2/files/ListFolderError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

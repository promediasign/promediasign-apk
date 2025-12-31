.class public final Lcom/dropbox/core/v2/auth/AccessError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/auth/AccessError$Serializer;,
        Lcom/dropbox/core/v2/auth/AccessError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/auth/AccessError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

.field private invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

.field private paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->OTHER:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/auth/AccessError;->withTag(Lcom/dropbox/core/v2/auth/AccessError$Tag;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/auth/AccessError;->OTHER:Lcom/dropbox/core/v2/auth/AccessError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/dropbox/core/v2/auth/AccessError;)Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/dropbox/core/v2/auth/AccessError;)Lcom/dropbox/core/v2/auth/PaperAccessError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;

    return-object p0
.end method

.method public static invalidAccountType(Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->INVALID_ACCOUNT_TYPE:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/auth/AccessError;->withTagAndInvalidAccountType(Lcom/dropbox/core/v2/auth/AccessError$Tag;Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static paperAccessDenied(Lcom/dropbox/core/v2/auth/PaperAccessError;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->PAPER_ACCESS_DENIED:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/auth/AccessError;->withTagAndPaperAccessDenied(Lcom/dropbox/core/v2/auth/AccessError$Tag;Lcom/dropbox/core/v2/auth/PaperAccessError;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private withTag(Lcom/dropbox/core/v2/auth/AccessError$Tag;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    iput-object p1, v0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    return-object v0
.end method

.method private withTagAndInvalidAccountType(Lcom/dropbox/core/v2/auth/AccessError$Tag;Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    iput-object p1, v0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    iput-object p2, v0, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    return-object v0
.end method

.method private withTagAndPaperAccessDenied(Lcom/dropbox/core/v2/auth/AccessError$Tag;Lcom/dropbox/core/v2/auth/PaperAccessError;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    iput-object p1, v0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    iput-object p2, v0, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/auth/AccessError;

    if-eqz v2, :cond_a

    check-cast p1, Lcom/dropbox/core/v2/auth/AccessError;

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/auth/AccessError$1;->$SwitchMap$com$dropbox$core$v2$auth$AccessError$Tag:[I

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
    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    iget-object p1, p1, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    if-eq v2, p1, :cond_9

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/auth/AccessError;->invalidAccountTypeValue:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->paperAccessDeniedValue:Lcom/dropbox/core/v2/auth/PaperAccessError;

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

.method public tag()Lcom/dropbox/core/v2/auth/AccessError$Tag;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->_tag:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/AccessError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

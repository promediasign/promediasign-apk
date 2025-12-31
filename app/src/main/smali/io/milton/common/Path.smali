.class public Lio/milton/common/Path;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/common/Path$LengthComparator;
    }
.end annotation


# static fields
.field public static final LENGTH_COMPARATOR:Lio/milton/common/Path$LengthComparator;

.field public static final root:Lio/milton/common/Path;

.field private static final serialVersionUID:J = -0x74bd133de2ac5a2eL


# instance fields
.field private hash:I

.field private final length:I

.field private final name:Ljava/lang/String;

.field private final parent:Lio/milton/common/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/milton/common/Path;

    invoke-direct {v0}, Lio/milton/common/Path;-><init>()V

    sput-object v0, Lio/milton/common/Path;->root:Lio/milton/common/Path;

    new-instance v0, Lio/milton/common/Path$LengthComparator;

    invoke-direct {v0}, Lio/milton/common/Path$LengthComparator;-><init>()V

    sput-object v0, Lio/milton/common/Path;->LENGTH_COMPARATOR:Lio/milton/common/Path$LengthComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/milton/common/Path;->parent:Lio/milton/common/Path;

    iput-object v0, p0, Lio/milton/common/Path;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lio/milton/common/Path;->length:I

    return-void
.end method

.method private constructor <init>(Lio/milton/common/Path;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    iput-object p1, p0, Lio/milton/common/Path;->parent:Lio/milton/common/Path;

    iput-object p2, p0, Lio/milton/common/Path;->name:Ljava/lang/String;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget p1, p1, Lio/milton/common/Path;->length:I

    add-int/2addr p1, p2

    iput p1, p0, Lio/milton/common/Path;->length:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lio/milton/common/Path;->length:I

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parentEquals(Lio/milton/common/Path;Lio/milton/common/Path;)Z
    .locals 0

    iget-object p1, p1, Lio/milton/common/Path;->parent:Lio/milton/common/Path;

    iget-object p0, p0, Lio/milton/common/Path;->parent:Lio/milton/common/Path;

    if-nez p1, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p1, p0}, Lio/milton/common/Path;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static path(Ljava/lang/String;)Lio/milton/common/Path;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lio/milton/common/Path;->split(Lio/milton/common/Path;Ljava/lang/String;)Lio/milton/common/Path;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lio/milton/common/Path;->root:Lio/milton/common/Path;

    return-object p0
.end method

.method private static split(Lio/milton/common/Path;Ljava/lang/String;)Lio/milton/common/Path;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    sget-object p0, Lio/milton/common/Path;->root:Lio/milton/common/Path;

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2}, Lio/milton/common/Path;->child(Ljava/lang/String;)Lio/milton/common/Path;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Lio/milton/common/Path;

    invoke-direct {p0, v0, v2}, Lio/milton/common/Path;-><init>(Lio/milton/common/Path;Ljava/lang/String;)V

    :cond_4
    :goto_1
    move-object v2, v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Lio/milton/common/Path;->child(Ljava/lang/String;)Lio/milton/common/Path;

    move-result-object p0

    goto :goto_3

    :cond_6
    new-instance p0, Lio/milton/common/Path;

    invoke-direct {p0, v0, p1}, Lio/milton/common/Path;-><init>(Lio/milton/common/Path;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-object p0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lio/milton/common/Path;
    .locals 1

    new-instance v0, Lio/milton/common/Path;

    invoke-direct {v0, p0, p1}, Lio/milton/common/Path;-><init>(Lio/milton/common/Path;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/milton/common/Path;

    if-eqz v1, :cond_2

    check-cast p1, Lio/milton/common/Path;

    invoke-virtual {p0}, Lio/milton/common/Path;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lio/milton/common/Path;->isRoot()Z

    move-result p1

    return p1

    :cond_1
    invoke-static {p0, p1}, Lio/milton/common/Path;->parentEquals(Lio/milton/common/Path;Lio/milton/common/Path;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lio/milton/common/Path;->name:Ljava/lang/String;

    iget-object p1, p1, Lio/milton/common/Path;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lio/milton/common/Path;->length:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/common/Path;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lio/milton/common/Path;
    .locals 1

    iget-object v0, p0, Lio/milton/common/Path;->parent:Lio/milton/common/Path;

    return-object v0
.end method

.method public getParts()[Ljava/lang/String;
    .locals 4

    iget v0, p0, Lio/milton/common/Path;->length:I

    new-array v1, v0, [Ljava/lang/String;

    move-object v2, p0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {v2}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lio/milton/common/Path;->hash:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/milton/common/Path;->parent:Lio/milton/common/Path;

    if-nez v0, :cond_0

    const/16 v0, 0x9e

    :goto_0
    iput v0, p0, Lio/milton/common/Path;->hash:I

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lio/milton/common/Path;->hashCode()I

    move-result v0

    iget-object v1, p0, Lio/milton/common/Path;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lio/milton/common/Path;->hash:I

    return v0
.end method

.method public isRoot()Z
    .locals 1

    iget-object v0, p0, Lio/milton/common/Path;->parent:Lio/milton/common/Path;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/milton/common/Path;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toPath()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lio/milton/common/Path;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/milton/common/Path;->parent:Lio/milton/common/Path;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/milton/common/Path;->name:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/milton/common/Path;->parent:Lio/milton/common/Path;

    invoke-virtual {v1}, Lio/milton/common/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/milton/common/Path;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/milton/common/Path;->toPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

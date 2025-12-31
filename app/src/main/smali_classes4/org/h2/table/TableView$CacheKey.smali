.class final Lorg/h2/table/TableView$CacheKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/table/TableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheKey"
.end annotation


# instance fields
.field private final masks:[I

.field private final view:Lorg/h2/table/TableView;


# direct methods
.method public constructor <init>([ILorg/h2/table/TableView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/table/TableView$CacheKey;->masks:[I

    iput-object p2, p0, Lorg/h2/table/TableView$CacheKey;->view:Lorg/h2/table/TableView;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/h2/table/TableView$CacheKey;

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/h2/table/TableView$CacheKey;

    iget-object v2, p0, Lorg/h2/table/TableView$CacheKey;->view:Lorg/h2/table/TableView;

    iget-object v3, p1, Lorg/h2/table/TableView$CacheKey;->view:Lorg/h2/table/TableView;

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lorg/h2/table/TableView$CacheKey;->masks:[I

    iget-object p1, p1, Lorg/h2/table/TableView$CacheKey;->masks:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/h2/table/TableView$CacheKey;->masks:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/h2/table/TableView$CacheKey;->view:Lorg/h2/table/TableView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

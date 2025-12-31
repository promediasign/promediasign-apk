.class public Lorg/h2/index/IndexType;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private affinity:Z

.field private belongsToConstraint:Z

.field private hash:Z

.field private persistent:Z

.field private primaryKey:Z

.field private scan:Z

.field private spatial:Z

.field private unique:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAffinity()Lorg/h2/index/IndexType;
    .locals 2

    new-instance v0, Lorg/h2/index/IndexType;

    invoke-direct {v0}, Lorg/h2/index/IndexType;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/h2/index/IndexType;->affinity:Z

    return-object v0
.end method

.method public static createNonUnique(Z)Lorg/h2/index/IndexType;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/h2/index/IndexType;->createNonUnique(ZZZ)Lorg/h2/index/IndexType;

    move-result-object p0

    return-object p0
.end method

.method public static createNonUnique(ZZZ)Lorg/h2/index/IndexType;
    .locals 1

    .line 2
    new-instance v0, Lorg/h2/index/IndexType;

    invoke-direct {v0}, Lorg/h2/index/IndexType;-><init>()V

    iput-boolean p0, v0, Lorg/h2/index/IndexType;->persistent:Z

    iput-boolean p1, v0, Lorg/h2/index/IndexType;->hash:Z

    iput-boolean p2, v0, Lorg/h2/index/IndexType;->spatial:Z

    return-object v0
.end method

.method public static createPrimaryKey(ZZ)Lorg/h2/index/IndexType;
    .locals 2

    new-instance v0, Lorg/h2/index/IndexType;

    invoke-direct {v0}, Lorg/h2/index/IndexType;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/h2/index/IndexType;->primaryKey:Z

    iput-boolean p0, v0, Lorg/h2/index/IndexType;->persistent:Z

    iput-boolean p1, v0, Lorg/h2/index/IndexType;->hash:Z

    iput-boolean v1, v0, Lorg/h2/index/IndexType;->unique:Z

    return-object v0
.end method

.method public static createScan(Z)Lorg/h2/index/IndexType;
    .locals 1

    new-instance v0, Lorg/h2/index/IndexType;

    invoke-direct {v0}, Lorg/h2/index/IndexType;-><init>()V

    iput-boolean p0, v0, Lorg/h2/index/IndexType;->persistent:Z

    const/4 p0, 0x1

    iput-boolean p0, v0, Lorg/h2/index/IndexType;->scan:Z

    return-object v0
.end method

.method public static createUnique(ZZ)Lorg/h2/index/IndexType;
    .locals 2

    new-instance v0, Lorg/h2/index/IndexType;

    invoke-direct {v0}, Lorg/h2/index/IndexType;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/h2/index/IndexType;->unique:Z

    iput-boolean p0, v0, Lorg/h2/index/IndexType;->persistent:Z

    iput-boolean p1, v0, Lorg/h2/index/IndexType;->hash:Z

    return-object v0
.end method


# virtual methods
.method public getBelongsToConstraint()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/IndexType;->belongsToConstraint:Z

    return v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lorg/h2/index/IndexType;->primaryKey:Z

    if-eqz v1, :cond_0

    const-string v1, "PRIMARY KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/h2/index/IndexType;->hash:Z

    if-eqz v1, :cond_4

    const-string v1, " HASH"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lorg/h2/index/IndexType;->unique:Z

    if-eqz v1, :cond_1

    const-string v1, "UNIQUE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lorg/h2/index/IndexType;->hash:Z

    if-eqz v1, :cond_2

    const-string v1, "HASH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Lorg/h2/index/IndexType;->spatial:Z

    if-eqz v1, :cond_3

    const-string v1, "SPATIAL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "INDEX"

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAffinity()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/IndexType;->affinity:Z

    return v0
.end method

.method public isHash()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/IndexType;->hash:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/IndexType;->persistent:Z

    return v0
.end method

.method public isPrimaryKey()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/IndexType;->primaryKey:Z

    return v0
.end method

.method public isScan()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/IndexType;->scan:Z

    return v0
.end method

.method public isSpatial()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/IndexType;->spatial:Z

    return v0
.end method

.method public isUnique()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/IndexType;->unique:Z

    return v0
.end method

.method public setBelongsToConstraint(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/index/IndexType;->belongsToConstraint:Z

    return-void
.end method

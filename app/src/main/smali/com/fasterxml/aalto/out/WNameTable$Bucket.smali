.class final Lcom/fasterxml/aalto/out/WNameTable$Bucket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/aalto/out/WNameTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bucket"
.end annotation


# instance fields
.field final mName:Lcom/fasterxml/aalto/out/WName;

.field final mNext:Lcom/fasterxml/aalto/out/WNameTable$Bucket;


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/out/WName;Lcom/fasterxml/aalto/out/WNameTable$Bucket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mName:Lcom/fasterxml/aalto/out/WName;

    iput-object p2, p0, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mNext:Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    return-void
.end method


# virtual methods
.method public find(Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mName:Lcom/fasterxml/aalto/out/WName;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/out/WName;->hasName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mName:Lcom/fasterxml/aalto/out/WName;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mNext:Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mName:Lcom/fasterxml/aalto/out/WName;

    invoke-virtual {v1, p1}, Lcom/fasterxml/aalto/out/WName;->hasName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    iget-object v0, v0, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mNext:Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public find(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/aalto/out/WName;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mName:Lcom/fasterxml/aalto/out/WName;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/out/WName;->hasName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mName:Lcom/fasterxml/aalto/out/WName;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mNext:Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mName:Lcom/fasterxml/aalto/out/WName;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/aalto/out/WName;->hasName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    iget-object v0, v0, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mNext:Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public length()I
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mNext:Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lcom/fasterxml/aalto/out/WNameTable$Bucket;->mNext:Lcom/fasterxml/aalto/out/WNameTable$Bucket;

    goto :goto_0

    :cond_0
    return v1
.end method

.class public Lcom/dropbox/core/v2/files/FileLockMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/FileLockMetadata$Serializer;
    }
.end annotation


# instance fields
.field protected final created:Ljava/util/Date;

.field protected final isLockholder:Ljava/lang/Boolean;

.field protected final lockholderAccountId:Ljava/lang/String;

.field protected final lockholderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/FileLockMetadata;->isLockholder:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/FileLockMetadata;->lockholderName:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x28

    if-lt p1, p2, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'lockholderAccountId\' is longer than 40"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'lockholderAccountId\' is shorter than 40"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-object p3, p0, Lcom/dropbox/core/v2/files/FileLockMetadata;->lockholderAccountId:Ljava/lang/String;

    invoke-static {p4}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/files/FileLockMetadata;->created:Ljava/util/Date;

    return-void
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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/files/FileLockMetadata;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileLockMetadata;->isLockholder:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FileLockMetadata;->isLockholder:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileLockMetadata;->lockholderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FileLockMetadata;->lockholderName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileLockMetadata;->lockholderAccountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/FileLockMetadata;->lockholderAccountId:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileLockMetadata;->created:Ljava/util/Date;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/FileLockMetadata;->created:Ljava/util/Date;

    if-eq v2, p1, :cond_6

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

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
    .locals 6

    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileLockMetadata;->isLockholder:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/FileLockMetadata;->lockholderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileLockMetadata;->lockholderAccountId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileLockMetadata;->created:Ljava/util/Date;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/FileLockMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileLockMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/FileLockMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileLockMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

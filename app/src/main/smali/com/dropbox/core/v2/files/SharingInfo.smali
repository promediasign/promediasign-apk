.class public abstract Lcom/dropbox/core/v2/files/SharingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final readOnly:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/SharingInfo;->readOnly:Z

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/SharingInfo;->readOnly:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.class public Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    prefix = "D"
    reference = "DAV:"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field private activelock:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/model/Activelock;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivelock()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/model/Activelock;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;->activelock:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;->activelock:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;->activelock:Ljava/util/List;

    return-object v0
.end method

.class public Lio/milton/context/Registration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public dependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/context/Registration;",
            ">;"
        }
    .end annotation
.end field

.field public final item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private keyClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private keyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private refParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/milton/context/Context;",
            ">;"
        }
    .end annotation
.end field

.field private removing:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/milton/context/RemovalCallback;Lio/milton/context/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/milton/context/RemovalCallback;",
            "Lio/milton/context/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/context/Registration;->item:Ljava/lang/Object;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/milton/context/Registration;->refParent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private context()Lio/milton/context/Context;
    .locals 1

    iget-object v0, p0, Lio/milton/context/Registration;->refParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/milton/context/Context;

    return-object v0
.end method


# virtual methods
.method public addKey(Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lio/milton/context/Registration;->keyClasses:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/milton/context/Registration;->keyClasses:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lio/milton/context/Registration;->keyClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Lio/milton/context/Registration;->keyClasses:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remove()V
    .locals 4

    iget-boolean v0, p0, Lio/milton/context/Registration;->removing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/milton/context/Registration;->removing:Z

    iget-object v0, p0, Lio/milton/context/Registration;->dependents:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/context/Registration;

    invoke-virtual {v2}, Lio/milton/context/Registration;->remove()V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lio/milton/context/Registration;->dependents:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lio/milton/context/Registration;->keyIds:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0}, Lio/milton/context/Registration;->context()Lio/milton/context/Context;

    move-result-object v3

    iget-object v3, v3, Lio/milton/context/Context;->itemByName:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iput-object v1, p0, Lio/milton/context/Registration;->keyIds:Ljava/util/List;

    :cond_4
    iget-object v0, p0, Lio/milton/context/Registration;->keyClasses:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-direct {p0}, Lio/milton/context/Registration;->context()Lio/milton/context/Context;

    move-result-object v3

    iget-object v3, v3, Lio/milton/context/Context;->itemByClass:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iput-object v1, p0, Lio/milton/context/Registration;->keyClasses:Ljava/util/List;

    :cond_6
    return-void
.end method

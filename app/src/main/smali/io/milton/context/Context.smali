.class public abstract Lio/milton/context/Context;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected itemByClass:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Lio/milton/context/Registration;",
            ">;"
        }
    .end annotation
.end field

.field protected itemByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/milton/context/Registration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/milton/context/Context;->itemByClass:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/milton/context/Context;->itemByName:Ljava/util/HashMap;

    return-void
.end method

.method private register(Ljava/lang/Class;Ljava/lang/Object;Lio/milton/context/Registration;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lio/milton/context/Context;->itemByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p1}, Lio/milton/context/Registration;->addKey(Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {p3, v3}, Lio/milton/context/Registration;->contains(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v3, p2, p3}, Lio/milton/context/Context;->register(Ljava/lang/Class;Ljava/lang/Object;Lio/milton/context/Registration;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lio/milton/context/Context;->register(Ljava/lang/Class;Ljava/lang/Object;Lio/milton/context/Registration;)V

    return-void
.end method


# virtual methods
.method public put(Ljava/lang/Object;)Lio/milton/context/Registration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/milton/context/Registration<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/milton/context/Context;->put(Ljava/lang/Object;Lio/milton/context/RemovalCallback;)Lio/milton/context/Registration;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Lio/milton/context/RemovalCallback;)Lio/milton/context/Registration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/milton/context/RemovalCallback;",
            ")",
            "Lio/milton/context/Registration<",
            "TT;>;"
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_0

    new-instance v0, Lio/milton/context/Registration;

    invoke-direct {v0, p1, p2, p0}, Lio/milton/context/Registration;-><init>(Ljava/lang/Object;Lio/milton/context/RemovalCallback;Lio/milton/context/Context;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p2, p1, v0}, Lio/milton/context/Context;->register(Ljava/lang/Class;Ljava/lang/Object;Lio/milton/context/Registration;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "o is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class public final Lcom/fasterxml/aalto/util/UriCanonicalizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/aalto/util/UriCanonicalizer$CanonicalKey;,
        Lcom/fasterxml/aalto/util/UriCanonicalizer$BoundedHashMap;
    }
.end annotation


# instance fields
.field private mURIs:Lcom/fasterxml/aalto/util/UriCanonicalizer$BoundedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/util/UriCanonicalizer;->mURIs:Lcom/fasterxml/aalto/util/UriCanonicalizer$BoundedHashMap;

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/fasterxml/aalto/util/UriCanonicalizer$BoundedHashMap;

    invoke-direct {v0}, Lcom/fasterxml/aalto/util/UriCanonicalizer$BoundedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/aalto/util/UriCanonicalizer;->mURIs:Lcom/fasterxml/aalto/util/UriCanonicalizer$BoundedHashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized canonicalizeURI([CI)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/fasterxml/aalto/util/UriCanonicalizer$CanonicalKey;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/aalto/util/UriCanonicalizer$CanonicalKey;-><init>([CI)V

    iget-object v1, p0, Lcom/fasterxml/aalto/util/UriCanonicalizer;->mURIs:Lcom/fasterxml/aalto/util/UriCanonicalizer$BoundedHashMap;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/aalto/util/UriCanonicalizer;->init()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/fasterxml/aalto/util/UriCanonicalizer$CanonicalKey;->safeClone()Lcom/fasterxml/aalto/util/UriCanonicalizer$CanonicalKey;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/fasterxml/aalto/util/UriCanonicalizer;->mURIs:Lcom/fasterxml/aalto/util/UriCanonicalizer$BoundedHashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

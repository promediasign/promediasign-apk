.class Lsk/mimac/slideshow/utils/glob/GlobScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;
    }
.end annotation


# instance fields
.field private final matches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rootDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner;->matches:Ljava/util/List;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_10

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner;->rootDir:Ljava/io/File;

    if-eqz p2, :cond_f

    if-eqz p3, :cond_e

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "**"

    if-eqz v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;

    invoke-direct {v3, v2}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;

    invoke-direct {v3, v2}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/utils/glob/GlobScanner;->scanDir(Ljava/io/File;Ljava/util/List;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner;->matches:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;

    iget-object v5, v3, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->values:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    aget-object v4, v5, v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->incr()V

    const/16 v4, 0x2f

    invoke-virtual {p3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->reset()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_5
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    const-string v2, "/"

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v2, p3

    :goto_4
    if-ge v4, v2, :cond_b

    aget-object v3, p3, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;

    invoke-virtual {v6, v3}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_8
    invoke-virtual {v6, v3}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->incr(Ljava/lang/String;)Z

    invoke-virtual {v6}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->wasFinalMatch()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->reset()V

    goto :goto_6

    :cond_9
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->reset()V

    goto :goto_7

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->reset()V

    goto :goto_8

    :goto_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;

    invoke-virtual {p3}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->reset()V

    goto :goto_a

    :cond_c
    throw p1

    :cond_d
    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "excludes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "includes cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/RuntimeException;

    const-string v0, "OS error determining canonical path: "

    .line 1
    invoke-static {p1, v0}, Lch/qos/logback/core/joran/util/a;->h(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p3, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "File must be a directory: "

    .line 3
    invoke-static {p1, p3}, Lch/qos/logback/core/joran/util/a;->h(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Directory does not exist: "

    .line 5
    invoke-static {p1, p3}, Lch/qos/logback/core/joran/util/a;->h(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rootDir cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private process(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;

    invoke-virtual {v3, p2}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->incr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->isExhausted()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_1
    invoke-virtual {v3}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->wasFinalMatch()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v2, :cond_4

    iget-object p1, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner;->rootDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p2, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner;->rootDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    add-int/lit8 p1, p1, 0x1

    :cond_3
    iget-object p2, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner;->matches:Ljava/util/List;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v1, p3}, Lsk/mimac/slideshow/utils/glob/GlobScanner;->scanDir(Ljava/io/File;Ljava/util/List;)V

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;

    invoke-virtual {p2}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->decr()V

    goto :goto_1

    :cond_6
    return-void
.end method

.method private scanDir(Ljava/io/File;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;

    iget-object v3, v1, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    if-eqz v3, :cond_1

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget-object v1, v1, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_a

    aget-object v3, v0, v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;

    invoke-virtual {v6, v3}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1, v3, v4}, Lsk/mimac/slideshow/utils/glob/GlobScanner;->process(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object v1, v1, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-direct {p0, p1, v1, v0}, Lsk/mimac/slideshow/utils/glob/GlobScanner;->process(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    :cond_a
    return-void
.end method


# virtual methods
.method public matches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner;->matches:Ljava/util/List;

    return-object v0
.end method

.method public rootDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner;->rootDir:Ljava/io/File;

    return-object v0
.end method

.class Lcom/google/api/client/util/store/FileDataStoreFactory$FileDataStore;
.super Lcom/google/api/client/util/store/AbstractMemoryDataStore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/store/FileDataStoreFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDataStore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/io/Serializable;",
        ">",
        "Lcom/google/api/client/util/store/AbstractMemoryDataStore<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final dataFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/google/api/client/util/store/FileDataStoreFactory;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/api/client/util/store/AbstractMemoryDataStore;-><init>(Lcom/google/api/client/util/store/DataStoreFactory;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/io/File;

    .line 5
    .line 6
    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/api/client/util/store/FileDataStoreFactory$FileDataStore;->dataFile:Ljava/io/File;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/api/client/util/IOUtils;->isSymbolicLink(Ljava/io/File;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/google/api/client/util/Maps;->newHashMap()Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->keyValueMap:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/api/client/util/store/FileDataStoreFactory$FileDataStore;->save()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p2, Ljava/io/FileInputStream;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Lcom/google/api/client/util/IOUtils;->deserialize(Ljava/io/InputStream;)Ljava/io/Serializable;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Ljava/util/HashMap;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->keyValueMap:Ljava/util/HashMap;

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_1
    new-instance p2, Ljava/io/IOException;

    .line 48
    .line 49
    const-string p3, "unable to use a symbolic link: "

    .line 50
    .line 51
    invoke-static {p1, p3}, Lch/qos/logback/core/joran/util/a;->h(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p2
.end method


# virtual methods
.method public save()V
    .locals 3

    iget-object v0, p0, Lcom/google/api/client/util/store/AbstractMemoryDataStore;->keyValueMap:Ljava/util/HashMap;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/google/api/client/util/store/FileDataStoreFactory$FileDataStore;->dataFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v1}, Lcom/google/api/client/util/IOUtils;->serialize(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method

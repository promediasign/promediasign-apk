.class public abstract Lsk/mimac/slideshow/utils/FileFilterUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getFileNamesForFilter(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lsk/mimac/slideshow/utils/glob/Paths;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lsk/mimac/slideshow/utils/glob/Paths;-><init>(Ljava/io/File;[Ljava/lang/String;)V

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/glob/Paths;->filesOnly()Lsk/mimac/slideshow/utils/glob/Paths;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p2, 0x0

    :cond_2
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/utils/glob/Paths;->getRelativePaths(Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getFileNamesForFilterSorted(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lsk/mimac/slideshow/utils/FileFilterUtils;->getFileNamesForFilter(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Z)Ljava/util/List;

    move-result-object p0

    sget-object p1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public static getFilesForFilter(Ljava/io/File;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lsk/mimac/slideshow/utils/glob/Paths;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lsk/mimac/slideshow/utils/glob/Paths;-><init>(Ljava/io/File;[Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/glob/Paths;->filesOnly()Lsk/mimac/slideshow/utils/glob/Paths;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/glob/Paths;->getFiles()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.class public Lsk/mimac/slideshow/utils/filter/RandomFilePicker;
.super Lsk/mimac/slideshow/utils/filter/RandomItemPicker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsk/mimac/slideshow/utils/filter/RandomItemPicker<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/utils/filter/RandomItemPicker;-><init>()V

    return-void
.end method

.method public static getInstance()Lsk/mimac/slideshow/utils/filter/RandomFilePicker;
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/utils/filter/RandomFilePicker;

    invoke-direct {v0}, Lsk/mimac/slideshow/utils/filter/RandomFilePicker;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAll(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p2, p3, p1}, Lsk/mimac/slideshow/utils/FileFilterUtils;->getFileNamesForFilter(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getEmpty()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/filter/RandomFilePicker;->getEmpty()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmpty()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, ""

    return-object v0
.end method

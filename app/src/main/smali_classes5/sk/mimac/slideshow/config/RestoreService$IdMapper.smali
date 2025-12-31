.class Lsk/mimac/slideshow/config/RestoreService$IdMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/config/RestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdMapper"
.end annotation


# instance fields
.field private final itemIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/config/RestoreService$IdMapper;->itemIds:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/config/RestoreService$IdMapper;->playlistIds:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/config/RestoreService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsk/mimac/slideshow/config/RestoreService$IdMapper;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/config/RestoreService$IdMapper;->itemIds:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/config/RestoreService$IdMapper;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/config/RestoreService$IdMapper;->playlistIds:Ljava/util/Map;

    return-object p0
.end method

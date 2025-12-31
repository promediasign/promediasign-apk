.class public Lorg/h2/mvstore/cache/FilePathCache;
.super Lorg/h2/store/fs/FilePathWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/cache/FilePathCache$FileCache;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/h2/mvstore/cache/FilePathCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/h2/mvstore/cache/FilePathCache;

    invoke-direct {v0}, Lorg/h2/mvstore/cache/FilePathCache;-><init>()V

    sput-object v0, Lorg/h2/mvstore/cache/FilePathCache;->INSTANCE:Lorg/h2/mvstore/cache/FilePathCache;

    invoke-static {v0}, Lorg/h2/store/fs/FilePath;->register(Lorg/h2/store/fs/FilePath;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathWrapper;-><init>()V

    return-void
.end method

.method public static wrap(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;
    .locals 1

    new-instance v0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;

    invoke-direct {v0, p0}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;-><init>(Ljava/nio/channels/FileChannel;)V

    return-object v0
.end method


# virtual methods
.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "cache"

    return-object v0
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 2

    new-instance v0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathWrapper;->getBase()Lorg/h2/store/fs/FilePath;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;-><init>(Ljava/nio/channels/FileChannel;)V

    return-object v0
.end method

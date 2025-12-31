.class public Lio/milton/http/quota/DefaultStorageChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/quota/StorageChecker;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/quota/DefaultStorageChecker;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/quota/DefaultStorageChecker;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkStorageOnAdd(Lio/milton/http/Request;Lio/milton/resource/CollectionResource;Lio/milton/common/Path;Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public checkStorageOnReplace(Lio/milton/http/Request;Lio/milton/resource/CollectionResource;Lio/milton/resource/Resource;Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

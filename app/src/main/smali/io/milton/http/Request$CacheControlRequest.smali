.class public final enum Lio/milton/http/Request$CacheControlRequest;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheControlRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/http/Request$CacheControlRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/http/Request$CacheControlRequest;

.field public static final enum CACHE_EXT:Lio/milton/http/Request$CacheControlRequest;

.field public static final enum MAX_AGE:Lio/milton/http/Request$CacheControlRequest;

.field public static final enum MAX_STALE:Lio/milton/http/Request$CacheControlRequest;

.field public static final enum MIN_FRESH:Lio/milton/http/Request$CacheControlRequest;

.field public static final enum NO_CACHE:Lio/milton/http/Request$CacheControlRequest;

.field public static final enum NO_STORE:Lio/milton/http/Request$CacheControlRequest;

.field public static final enum NO_TRANSFORM:Lio/milton/http/Request$CacheControlRequest;

.field public static final enum ONLY_IF_CACHED:Lio/milton/http/Request$CacheControlRequest;


# instance fields
.field public code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/milton/http/Request$CacheControlRequest;

    const/4 v1, 0x0

    const-string v2, "no-cache"

    const-string v3, "NO_CACHE"

    invoke-direct {v0, v3, v1, v2}, Lio/milton/http/Request$CacheControlRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/milton/http/Request$CacheControlRequest;->NO_CACHE:Lio/milton/http/Request$CacheControlRequest;

    new-instance v2, Lio/milton/http/Request$CacheControlRequest;

    const/4 v3, 0x1

    const-string v4, "no-store"

    const-string v5, "NO_STORE"

    invoke-direct {v2, v5, v3, v4}, Lio/milton/http/Request$CacheControlRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/milton/http/Request$CacheControlRequest;->NO_STORE:Lio/milton/http/Request$CacheControlRequest;

    new-instance v4, Lio/milton/http/Request$CacheControlRequest;

    const/4 v5, 0x2

    const-string v6, "max-age"

    const-string v7, "MAX_AGE"

    invoke-direct {v4, v7, v5, v6}, Lio/milton/http/Request$CacheControlRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/milton/http/Request$CacheControlRequest;->MAX_AGE:Lio/milton/http/Request$CacheControlRequest;

    new-instance v6, Lio/milton/http/Request$CacheControlRequest;

    const/4 v7, 0x3

    const-string v8, "max-stale"

    const-string v9, "MAX_STALE"

    invoke-direct {v6, v9, v7, v8}, Lio/milton/http/Request$CacheControlRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lio/milton/http/Request$CacheControlRequest;->MAX_STALE:Lio/milton/http/Request$CacheControlRequest;

    new-instance v8, Lio/milton/http/Request$CacheControlRequest;

    const/4 v9, 0x4

    const-string v10, "min-fresh"

    const-string v11, "MIN_FRESH"

    invoke-direct {v8, v11, v9, v10}, Lio/milton/http/Request$CacheControlRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lio/milton/http/Request$CacheControlRequest;->MIN_FRESH:Lio/milton/http/Request$CacheControlRequest;

    new-instance v10, Lio/milton/http/Request$CacheControlRequest;

    const/4 v11, 0x5

    const-string v12, "no-transform"

    const-string v13, "NO_TRANSFORM"

    invoke-direct {v10, v13, v11, v12}, Lio/milton/http/Request$CacheControlRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lio/milton/http/Request$CacheControlRequest;->NO_TRANSFORM:Lio/milton/http/Request$CacheControlRequest;

    new-instance v12, Lio/milton/http/Request$CacheControlRequest;

    const/4 v13, 0x6

    const-string v14, "only-if-cached"

    const-string v15, "ONLY_IF_CACHED"

    invoke-direct {v12, v15, v13, v14}, Lio/milton/http/Request$CacheControlRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lio/milton/http/Request$CacheControlRequest;->ONLY_IF_CACHED:Lio/milton/http/Request$CacheControlRequest;

    new-instance v14, Lio/milton/http/Request$CacheControlRequest;

    const/4 v15, 0x7

    const-string v13, "cache-extension"

    const-string v11, "CACHE_EXT"

    invoke-direct {v14, v11, v15, v13}, Lio/milton/http/Request$CacheControlRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lio/milton/http/Request$CacheControlRequest;->CACHE_EXT:Lio/milton/http/Request$CacheControlRequest;

    const/16 v11, 0x8

    new-array v11, v11, [Lio/milton/http/Request$CacheControlRequest;

    aput-object v0, v11, v1

    aput-object v2, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    aput-object v8, v11, v9

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    aput-object v14, v11, v15

    sput-object v11, Lio/milton/http/Request$CacheControlRequest;->$VALUES:[Lio/milton/http/Request$CacheControlRequest;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/milton/http/Request$CacheControlRequest;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/milton/http/Request$CacheControlRequest;
    .locals 1

    const-class v0, Lio/milton/http/Request$CacheControlRequest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/http/Request$CacheControlRequest;

    return-object p0
.end method

.method public static values()[Lio/milton/http/Request$CacheControlRequest;
    .locals 1

    sget-object v0, Lio/milton/http/Request$CacheControlRequest;->$VALUES:[Lio/milton/http/Request$CacheControlRequest;

    invoke-virtual {v0}, [Lio/milton/http/Request$CacheControlRequest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/http/Request$CacheControlRequest;

    return-object v0
.end method

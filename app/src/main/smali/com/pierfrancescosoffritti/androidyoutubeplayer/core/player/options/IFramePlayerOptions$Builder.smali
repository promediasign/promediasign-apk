.class public final Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder$Companion;


# instance fields
.field private final builderOptions:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->Companion:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->builderOptions:Lorg/json/JSONObject;

    const-string v0, "autoplay"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->addInt(Ljava/lang/String;I)V

    const-string v0, "mute"

    invoke-direct {p0, v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->addInt(Ljava/lang/String;I)V

    const-string v0, "controls"

    invoke-direct {p0, v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->addInt(Ljava/lang/String;I)V

    const-string v0, "enablejsapi"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->addInt(Ljava/lang/String;I)V

    const-string v0, "fs"

    invoke-direct {p0, v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->addInt(Ljava/lang/String;I)V

    const-string v0, "origin"

    const-string v3, "https://www.youtube.com"

    invoke-direct {p0, v0, v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->addString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rel"

    invoke-direct {p0, v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->addInt(Ljava/lang/String;I)V

    const-string v0, "showinfo"

    invoke-direct {p0, v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->addInt(Ljava/lang/String;I)V

    const-string v0, "iv_load_policy"

    const/4 v3, 0x3

    invoke-direct {p0, v0, v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->addInt(Ljava/lang/String;I)V

    const-string v0, "modestbranding"

    invoke-direct {p0, v0, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->addInt(Ljava/lang/String;I)V

    const-string v0, "cc_load_policy"

    invoke-direct {p0, v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->addInt(Ljava/lang/String;I)V

    return-void
.end method

.method private final addInt(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->builderOptions:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal JSON value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final addString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->builderOptions:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 8
    .line 9
    const-string v1, "Illegal JSON value "

    .line 10
    .line 11
    const-string v2, ": "

    .line 12
    .line 13
    invoke-static {v1, p1, v2, p2}, LA/g;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method


# virtual methods
.method public final build()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;
    .locals 3

    new-instance v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;

    iget-object v1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->builderOptions:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;-><init>(Lorg/json/JSONObject;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final ccLoadPolicy(I)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;
    .locals 1

    const-string v0, "cc_load_policy"

    invoke-direct {p0, v0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->addInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final controls(I)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;
    .locals 1

    const-string v0, "controls"

    invoke-direct {p0, v0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->addInt(Ljava/lang/String;I)V

    return-object p0
.end method

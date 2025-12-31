.class Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/network/WiFiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkConfig"
.end annotation


# instance fields
.field private hidden:Z

.field private password:Ljava/lang/String;

.field private security:Ljava/lang/String;

.field private ssid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/network/WiFiHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->ssid:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->password:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$202(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->password:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$300(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Z
    .locals 0

    iget-boolean p0, p0, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->hidden:Z

    return p0
.end method

.method public static synthetic access$302(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->hidden:Z

    return p1
.end method

.method public static synthetic access$400(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->security:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$402(Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->security:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public hasPassword()Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ssid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->hidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsk/mimac/slideshow/network/WiFiHelper$NetworkConfig;->hasPassword()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

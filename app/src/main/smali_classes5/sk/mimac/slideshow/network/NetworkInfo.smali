.class public Lsk/mimac/slideshow/network/NetworkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dns:Ljava/lang/String;

.field private gateway:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDns()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/network/NetworkInfo;->dns:Ljava/lang/String;

    return-object v0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/network/NetworkInfo;->gateway:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/network/NetworkInfo;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public setDns(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/network/NetworkInfo;->dns:Ljava/lang/String;

    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/network/NetworkInfo;->gateway:Ljava/lang/String;

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/network/NetworkInfo;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NetworkInfo{ipAddress="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lsk/mimac/slideshow/network/NetworkInfo;->ipAddress:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", gateway="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lsk/mimac/slideshow/network/NetworkInfo;->gateway:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", dns="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lsk/mimac/slideshow/network/NetworkInfo;->dns:Ljava/lang/String;

    .line 29
    .line 30
    const/16 v2, 0x7d

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

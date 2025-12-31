.class public Lio/antmedia/rtmp_client/RtmpClient$RtmpIOException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/antmedia/rtmp_client/RtmpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RtmpIOException"
.end annotation


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const-string v0, "RTMP error: "

    .line 2
    .line 3
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lio/antmedia/rtmp_client/RtmpClient$RtmpIOException;->errorCode:I

    .line 11
    .line 12
    return-void
.end method

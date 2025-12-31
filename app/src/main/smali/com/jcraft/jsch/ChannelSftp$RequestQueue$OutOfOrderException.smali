.class Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutOfOrderException"
.end annotation


# instance fields
.field offset:J

.field final synthetic this$1:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;J)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;->this$1:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-wide p2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;->offset:J

    return-void
.end method

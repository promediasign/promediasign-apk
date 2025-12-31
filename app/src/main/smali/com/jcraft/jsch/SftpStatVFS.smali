.class public Lcom/jcraft/jsch/SftpStatVFS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field extended:[Ljava/lang/String;

.field flags:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->flags:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->extended:[Ljava/lang/String;

    return-void
.end method

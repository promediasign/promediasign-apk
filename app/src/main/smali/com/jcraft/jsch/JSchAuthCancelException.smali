.class Lcom/jcraft/jsch/JSchAuthCancelException;
.super Lcom/jcraft/jsch/JSchException;
.source "SourceFile"


# instance fields
.field method:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/JSchException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jcraft/jsch/JSchAuthCancelException;->method:Ljava/lang/String;

    return-void
.end method

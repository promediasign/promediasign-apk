.class public abstract Lcom/dropbox/core/DbxSdkVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/dropbox/core/DbxSdkVersion;->loadVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/DbxSdkVersion;->Version:Ljava/lang/String;

    return-void
.end method

.method private static loadVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.2.1"

    return-object v0
.end method

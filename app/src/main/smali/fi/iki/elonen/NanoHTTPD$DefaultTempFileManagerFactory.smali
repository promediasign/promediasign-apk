.class Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTempFileManagerFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfi/iki/elonen/NanoHTTPD$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    .locals 1

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;

    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;-><init>()V

    return-object v0
.end method

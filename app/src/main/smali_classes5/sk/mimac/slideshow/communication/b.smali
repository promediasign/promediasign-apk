.class public final synthetic Lsk/mimac/slideshow/communication/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;

.field public final synthetic b:Ludt/UDTSocket;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;Ludt/UDTSocket;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/b;->a:Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;

    iput-object p2, p0, Lsk/mimac/slideshow/communication/b;->b:Ludt/UDTSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/communication/b;->a:Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/b;->b:Ludt/UDTSocket;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->a(Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;Ludt/UDTSocket;)V

    return-void
.end method

.class public final synthetic Lsk/mimac/slideshow/communication/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/communication/udt/UdtEndpoint$SessionConsumer;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/a;->a:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    return-void
.end method


# virtual methods
.method public final a(Ludt/UDTSession;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/communication/a;->a:Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->processUdtRequests(Ludt/UDTSession;)V

    return-void
.end method

.class public final synthetic Lg1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/communication/TunnelHttpServer;

.field public final synthetic b:Ljava/io/InputStream;

.field public final synthetic c:Ljava/io/OutputStream;

.field public final synthetic d:Ljava/io/OutputStream;

.field public final synthetic e:Ljava/io/InputStream;

.field public final synthetic f:Ludt/UDTClient;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/communication/TunnelHttpServer;Ljava/io/InputStream;Ludt/UDTOutputStream;Ljava/io/OutputStream;Ludt/UDTInputStream;Ludt/UDTClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/g;->a:Lsk/mimac/slideshow/communication/TunnelHttpServer;

    iput-object p2, p0, Lg1/g;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lg1/g;->c:Ljava/io/OutputStream;

    iput-object p4, p0, Lg1/g;->d:Ljava/io/OutputStream;

    iput-object p5, p0, Lg1/g;->e:Ljava/io/InputStream;

    iput-object p6, p0, Lg1/g;->f:Ludt/UDTClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v4, p0, Lg1/g;->e:Ljava/io/InputStream;

    iget-object v5, p0, Lg1/g;->f:Ludt/UDTClient;

    iget-object v0, p0, Lg1/g;->a:Lsk/mimac/slideshow/communication/TunnelHttpServer;

    iget-object v1, p0, Lg1/g;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lg1/g;->c:Ljava/io/OutputStream;

    iget-object v3, p0, Lg1/g;->d:Ljava/io/OutputStream;

    invoke-static/range {v0 .. v5}, Lsk/mimac/slideshow/communication/TunnelHttpServer;->b(Lsk/mimac/slideshow/communication/TunnelHttpServer;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ludt/UDTClient;)V

    return-void
.end method

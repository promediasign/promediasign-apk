.class public Lsk/mimac/slideshow/rss/RssMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final description:Ljava/lang/String;

.field private final header:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lsk/mimac/slideshow/rss/RssMessage;->header:Ljava/lang/String;

    iput-object v0, p0, Lsk/mimac/slideshow/rss/RssMessage;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/rss/RssMessage;->header:Ljava/lang/String;

    iput-object p2, p0, Lsk/mimac/slideshow/rss/RssMessage;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/rss/RssMessage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/rss/RssMessage;->header:Ljava/lang/String;

    return-object v0
.end method

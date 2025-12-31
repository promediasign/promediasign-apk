.class Lsk/mimac/slideshow/http/api/impl/SearchCommand$ContainsFileFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/filefilter/IOFileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/http/api/impl/SearchCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContainsFileFilter"
.end annotation


# instance fields
.field private final filter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/http/api/impl/SearchCommand$ContainsFileFilter;->filter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/http/api/impl/SearchCommand$ContainsFileFilter;->filter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 2
    iget-object p1, p0, Lsk/mimac/slideshow/http/api/impl/SearchCommand$ContainsFileFilter;->filter:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

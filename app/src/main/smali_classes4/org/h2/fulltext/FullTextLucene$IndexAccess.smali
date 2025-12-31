.class Lorg/h2/fulltext/FullTextLucene$IndexAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/fulltext/FullTextLucene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexAccess"
.end annotation


# instance fields
.field reader:Lorg/apache/lucene/index/IndexReader;

.field searcher:Lorg/apache/lucene/search/IndexSearcher;

.field writer:Lorg/apache/lucene/index/IndexWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

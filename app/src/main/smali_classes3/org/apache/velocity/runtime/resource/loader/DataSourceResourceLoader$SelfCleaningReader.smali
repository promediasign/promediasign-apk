.class Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader$SelfCleaningReader;
.super Ljava/io/FilterReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelfCleaningReader"
.end annotation


# instance fields
.field private resultSet:Ljava/sql/ResultSet;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/sql/ResultSet;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    iput-object p2, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader$SelfCleaningReader;->resultSet:Ljava/sql/ResultSet;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Ljava/io/FilterReader;->close()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/loader/DataSourceResourceLoader$SelfCleaningReader;->resultSet:Ljava/sql/ResultSet;

    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    :goto_0
    return-void

    :goto_1
    throw v0
.end method

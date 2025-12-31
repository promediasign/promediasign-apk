.class public Lorg/apache/poi/extractor/CommandLineTextExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DIVIDER:Ljava/lang/String; = "======================="


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9

    const-string v0, "   ======================="

    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Use:"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, "   CommandLineTextExtractor <filename> [filename] [filename]"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "======================="

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-static {v6}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Ljava/io/File;)Lorg/apache/poi/POITextExtractor;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Lorg/apache/poi/POITextExtractor;->getMetadataTextExtractor()Lorg/apache/poi/POITextExtractor;

    move-result-object v6

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/apache/poi/POITextExtractor;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/poi/POITextExtractor;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Had "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " characters of metadata and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " characters of text"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lorg/apache/poi/POITextExtractor;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Lorg/apache/poi/POITextExtractor;->close()V

    throw p0

    :cond_1
    return-void
.end method

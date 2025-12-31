.class public abstract Lcom/googlecode/concurrentlinkedhashmap/Weighers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/concurrentlinkedhashmap/Weighers$SingletonEntryWeigher;
    }
.end annotation


# direct methods
.method public static entrySingleton()Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/googlecode/concurrentlinkedhashmap/Weighers$SingletonEntryWeigher;->INSTANCE:Lcom/googlecode/concurrentlinkedhashmap/Weighers$SingletonEntryWeigher;

    return-object v0
.end method

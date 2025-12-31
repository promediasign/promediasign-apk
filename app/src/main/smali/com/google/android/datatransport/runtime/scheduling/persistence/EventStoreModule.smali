.class public abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static dbName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.datatransport.events"

    return-object v0
.end method

.method public static schemaVersion()I
    .locals 1

    sget v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->SCHEMA_VERSION:I

    return v0
.end method

.method public static storeConfig()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->DEFAULT:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    return-object v0
.end method

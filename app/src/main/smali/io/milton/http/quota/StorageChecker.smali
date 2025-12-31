.class public interface abstract Lio/milton/http/quota/StorageChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/quota/StorageChecker$StorageErrorReason;
    }
.end annotation


# virtual methods
.method public abstract checkStorageOnAdd(Lio/milton/http/Request;Lio/milton/resource/CollectionResource;Lio/milton/common/Path;Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;
.end method

.method public abstract checkStorageOnReplace(Lio/milton/http/Request;Lio/milton/resource/CollectionResource;Lio/milton/resource/Resource;Ljava/lang/String;)Lio/milton/http/quota/StorageChecker$StorageErrorReason;
.end method

.class public Lcom/google/api/services/drive/DriveScopes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DRIVE:Ljava/lang/String; = "https://www.googleapis.com/auth/drive"

.field public static final DRIVE_APPDATA:Ljava/lang/String; = "https://www.googleapis.com/auth/drive.appdata"

.field public static final DRIVE_FILE:Ljava/lang/String; = "https://www.googleapis.com/auth/drive.file"

.field public static final DRIVE_METADATA:Ljava/lang/String; = "https://www.googleapis.com/auth/drive.metadata"

.field public static final DRIVE_METADATA_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/drive.metadata.readonly"

.field public static final DRIVE_PHOTOS_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/drive.photos.readonly"

.field public static final DRIVE_READONLY:Ljava/lang/String; = "https://www.googleapis.com/auth/drive.readonly"

.field public static final DRIVE_SCRIPTS:Ljava/lang/String; = "https://www.googleapis.com/auth/drive.scripts"


# direct methods
.method public static all()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "https://www.googleapis.com/auth/drive"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "https://www.googleapis.com/auth/drive.appdata"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "https://www.googleapis.com/auth/drive.file"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "https://www.googleapis.com/auth/drive.metadata"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "https://www.googleapis.com/auth/drive.metadata.readonly"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "https://www.googleapis.com/auth/drive.photos.readonly"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "https://www.googleapis.com/auth/drive.readonly"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "https://www.googleapis.com/auth/drive.scripts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lcom/dropbox/core/stone/StoneSerializers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;,
        Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;,
        Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;,
        Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;,
        Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;,
        Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;,
        Lcom/dropbox/core/stone/StoneSerializers$DoubleSerializer;,
        Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;
    }
.end annotation


# direct methods
.method public static boolean_()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;

    return-object v0
.end method

.method public static float64()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$DoubleSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$DoubleSerializer;

    return-object v0
.end method

.method public static list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TT;>;)",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;

    invoke-direct {v0, p0}, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;-><init>(Lcom/dropbox/core/stone/StoneSerializer;)V

    return-object v0
.end method

.method public static nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TT;>;)",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;

    invoke-direct {v0, p0}, Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;-><init>(Lcom/dropbox/core/stone/StoneSerializer;)V

    return-object v0
.end method

.method public static nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StructSerializer<",
            "TT;>;)",
            "Lcom/dropbox/core/stone/StructSerializer<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;

    invoke-direct {v0, p0}, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;-><init>(Lcom/dropbox/core/stone/StructSerializer;)V

    return-object v0
.end method

.method public static string()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;

    return-object v0
.end method

.method public static timestamp()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;

    return-object v0
.end method

.method public static uInt32()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;

    return-object v0
.end method

.method public static uInt64()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$LongSerializer;

    return-object v0
.end method

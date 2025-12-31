.class public abstract Lcom/fasterxml/jackson/core/JsonGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    }
.end annotation


# instance fields
.field protected _cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _reportError(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    throw v0
.end method

.method public final _throwInternal()V
    .locals 0

    invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V

    return-void
.end method

.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public getPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    return-object v0
.end method

.method public abstract setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;
.end method

.method public setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    return-object p0
.end method

.method public abstract useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;
.end method

.method public abstract writeBoolean(Z)V
.end method

.method public abstract writeEndArray()V
.end method

.method public abstract writeEndObject()V
.end method

.method public abstract writeFieldName(Ljava/lang/String;)V
.end method

.method public abstract writeNull()V
.end method

.method public abstract writeNumber(D)V
.end method

.method public abstract writeNumber(F)V
.end method

.method public abstract writeNumber(I)V
.end method

.method public abstract writeNumber(J)V
.end method

.method public abstract writeNumber(Ljava/math/BigDecimal;)V
.end method

.method public abstract writeNumber(Ljava/math/BigInteger;)V
.end method

.method public final writeNumberField(Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    return-void
.end method

.method public abstract writeRaw(C)V
.end method

.method public abstract writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
.end method

.method public abstract writeRaw(Ljava/lang/String;)V
.end method

.method public abstract writeRaw([CII)V
.end method

.method public abstract writeStartArray()V
.end method

.method public writeStartArray(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    return-void
.end method

.method public abstract writeStartObject()V
.end method

.method public abstract writeString(Ljava/lang/String;)V
.end method

.method public abstract writeStringField(Ljava/lang/String;Ljava/lang/String;)V
.end method

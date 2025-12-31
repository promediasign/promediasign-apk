.class public Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/core/PrettyPrinter;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;,
        Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;,
        Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/core/PrettyPrinter;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/io/SerializedString;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;

.field protected transient _nesting:I

.field protected _objectFieldValueSeparatorWithSpaces:Ljava/lang/String;

.field protected _objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;

.field protected final _rootSeparator:Lcom/fasterxml/jackson/core/SerializableString;

.field protected _separators:Lcom/fasterxml/jackson/core/util/Separators;

.field protected _spacesInObjectEntries:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    const-string v1, " "

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/io/SerializedString;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>(Lcom/fasterxml/jackson/core/SerializableString;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;->instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;

    sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultIndenter;->SYSTEM_LINEFEED_INSTANCE:Lcom/fasterxml/jackson/core/util/DefaultIndenter;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_rootSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    sget-object p1, Lcom/fasterxml/jackson/core/PrettyPrinter;->DEFAULT_SEPARATORS:Lcom/fasterxml/jackson/core/util/Separators;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->withSeparators(Lcom/fasterxml/jackson/core/util/Separators;)Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    return-void
.end method


# virtual methods
.method public beforeArrayValues(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;

    iget v1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    return-void
.end method

.method public beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;

    iget v1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    return-void
.end method

.method public withSeparators(Lcom/fasterxml/jackson/core/util/Separators;)Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
    .locals 2

    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_separators:Lcom/fasterxml/jackson/core/util/Separators;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/Separators;->getObjectFieldValueSeparator()C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectFieldValueSeparatorWithSpaces:Ljava/lang/String;

    return-object p0
.end method

.method public writeArrayValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_separators:Lcom/fasterxml/jackson/core/util/Separators;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/Separators;->getArrayValueSeparator()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;

    iget v1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    return-void
.end method

.method public writeEndArray(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    :cond_0
    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;

    iget v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {p2, p1, v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    :goto_0
    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    return-void
.end method

.method public writeEndObject(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    :cond_0
    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;

    iget v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {p2, p1, v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    :goto_0
    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    return-void
.end method

.method public writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_separators:Lcom/fasterxml/jackson/core/util/Separators;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/Separators;->getObjectEntrySeparator()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;

    iget v1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V

    return-void
.end method

.method public writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectFieldValueSeparatorWithSpaces:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_separators:Lcom/fasterxml/jackson/core/util/Separators;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/Separators;->getObjectFieldValueSeparator()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    :goto_0
    return-void
.end method

.method public writeRootValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_rootSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V

    :cond_0
    return-void
.end method

.method public writeStartArray(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    return-void
.end method

.method public writeStartObject(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    iget-object p1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->isInline()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    :cond_0
    return-void
.end method

.class public abstract Lcom/genie_connect/common/db/entityfactory/EGEntity;
.super Ljava/lang/Object;
.source "EGEntity.java"

# interfaces
.implements Lcom/genie_connect/common/db/DatabaseSymbolConstants;


# static fields
.field protected static final ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field protected static final COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field protected static final COMMON_FIELDS_STRING_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field private static final DATAVERSION_LIVE:Ljava/lang/String; = "** LIVE **"

.field protected static final ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field private static final INITIAL_MAP_SIZE:I = 0x32

.field private static final KEY:Ljava/lang/String; = "key"

.field protected static final NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field protected static final USERNAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;


# instance fields
.field private final mArrayAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mArrayEmbeddedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;",
            ">;"
        }
    .end annotation
.end field

.field private final mAtomicAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/common/db/entityfactory/EGAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mJson:Lcom/genie_connect/common/platform/json/IJsonObject;

.field private mKey:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v1, "username"

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->USERNAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 56
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v1, "name"

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 57
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v1, "id"

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 58
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-static {v0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->getCommonAttrs(Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 59
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-static {v0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->getCommonAttrs(Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->COMMON_FIELDS_STRING_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    sput-object v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->getTableName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mAtomicAttributes:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mArrayAttributes:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mArrayEmbeddedAttributes:Ljava/util/Map;

    .line 82
    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->parseAttributes()V

    .line 83
    return-void
.end method

.method protected static concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 4
    .param p0, "first"    # [Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .param p1, "second"    # [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .prologue
    const/4 v3, 0x0

    .line 411
    array-length v1, p0

    if-nez v1, :cond_0

    .line 418
    .end local p1    # "second":[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    :goto_0
    return-object p1

    .line 412
    .restart local p1    # "second":[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    :cond_0
    array-length v1, p1

    if-nez v1, :cond_1

    move-object p1, p0

    goto :goto_0

    .line 414
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 416
    .local v0, "result":[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 418
    goto :goto_0
.end method

.method private static final getCommonAttrs(Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 5
    .param p0, "keyType"    # Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    .prologue
    const/4 v4, 0x1

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/entityfactory/EGAttribute;>;"
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "_id"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "_namespace"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "_dataversion"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "createdDate"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "modifiedDate"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "importKey"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "importBatch"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v2, "createdBy"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGEntity;->USERNAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v2, "modifiedBy"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGEntity;->USERNAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    if-ne p0, v1, :cond_0

    .line 435
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "name"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    return-object v1

    .line 437
    :cond_0
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v2, "id"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v1, v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getValueFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mJson:Lcom/genie_connect/common/platform/json/IJsonObject;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mJson:Lcom/genie_connect/common/platform/json/IJsonObject;

    invoke-interface {v0, p1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static reset(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 445
    return-void
.end method

.method private setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 333
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 334
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 344
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Json field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' maps to an inaccessible field on entity type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/common/utils/CommonLog;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Json field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not map to a field on entity type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/common/utils/CommonLog;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set value for json field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' on entity type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 341
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Json field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' maps to an inaccessible field on entity type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/common/utils/CommonLog;->warn(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setFieldsFromJson(Lcom/genie_connect/common/platform/json/IJsonObject;Ljava/lang/Iterable;Ljava/lang/String;)V
    .locals 8
    .param p1, "o"    # Lcom/genie_connect/common/platform/json/IJsonObject;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/common/platform/json/IJsonObject;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/EGAttribute;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 299
    .local p2, "attrs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/genie_connect/common/db/entityfactory/EGAttribute;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 300
    .local v0, "attr":Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    instance-of v5, v0, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    if-eqz v5, :cond_1

    .line 302
    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v1

    .line 304
    .local v1, "child":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v1, :cond_0

    move-object v5, v0

    .line 305
    check-cast v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    invoke-virtual {v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;->getAttrs()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v2

    .line 306
    .local v2, "childAttributes":[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v5, v6}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->setFieldsFromJson(Lcom/genie_connect/common/platform/json/IJsonObject;Ljava/lang/Iterable;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    .end local v1    # "child":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v2    # "childAttributes":[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    :cond_1
    instance-of v5, v0, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    if-eqz v5, :cond_2

    .line 310
    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v1

    .line 312
    .restart local v1    # "child":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v1, :cond_0

    move-object v5, v0

    .line 313
    check-cast v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    invoke-virtual {v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;->getKey()Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getValue(Lcom/genie_connect/common/platform/json/IJsonObject;)Ljava/lang/Object;

    move-result-object v4

    .line 315
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 321
    .end local v1    # "child":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0, p1}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getValue(Lcom/genie_connect/common/platform/json/IJsonObject;)Ljava/lang/Object;

    move-result-object v4

    .line 323
    .restart local v4    # "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->setFieldValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 328
    .end local v0    # "attr":Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method private toSQLiteContent(JLjava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    .locals 7
    .param p1, "namespace"    # J
    .param p3, "dataversion"    # Ljava/lang/String;

    .prologue
    .line 389
    new-instance v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    invoke-direct {v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;-><init>()V

    .line 391
    .local v2, "row":Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    iget-object v3, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mAtomicAttributes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 392
    .local v0, "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;>;"
    const-string v4, "_namespace"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-virtual {v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    const-string v3, "_namespace"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_0
    const-string v4, "_dataversion"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-virtual {v3}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    if-nez p3, :cond_1

    .line 398
    const-string v3, "_dataversion"

    const-string v4, "** LIVE **"

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_1
    const-string v3, "_dataversion"

    invoke-virtual {v2, v3, p3}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    iget-object v4, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mJson:Lcom/genie_connect/common/platform/json/IJsonObject;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->putSQLValue(Lcom/genie_connect/common/platform/json/IJsonObject;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    .end local v0    # "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;>;"
    :cond_3
    return-object v2
.end method


# virtual methods
.method public doSQLiteDelete(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "db"    # Lcom/genie_connect/common/platform/db/IDatabase;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    .line 124
    .local v0, "table":Ljava/lang/String;
    invoke-interface {p1, v0, p2, p3}, Lcom/genie_connect/common/platform/db/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 125
    return-void
.end method

.method public doSQLiteDeleteAll(Lcom/genie_connect/common/platform/db/IDatabase;)J
    .locals 8
    .param p1, "db"    # Lcom/genie_connect/common/platform/db/IDatabase;

    .prologue
    const/4 v7, 0x0

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v3, "sbTable":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    invoke-interface {p1, v6, v7, v7}, Lcom/genie_connect/common/platform/db/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 133
    .local v4, "result":J
    iget-object v6, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mArrayAttributes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    .local v0, "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;>;"
    invoke-static {v3}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->reset(Ljava/lang/StringBuilder;)V

    .line 135
    iget-object v6, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    invoke-virtual {v6}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v7, v7}, Lcom/genie_connect/common/platform/db/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    goto :goto_0

    .line 142
    .end local v0    # "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;>;"
    :cond_0
    iget-object v6, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mArrayEmbeddedAttributes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 143
    .local v1, "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;>;"
    invoke-static {v3}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->reset(Ljava/lang/StringBuilder;)V

    .line 144
    iget-object v6, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;

    invoke-virtual {v6}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v7, v7}, Lcom/genie_connect/common/platform/db/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    goto :goto_1

    .line 151
    .end local v1    # "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;>;"
    :cond_1
    return-wide v4
.end method

.method public doSQLiteDeletes(Lcom/genie_connect/common/platform/db/IDatabase;)V
    .locals 9
    .param p1, "db"    # Lcom/genie_connect/common/platform/db/IDatabase;

    .prologue
    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mKey:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-virtual {v8}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "where":Ljava/lang/String;
    const-string v7, "key"

    invoke-direct {p0, v7}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->getValueFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "v":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v0, v7

    .line 161
    .local v0, "args":[Ljava/lang/String;
    iget-object v7, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    invoke-interface {p1, v7, v6, v0}, Lcom/genie_connect/common/platform/db/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v3, "sbTable":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v4, "sbWhere":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mArrayAttributes:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 169
    .local v1, "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;>;"
    invoke-static {v3}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->reset(Ljava/lang/StringBuilder;)V

    .line 170
    invoke-static {v4}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->reset(Ljava/lang/StringBuilder;)V

    .line 172
    iget-object v7, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v7, "_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    invoke-virtual {v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v7, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v7, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mKey:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-virtual {v7}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v7, "=?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8, v0}, Lcom/genie_connect/common/platform/db/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    goto :goto_0

    .line 187
    .end local v1    # "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;>;"
    :cond_0
    return-void
.end method

.method public doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V
    .locals 21
    .param p1, "db"    # Lcom/genie_connect/common/platform/db/IDatabase;
    .param p2, "dataversion"    # Ljava/lang/String;
    .param p3, "namespace"    # J

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mJson:Lcom/genie_connect/common/platform/json/IJsonObject;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->isThisEntityPesistable(Ljava/lang/String;Lcom/genie_connect/common/platform/json/IJsonObject;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 192
    new-instance v20, Ljava/util/HashMap;

    const/16 v4, 0x64

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 193
    .local v20, "updates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/genie_connect/common/db/entityfactory/GenieContentValues;>;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->toSQLiteContent(JLjava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    move-result-object v13

    .line 194
    .local v13, "cv":Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mKey:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-virtual {v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "id":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    .line 196
    .local v10, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5, v13}, Lcom/genie_connect/common/platform/db/IDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;)J

    .line 199
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v17, "sbTable":Ljava/lang/StringBuilder;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v18, "sbWhere":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mArrayAttributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 204
    .local v11, "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v9, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/common/db/entityfactory/GenieContentValues;>;"
    invoke-static/range {v17 .. v17}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->reset(Ljava/lang/StringBuilder;)V

    .line 206
    invoke-static/range {v18 .. v18}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->reset(Ljava/lang/StringBuilder;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v4, "_"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    invoke-virtual {v4}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v4, "_"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mKey:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-virtual {v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v4, "=?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5, v10}, Lcom/genie_connect/common/platform/db/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 224
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mKey:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mJson:Lcom/genie_connect/common/platform/json/IJsonObject;

    invoke-virtual/range {v4 .. v9}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;->putSQLValues(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;Ljava/lang/String;Lcom/genie_connect/common/platform/json/IJsonObject;Ljava/util/List;)V

    .line 225
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 228
    .end local v9    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/common/db/entityfactory/GenieContentValues;>;"
    .end local v11    # "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mArrayEmbeddedAttributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 229
    .local v12, "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .restart local v9    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/common/db/entityfactory/GenieContentValues;>;"
    invoke-static/range {v17 .. v17}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->reset(Ljava/lang/StringBuilder;)V

    .line 231
    invoke-static/range {v18 .. v18}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->reset(Ljava/lang/StringBuilder;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v4, "_"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;

    invoke-virtual {v4}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v4, "_"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mKey:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-virtual {v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v4, "=?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5, v10}, Lcom/genie_connect/common/platform/db/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 247
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mKey:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mJson:Lcom/genie_connect/common/platform/json/IJsonObject;

    invoke-virtual/range {v4 .. v9}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;->putSQLValues(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;Ljava/lang/String;Lcom/genie_connect/common/platform/json/IJsonObject;Ljava/util/List;)V

    .line 248
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 251
    .end local v9    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/common/db/entityfactory/GenieContentValues;>;"
    .end local v12    # "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;>;"
    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 252
    .local v19, "table1":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    .line 253
    .local v14, "cv1":Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v4, v14}, Lcom/genie_connect/common/platform/db/IDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;)J

    goto :goto_2

    .line 257
    .end local v7    # "id":Ljava/lang/String;
    .end local v10    # "args":[Ljava/lang/String;
    .end local v13    # "cv":Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    .end local v14    # "cv1":Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "sbTable":Ljava/lang/StringBuilder;
    .end local v18    # "sbWhere":Ljava/lang/StringBuilder;
    .end local v19    # "table1":Ljava/lang/String;
    .end local v20    # "updates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/genie_connect/common/db/entityfactory/GenieContentValues;>;>;"
    :cond_3
    return-void
.end method

.method public fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;)V
    .locals 1
    .param p1, "o"    # Lcom/genie_connect/common/platform/json/IJsonObject;

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;Z)V

    .line 269
    return-void
.end method

.method public fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;Z)V
    .locals 2
    .param p1, "o"    # Lcom/genie_connect/common/platform/json/IJsonObject;
    .param p2, "setFields"    # Z

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->parseAttributes()V

    .line 283
    if-eqz p2, :cond_0

    .line 284
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mAtomicAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->setFieldsFromJson(Lcom/genie_connect/common/platform/json/IJsonObject;Ljava/lang/Iterable;Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void

    .line 286
    :cond_0
    iput-object p1, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mJson:Lcom/genie_connect/common/platform/json/IJsonObject;

    .line 289
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mJson:Lcom/genie_connect/common/platform/json/IJsonObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mJson:Lcom/genie_connect/common/platform/json/IJsonObject;

    const-string v1, "id"

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mJson:Lcom/genie_connect/common/platform/json/IJsonObject;

    const-string v1, "id"

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->setId(Ljava/lang/Long;)V

    goto :goto_0

    .line 292
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->setId(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    return-object v0
.end method

.method public abstract getEntityName()Ljava/lang/String;
.end method

.method public getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 106
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getJson()Lcom/genie_connect/common/platform/json/IJsonObject;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mJson:Lcom/genie_connect/common/platform/json/IJsonObject;

    return-object v0
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public isThisEntityPesistable(Ljava/lang/String;Lcom/genie_connect/common/platform/json/IJsonObject;)Z
    .locals 2
    .param p1, "entityType"    # Ljava/lang/String;
    .param p2, "obj"    # Lcom/genie_connect/common/platform/json/IJsonObject;

    .prologue
    .line 362
    if-nez p2, :cond_0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ EGENTIY: Not persisting null object! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/utils/CommonLog;->warn(Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    .line 367
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected logContent(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;)V
    .locals 5
    .param p1, "row"    # Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    .prologue
    .line 372
    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->valueSet()Ljava/util/Set;

    move-result-object v2

    .line 374
    .local v2, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;>;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*************** "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ***************"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->info(Ljava/lang/String;)V

    .line 376
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 378
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    iget-object v3, v3, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;>;"
    :cond_1
    const-string v3, "******************************"

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->info(Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method protected parseAttributes()V
    .locals 7

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 87
    .local v1, "attr":Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getType()Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->ARRAY:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    if-ne v4, v5, :cond_1

    .line 88
    iget-object v5, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mArrayAttributes:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v1

    check-cast v4, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_1
    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->isKey()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    iput-object v1, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mKey:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 86
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getType()Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->ARRAY_EMBEDDED:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    if-ne v4, v5, :cond_2

    .line 90
    iget-object v5, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mArrayEmbeddedAttributes:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v1

    check-cast v4, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 92
    :cond_2
    iget-object v4, p0, Lcom/genie_connect/common/db/entityfactory/EGEntity;->mAtomicAttributes:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 99
    .end local v1    # "attr":Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    :cond_3
    return-void
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 111
    return-void
.end method

.class public Lcom/urbanairship/json/JsonValue;
.super Ljava/lang/Object;
.source "JsonValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/json/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final NULL:Lcom/urbanairship/json/JsonValue;


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/urbanairship/json/JsonValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .line 546
    new-instance v0, Lcom/urbanairship/json/JsonValue$1;

    invoke-direct {v0}, Lcom/urbanairship/json/JsonValue$1;-><init>()V

    sput-object v0, Lcom/urbanairship/json/JsonValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public static parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    .locals 4
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {p0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    sget-object v2, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .line 236
    :goto_0
    return-object v2

    .line 233
    :cond_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 236
    .local v1, "tokener":Lorg/json/JSONTokener;
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/urbanairship/json/JsonException;

    const-string v3, "Unable to parse string"

    invoke-direct {v2, v3, v0}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    .locals 7
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 353
    if-eqz p0, :cond_0

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v4, :cond_1

    .line 354
    :cond_0
    sget-object p0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .line 415
    .end local p0    # "object":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 357
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v4, p0, Lcom/urbanairship/json/JsonValue;

    if-eqz v4, :cond_2

    .line 358
    check-cast p0, Lcom/urbanairship/json/JsonValue;

    goto :goto_0

    .line 361
    :cond_2
    instance-of v4, p0, Lcom/urbanairship/json/JsonMap;

    if-nez v4, :cond_3

    instance-of v4, p0, Lcom/urbanairship/json/JsonList;

    if-nez v4, :cond_3

    instance-of v4, p0, Ljava/lang/Boolean;

    if-nez v4, :cond_3

    instance-of v4, p0, Ljava/lang/Integer;

    if-nez v4, :cond_3

    instance-of v4, p0, Ljava/lang/Long;

    if-nez v4, :cond_3

    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 367
    :cond_3
    new-instance v3, Lcom/urbanairship/json/JsonValue;

    invoke-direct {v3, p0}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto :goto_0

    .line 370
    :cond_4
    instance-of v4, p0, Lcom/urbanairship/json/JsonSerializable;

    if-eqz v4, :cond_6

    .line 371
    check-cast p0, Lcom/urbanairship/json/JsonSerializable;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/urbanairship/json/JsonSerializable;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    .line 372
    .local v3, "jsonValue":Lcom/urbanairship/json/JsonValue;
    if-nez v3, :cond_5

    sget-object v3, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .end local v3    # "jsonValue":Lcom/urbanairship/json/JsonValue;
    :cond_5
    move-object p0, v3

    goto :goto_0

    .line 375
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v4, p0, Ljava/lang/Byte;

    if-nez v4, :cond_7

    instance-of v4, p0, Ljava/lang/Short;

    if-eqz v4, :cond_8

    .line 376
    :cond_7
    new-instance v3, Lcom/urbanairship/json/JsonValue;

    check-cast p0, Ljava/lang/Number;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto :goto_0

    .line 379
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_8
    instance-of v4, p0, Ljava/lang/Character;

    if-eqz v4, :cond_9

    move-object v0, p0

    .line 380
    check-cast v0, Ljava/lang/Character;

    .line 381
    .local v0, "character":Ljava/lang/Character;
    new-instance p0, Lcom/urbanairship/json/JsonValue;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 384
    .end local v0    # "character":Ljava/lang/Character;
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_9
    instance-of v4, p0, Ljava/lang/Float;

    if-eqz v4, :cond_a

    .line 385
    new-instance v3, Lcom/urbanairship/json/JsonValue;

    check-cast p0, Ljava/lang/Number;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto :goto_0

    .line 388
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_a
    instance-of v4, p0, Ljava/lang/Double;

    if-eqz v4, :cond_d

    move-object v1, p0

    .line 389
    check-cast v1, Ljava/lang/Double;

    .line 390
    .local v1, "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 391
    :cond_b
    new-instance v4, Lcom/urbanairship/json/JsonException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Double value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 394
    :cond_c
    new-instance v3, Lcom/urbanairship/json/JsonValue;

    invoke-direct {v3, p0}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    move-object p0, v3

    goto/16 :goto_0

    .line 398
    .end local v1    # "d":Ljava/lang/Double;
    :cond_d
    :try_start_0
    instance-of v4, p0, Lorg/json/JSONArray;

    if-eqz v4, :cond_e

    .line 399
    check-cast p0, Lorg/json/JSONArray;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapJSONArray(Lorg/json/JSONArray;)Lcom/urbanairship/json/JsonValue;

    move-result-object p0

    goto/16 :goto_0

    .line 402
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_e
    instance-of v4, p0, Lorg/json/JSONObject;

    if-eqz v4, :cond_f

    .line 403
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapJSONObject(Lorg/json/JSONObject;)Lcom/urbanairship/json/JsonValue;

    move-result-object p0

    goto/16 :goto_0

    .line 406
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_f
    instance-of v4, p0, Ljava/util/Collection;

    if-eqz v4, :cond_10

    .line 407
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapCollection(Ljava/util/Collection;)Lcom/urbanairship/json/JsonValue;

    move-result-object p0

    goto/16 :goto_0

    .line 410
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 411
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapArray(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object p0

    goto/16 :goto_0

    .line 414
    :cond_11
    instance-of v4, p0, Ljava/util/Map;

    if-eqz v4, :cond_12

    .line 415
    check-cast p0, Ljava/util/Map;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrapMap(Ljava/util/Map;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto/16 :goto_0

    .line 417
    :catch_0
    move-exception v2

    .line 418
    .local v2, "exception":Lcom/urbanairship/json/JsonException;
    throw v2

    .line 419
    .end local v2    # "exception":Lcom/urbanairship/json/JsonException;
    :catch_1
    move-exception v2

    .line 420
    .local v2, "exception":Ljava/lang/Exception;
    new-instance v4, Lcom/urbanairship/json/JsonException;

    const-string v5, "Failed to wrap value."

    invoke-direct {v4, v5, v2}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 423
    .end local v2    # "exception":Ljava/lang/Exception;
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_12
    new-instance v4, Lcom/urbanairship/json/JsonException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal object: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static wrap(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # Lcom/urbanairship/json/JsonValue;

    .prologue
    .line 329
    :try_start_0
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 331
    .end local p1    # "defaultValue":Lcom/urbanairship/json/JsonValue;
    :goto_0
    return-object p1

    .line 330
    .restart local p1    # "defaultValue":Lcom/urbanairship/json/JsonValue;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "ex":Lcom/urbanairship/json/JsonException;
    goto :goto_0
.end method

.method private static wrapArray(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 435
    .local v1, "length":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 437
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/json/JsonValue;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 438
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    new-instance v3, Lcom/urbanairship/json/JsonValue;

    new-instance v4, Lcom/urbanairship/json/JsonList;

    invoke-direct {v4, v2}, Lcom/urbanairship/json/JsonList;-><init>(Ljava/util/List;)V

    invoke-direct {v3, v4}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    return-object v3
.end method

.method private static wrapCollection(Ljava/util/Collection;)Lcom/urbanairship/json/JsonValue;
    .locals 5
    .param p0, "collection"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/json/JsonValue;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 455
    .local v2, "obj":Ljava/lang/Object;
    invoke-static {v2}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 458
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v3, Lcom/urbanairship/json/JsonValue;

    new-instance v4, Lcom/urbanairship/json/JsonList;

    invoke-direct {v4, v1}, Lcom/urbanairship/json/JsonList;-><init>(Ljava/util/List;)V

    invoke-direct {v3, v4}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    return-object v3
.end method

.method private static wrapJSONArray(Lorg/json/JSONArray;)Lcom/urbanairship/json/JsonValue;
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 490
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/json/JsonValue;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 493
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    sget-object v2, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 501
    :cond_1
    new-instance v2, Lcom/urbanairship/json/JsonValue;

    new-instance v3, Lcom/urbanairship/json/JsonList;

    invoke-direct {v3, v1}, Lcom/urbanairship/json/JsonList;-><init>(Ljava/util/List;)V

    invoke-direct {v2, v3}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method

.method private static wrapJSONObject(Lorg/json/JSONObject;)Lcom/urbanairship/json/JsonValue;
    .locals 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 512
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 514
    .local v1, "jsonValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 515
    :cond_0
    new-instance v3, Lcom/urbanairship/json/JsonValue;

    invoke-direct {v3, v1}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    .line 530
    :goto_0
    return-object v3

    .line 518
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 519
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 520
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 522
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 523
    sget-object v3, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 527
    :cond_2
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 530
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    new-instance v3, Lcom/urbanairship/json/JsonValue;

    new-instance v4, Lcom/urbanairship/json/JsonMap;

    invoke-direct {v4, v1}, Lcom/urbanairship/json/JsonMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v3, v4}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static wrapMap(Ljava/util/Map;)Lcom/urbanairship/json/JsonValue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/urbanairship/json/JsonValue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 471
    .local v2, "jsonValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 472
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 473
    new-instance v3, Lcom/urbanairship/json/JsonException;

    const-string v4, "Only string map keys are accepted."

    invoke-direct {v3, v4}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 476
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 479
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_1
    new-instance v3, Lcom/urbanairship/json/JsonValue;

    new-instance v4, Lcom/urbanairship/json/JsonMap;

    invoke-direct {v4, v2}, Lcom/urbanairship/json/JsonMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v3, v4}, Lcom/urbanairship/json/JsonValue;-><init>(Ljava/lang/Object;)V

    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 244
    instance-of v1, p1, Lcom/urbanairship/json/JsonValue;

    if-nez v1, :cond_0

    .line 245
    const/4 v1, 0x0

    .line 254
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 248
    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 250
    .local v0, "o":Lcom/urbanairship/json/JsonValue;
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v1

    goto :goto_0

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    iget-object v2, v0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBoolean(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    .end local p1    # "defaultValue":Z
    :cond_0
    :goto_0
    return p1

    .line 179
    .restart local p1    # "defaultValue":Z
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0
.end method

.method public getDouble(D)D
    .locals 1
    .param p1, "defaultValue"    # D

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    .end local p1    # "defaultValue":D
    :cond_0
    :goto_0
    return-wide p1

    .line 134
    .restart local p1    # "defaultValue":D
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .line 112
    .restart local p1    # "defaultValue":I
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public getList()Lcom/urbanairship/json/JsonList;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/urbanairship/json/JsonList;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Lcom/urbanairship/json/JsonList;

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLong(J)J
    .locals 1
    .param p1, "defaultValue"    # J

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .line 156
    .restart local p1    # "defaultValue":J
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method public getMap()Lcom/urbanairship/json/JsonMap;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/urbanairship/json/JsonMap;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Lcom/urbanairship/json/JsonMap;

    .line 209
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/json/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 98
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 259
    const/16 v0, 0x11

    .line 260
    .local v0, "result":I
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 263
    :cond_0
    return v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const-string v1, "null"

    .line 294
    :goto_0
    return-object v1

    .line 278
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v1, v1, Lcom/urbanairship/json/JsonMap;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v1, v1, Lcom/urbanairship/json/JsonList;

    if-eqz v1, :cond_4

    .line 287
    :cond_3
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 290
    :cond_4
    iget-object v1, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "JsonValue - Failed to create JSON String."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    const-string v1, ""

    goto :goto_0
.end method

.method write(Lorg/json/JSONStringer;)V
    .locals 1
    .param p1, "stringer"    # Lorg/json/JSONStringer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 317
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/urbanairship/json/JsonList;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Lcom/urbanairship/json/JsonList;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonList;->write(Lorg/json/JSONStringer;)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/urbanairship/json/JsonMap;

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    check-cast v0, Lcom/urbanairship/json/JsonMap;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonMap;->write(Lorg/json/JSONStringer;)V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/json/JsonValue;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    return-void
.end method

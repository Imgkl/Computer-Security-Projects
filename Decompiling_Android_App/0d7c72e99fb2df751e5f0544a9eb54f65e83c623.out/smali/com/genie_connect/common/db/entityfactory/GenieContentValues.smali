.class public final Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
.super Ljava/lang/Object;
.source "GenieContentValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;,
        Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ContentValues"


# instance fields
.field private mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;)V
    .locals 2
    .param p1, "from"    # Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    .line 101
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 268
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 105
    instance-of v0, p1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    check-cast p1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v2, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    .line 481
    .local v1, "entry":Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;
    if-nez v1, :cond_0

    .line 482
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 491
    :goto_0
    return-object v2

    .line 485
    :cond_0
    iget-object v2, v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v2, v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 488
    iget-object v2, v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 490
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ Cannot cast value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to a Boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 491
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAsByte(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 398
    iget-object v3, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    .line 400
    .local v2, "entry":Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;
    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    move-object v4, v3

    .line 411
    :goto_1
    return-object v4

    :cond_0
    move-object v3, v4

    .line 400
    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 404
    :try_start_1
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 405
    :catch_1
    move-exception v1

    .line 406
    .local v1, "e2":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Cannot parse Byte value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " at key "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    goto :goto_1

    .line 410
    .end local v1    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Cannot cast value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to a Byte"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAsByteArray(Ljava/lang/String;)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 505
    iget-object v2, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    .line 507
    .local v0, "entry":Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;
    if-nez v0, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-object v1

    .line 511
    :cond_1
    iget-object v2, v0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_0

    .line 512
    iget-object v1, v0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    goto :goto_0
.end method

.method public getAsDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 425
    iget-object v3, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    .line 427
    .local v2, "entry":Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;
    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    move-object v4, v3

    .line 438
    :goto_1
    return-object v4

    :cond_0
    move-object v3, v4

    .line 427
    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 431
    :try_start_1
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 432
    :catch_1
    move-exception v1

    .line 433
    .local v1, "e2":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Cannot parse Double value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " at key "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    goto :goto_1

    .line 437
    .end local v1    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Cannot cast value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to a Double"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAsFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 452
    iget-object v3, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    .line 454
    .local v2, "entry":Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;
    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    move-object v4, v3

    .line 465
    :goto_1
    return-object v4

    :cond_0
    move-object v3, v4

    .line 454
    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 458
    :try_start_1
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 459
    :catch_1
    move-exception v1

    .line 460
    .local v1, "e2":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Cannot parse Float value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " at key "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    goto :goto_1

    .line 464
    .end local v1    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Cannot cast value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to a Float"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 344
    iget-object v3, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    .line 346
    .local v2, "entry":Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;
    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    move-object v4, v3

    .line 357
    :goto_1
    return-object v4

    :cond_0
    move-object v3, v4

    .line 346
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 350
    :try_start_1
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 351
    :catch_1
    move-exception v1

    .line 352
    .local v1, "e2":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Cannot parse Integer value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " at key "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    goto :goto_1

    .line 356
    .end local v1    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Cannot cast value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to a Integer"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAsLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 317
    iget-object v3, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    .line 319
    .local v2, "entry":Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;
    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    move-object v4, v3

    .line 330
    :goto_1
    return-object v4

    :cond_0
    move-object v3, v4

    .line 319
    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 323
    :try_start_1
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 324
    :catch_1
    move-exception v1

    .line 325
    .local v1, "e2":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Cannot parse Long value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " at key "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    goto :goto_1

    .line 329
    .end local v1    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Cannot cast value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to a Long"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAsShort(Ljava/lang/String;)Ljava/lang/Short;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 371
    iget-object v3, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    .line 373
    .local v2, "entry":Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;
    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    move-object v4, v3

    .line 384
    :goto_1
    return-object v4

    :cond_0
    move-object v3, v4

    .line 373
    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 377
    :try_start_1
    iget-object v3, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 378
    :catch_1
    move-exception v1

    .line 379
    .local v1, "e2":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Cannot parse Short value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " at key "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    goto :goto_1

    .line 383
    .end local v1    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Cannot cast value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to a Short"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    .line 305
    .local v0, "entry":Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    iget-object v1, v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryType(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 528
    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    .line 530
    .local v0, "entry":Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;
    if-eqz v0, :cond_0

    .line 531
    iget-object v1, v0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->type:Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

    .line 534
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;->EntryTypeUnknown:Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

    goto :goto_0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;->EntryTypeBoolean:Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

    invoke-direct {v1, p0, p2, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/Object;Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Byte;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Byte;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;->EntryTypeByte:Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

    invoke-direct {v1, p0, p2, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/Object;Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;->EntryTypeDouble:Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

    invoke-direct {v1, p0, p2, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/Object;Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;->EntryTypeFloat:Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

    invoke-direct {v1, p0, p2, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/Object;Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;->EntryTypeInt:Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

    invoke-direct {v1, p0, p2, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/Object;Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;->EntryTypeLong:Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

    invoke-direct {v1, p0, p2, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/Object;Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Short;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Short;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;->EntryTypeShort:Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

    invoke-direct {v1, p0, p2, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/Object;Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;->EntryTypeString:Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

    invoke-direct {v1, p0, p2, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/Object;Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 231
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    new-instance v1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;->EntryTypeByteArray:Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

    invoke-direct {v1, p0, p2, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/Object;Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public putAll(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;)V
    .locals 2
    .param p1, "other"    # Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 136
    return-void
.end method

.method public putNull(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 566
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 568
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 571
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public valueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

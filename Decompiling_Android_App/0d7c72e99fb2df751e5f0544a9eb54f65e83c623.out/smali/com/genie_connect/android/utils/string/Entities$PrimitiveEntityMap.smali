.class Lcom/genie_connect/android/utils/string/Entities$PrimitiveEntityMap;
.super Ljava/lang/Object;
.source "Entities.java"

# interfaces
.implements Lcom/genie_connect/android/utils/string/Entities$EntityMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/utils/string/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrimitiveEntityMap"
.end annotation


# instance fields
.field private mapNameToValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mapValueToName:Lcom/genie_connect/android/utils/string/Entities$IntHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/utils/string/Entities$PrimitiveEntityMap;->mapNameToValue:Ljava/util/Map;

    .line 445
    new-instance v0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;

    invoke-direct {v0}, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/utils/string/Entities$PrimitiveEntityMap;->mapValueToName:Lcom/genie_connect/android/utils/string/Entities$IntHashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/Entities$PrimitiveEntityMap;->mapNameToValue:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/Entities$PrimitiveEntityMap;->mapValueToName:Lcom/genie_connect/android/utils/string/Entities$IntHashMap;

    invoke-virtual {v0, p2, p1}, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 454
    return-void
.end method

.method public name(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lcom/genie_connect/android/utils/string/Entities$PrimitiveEntityMap;->mapValueToName:Lcom/genie_connect/android/utils/string/Entities$IntHashMap;

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/utils/string/Entities$IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public value(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 469
    iget-object v1, p0, Lcom/genie_connect/android/utils/string/Entities$PrimitiveEntityMap;->mapNameToValue:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 470
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 471
    const/4 v1, -0x1

    .line 473
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

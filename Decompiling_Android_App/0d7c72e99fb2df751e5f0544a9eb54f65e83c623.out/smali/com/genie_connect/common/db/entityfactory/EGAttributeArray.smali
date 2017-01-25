.class public final Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;
.super Lcom/genie_connect/common/db/entityfactory/EGAttribute;
.source "EGAttributeArray.java"


# instance fields
.field private attr:Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attr"    # Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    .prologue
    .line 42
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->ARRAY:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {p0, p1, v0}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    .line 43
    iput-object p2, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;->attr:Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    .line 44
    return-void
.end method


# virtual methods
.method public putSQLValues(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;Ljava/lang/String;Lcom/genie_connect/common/platform/json/IJsonObject;Ljava/util/List;)V
    .locals 13
    .param p1, "parentName"    # Ljava/lang/String;
    .param p2, "parentKey"    # Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "json"    # Lcom/genie_connect/common/platform/json/IJsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/genie_connect/common/db/entityfactory/EGAttribute;",
            "Ljava/lang/String;",
            "Lcom/genie_connect/common/platform/json/IJsonObject;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p5, "rows":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/entityfactory/GenieContentValues;>;"
    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;->name:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONArray(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v11

    .line 50
    .local v11, "array":Lcom/genie_connect/common/platform/json/IJsonArray;
    if-eqz v11, :cond_1

    .line 52
    invoke-interface {v11}, Lcom/genie_connect/common/platform/json/IJsonArray;->length()I

    move-result v12

    .line 54
    .local v12, "arraySize":I
    const/4 v3, 0x0

    .local v3, "seqNo":I
    :goto_0
    if-ge v3, v12, :cond_1

    .line 55
    invoke-interface {v11, v3}, Lcom/genie_connect/common/platform/json/IJsonArray;->optJSONObject(I)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    .line 56
    .local v2, "o":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v2, :cond_0

    .line 57
    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;->attr:Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    iget-object v7, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;->name:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;->getSQLLinkingRow(Lcom/genie_connect/common/platform/json/IJsonObject;ILjava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iget-object v4, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;->attr:Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    invoke-interface {v11, v3}, Lcom/genie_connect/common/platform/json/IJsonArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;->name:Ljava/lang/String;

    move v6, v3

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v10}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;->getSQLLinkingRow(Ljava/lang/String;ILjava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    .end local v2    # "o":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v3    # "seqNo":I
    .end local v12    # "arraySize":I
    :cond_1
    return-void
.end method

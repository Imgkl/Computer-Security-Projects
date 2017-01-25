.class public final Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;
.super Lcom/genie_connect/common/db/entityfactory/EGAttribute;
.source "EGAttributeArrayEmbedded.java"


# instance fields
.field private mAttrs:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field private mKey:Lcom/genie_connect/common/db/entityfactory/EGAttribute;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # [Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .param p3, "key"    # Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .prologue
    .line 43
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->ARRAY_EMBEDDED:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {p0, p1, v0}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    .line 44
    iput-object p2, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;->mAttrs:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 45
    iput-object p3, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;->mKey:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 46
    return-void
.end method


# virtual methods
.method public putSQLValues(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;Ljava/lang/String;Lcom/genie_connect/common/platform/json/IJsonObject;Ljava/util/List;)V
    .locals 14
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
    .line 49
    .local p5, "rows":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/entityfactory/GenieContentValues;>;"
    iget-object v11, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;->name:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONArray(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v2

    .line 51
    .local v2, "array":Lcom/genie_connect/common/platform/json/IJsonArray;
    if-eqz v2, :cond_3

    .line 52
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v10, "sb":Ljava/lang/StringBuilder;
    iget-object v11, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;->mAttrs:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    array-length v5, v11

    .line 58
    .local v5, "attrLength":I
    invoke-interface {v2}, Lcom/genie_connect/common/platform/json/IJsonArray;->length()I

    move-result v3

    .line 60
    .local v3, "arraySize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 61
    invoke-interface {v2, v8}, Lcom/genie_connect/common/platform/json/IJsonArray;->optJSONObject(I)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v7

    .line 62
    .local v7, "embedded":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v7, :cond_1

    .line 63
    new-instance v6, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    invoke-direct {v6}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;-><init>()V

    .line 65
    .local v6, "cv":Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    const/4 v9, 0x0

    .local v9, "l":I
    :goto_1
    if-ge v9, v5, :cond_0

    .line 66
    iget-object v11, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;->mAttrs:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    aget-object v4, v11, v9

    .line 67
    .local v4, "attr":Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v7, v6, v11}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->putSQLValue(Lcom/genie_connect/common/platform/json/IJsonObject;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/String;)V

    .line 65
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 70
    .end local v4    # "attr":Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 71
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getType()Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    move-result-object v11

    sget-object v12, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    if-ne v11, v12, :cond_2

    .line 76
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_2
    const-string v11, "seqNo"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v6    # "cv":Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    .end local v9    # "l":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 78
    .restart local v6    # "cv":Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    .restart local v9    # "l":I
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 88
    .end local v3    # "arraySize":I
    .end local v5    # "attrLength":I
    .end local v6    # "cv":Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    .end local v7    # "embedded":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v8    # "i":I
    .end local v9    # "l":I
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

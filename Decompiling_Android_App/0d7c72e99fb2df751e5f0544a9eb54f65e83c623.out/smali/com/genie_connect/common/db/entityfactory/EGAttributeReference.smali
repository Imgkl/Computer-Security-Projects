.class public Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;
.super Lcom/genie_connect/common/db/entityfactory/EGAttribute;
.source "EGAttributeReference.java"


# static fields
.field private static final SEQ_NO:Ljava/lang/String; = "seqNo"


# instance fields
.field private key:Lcom/genie_connect/common/db/entityfactory/EGAttribute;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .prologue
    .line 39
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->REFERENCE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {p0, p1, v0}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    .line 40
    iput-object p2, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;->key:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 41
    return-void
.end method

.method private static prepareRow(ILjava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    .locals 6
    .param p0, "seqNo"    # I
    .param p1, "parentName"    # Ljava/lang/String;
    .param p2, "parentKey"    # Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .param p3, "parentId"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    invoke-direct {v0}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;-><init>()V

    .line 78
    .local v0, "row":Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    const-string v2, "seqNo"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getType()Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    if-ne v2, v3, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-object v0

    .line 88
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method


# virtual methods
.method public getKey()Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;->key:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    return-object v0
.end method

.method public getSQLLinkingRow(Lcom/genie_connect/common/platform/json/IJsonObject;ILjava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    .locals 2
    .param p1, "json"    # Lcom/genie_connect/common/platform/json/IJsonObject;
    .param p2, "seqNo"    # I
    .param p3, "parentName"    # Ljava/lang/String;
    .param p4, "parentKey"    # Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .param p5, "parentId"    # Ljava/lang/String;
    .param p6, "child"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p2, p3, p4, p5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;->prepareRow(ILjava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    move-result-object v0

    .line 45
    .local v0, "row":Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;->key:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-virtual {v1, p1, v0, p6}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->putSQLValue(Lcom/genie_connect/common/platform/json/IJsonObject;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/String;)V

    .line 46
    return-object v0
.end method

.method public getSQLLinkingRow(Ljava/lang/String;ILjava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "seqNo"    # I
    .param p3, "parentName"    # Ljava/lang/String;
    .param p4, "parentKey"    # Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .param p5, "parentId"    # Ljava/lang/String;
    .param p6, "child"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p2, p3, p4, p5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;->prepareRow(ILjava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    move-result-object v0

    .line 51
    .local v0, "row":Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;->key:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-virtual {v1, p1, v0, p6}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->putSQLValue(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/String;)V

    .line 52
    return-object v0
.end method

.method public putSQLValue(Lcom/genie_connect/common/platform/json/IJsonObject;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Lcom/genie_connect/common/platform/json/IJsonObject;
    .param p2, "row"    # Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    .param p3, "nameOverride"    # Ljava/lang/String;

    .prologue
    .line 58
    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;->name:Ljava/lang/String;

    .line 59
    .local v1, "fname":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v0

    .line 61
    .local v0, "embedded":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v0, :cond_0

    .line 62
    iget-object v2, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;->key:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-virtual {v2, v0, p2, v1}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->putSQLValue(Lcom/genie_connect/common/platform/json/IJsonObject;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void

    .end local v0    # "embedded":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v1    # "fname":Ljava/lang/String;
    :cond_1
    move-object v1, p3

    .line 58
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EGAttributeReference] : Type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;->type:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' Name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

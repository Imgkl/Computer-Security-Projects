.class public Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;
.super Lcom/genie_connect/common/db/entityfactory/EGAttribute;
.source "EGAttributeEmbedded.java"


# instance fields
.field private attrs:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .prologue
    .line 39
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->EMBEDDED:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {p0, p1, v0}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    .line 40
    iput-object p2, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;->attrs:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    .line 41
    return-void
.end method


# virtual methods
.method public getAttrs()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;->attrs:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    return-object v0
.end method

.method public putSQLValue(Lcom/genie_connect/common/platform/json/IJsonObject;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Lcom/genie_connect/common/platform/json/IJsonObject;
    .param p2, "row"    # Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v5, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;->name:Ljava/lang/String;

    invoke-interface {p1, v5}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    .line 50
    .local v2, "embedded":Lcom/genie_connect/common/platform/json/IJsonObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;->attrs:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    array-length v1, v5

    .line 54
    .local v1, "attrLength":I
    if-eqz v2, :cond_0

    .line 56
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 57
    iget-object v5, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;->attrs:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    aget-object v0, v5, v3

    .line 59
    .local v0, "attr":Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 60
    iget-object v5, p0, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, p2, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;->putSQLValue(Lcom/genie_connect/common/platform/json/IJsonObject;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/String;)V

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "attr":Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

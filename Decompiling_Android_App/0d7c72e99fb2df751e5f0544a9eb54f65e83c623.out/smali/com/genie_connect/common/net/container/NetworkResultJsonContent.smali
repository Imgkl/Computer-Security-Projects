.class public Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
.super Lcom/genie_connect/common/net/container/NetworkResultGm;
.source "NetworkResultJsonContent.java"


# instance fields
.field private mJsonArray:Lcom/genie_connect/common/platform/json/IJsonArray;

.field private mJsonObject:Lcom/genie_connect/common/platform/json/IJsonObject;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/net/utils/HttpAction;)V
    .locals 0
    .param p1, "action"    # Lcom/genie_connect/common/net/utils/HttpAction;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/genie_connect/common/net/container/NetworkResultGm;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getJsonArray()Lcom/genie_connect/common/platform/json/IJsonArray;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->mJsonArray:Lcom/genie_connect/common/platform/json/IJsonArray;

    return-object v0
.end method

.method public getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->mJsonObject:Lcom/genie_connect/common/platform/json/IJsonObject;

    return-object v0
.end method

.method public setJsonArray(Lcom/genie_connect/common/platform/json/IJsonArray;)V
    .locals 0
    .param p1, "jsonArray"    # Lcom/genie_connect/common/platform/json/IJsonArray;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->mJsonArray:Lcom/genie_connect/common/platform/json/IJsonArray;

    .line 55
    return-void
.end method

.method public setJsonObject(Lcom/genie_connect/common/platform/json/IJsonObject;)V
    .locals 0
    .param p1, "jsonObject"    # Lcom/genie_connect/common/platform/json/IJsonObject;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->mJsonObject:Lcom/genie_connect/common/platform/json/IJsonObject;

    .line 59
    return-void
.end method

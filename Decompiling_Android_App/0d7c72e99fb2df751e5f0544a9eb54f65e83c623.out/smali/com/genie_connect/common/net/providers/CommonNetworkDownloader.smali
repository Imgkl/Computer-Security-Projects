.class public Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;
.super Lcom/genie_connect/common/net/providers/CommonNetworkBase;
.source "CommonNetworkDownloader.java"


# instance fields
.field protected mJsonManager:Lcom/genie_connect/common/platform/json/IJsonManager;

.field protected mSettings:Lcom/genie_connect/common/platform/INetworkSettings;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/platform/INetworkSettings;Lcom/genie_connect/common/platform/json/IJsonManager;Lcom/genie_connect/common/net/OkUrlFactoryWrapper;)V
    .locals 0
    .param p1, "settings"    # Lcom/genie_connect/common/platform/INetworkSettings;
    .param p2, "manager"    # Lcom/genie_connect/common/platform/json/IJsonManager;
    .param p3, "urlFactory"    # Lcom/genie_connect/common/net/OkUrlFactoryWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p3}, Lcom/genie_connect/common/net/providers/CommonNetworkBase;-><init>(Lcom/genie_connect/common/platform/INetworkSettings;Lcom/genie_connect/common/net/OkUrlFactoryWrapper;)V

    .line 64
    iput-object p1, p0, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->mSettings:Lcom/genie_connect/common/platform/INetworkSettings;

    .line 65
    iput-object p2, p0, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->mJsonManager:Lcom/genie_connect/common/platform/json/IJsonManager;

    .line 66
    return-void
.end method

.method private getEntityNamesCSV([Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;
    .locals 6
    .param p1, "entities"    # [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 103
    .local v1, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public getEntityCount(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 11
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "dataversion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v3, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v6, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v3, v6}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 120
    .local v3, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->mSettings:Lcom/genie_connect/common/platform/INetworkSettings;

    invoke-interface {v7}, Lcom/genie_connect/common/platform/INetworkSettings;->getServerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/secure/rest/%s/rpc/count"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "urlString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->getOkUrlFactory()Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    move-result-object v6

    invoke-static {v5}, Lcom/genie_connect/common/net/providers/CommonNetworkUtils;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 125
    .local v4, "uc":Ljava/net/HttpURLConnection;
    iget-object v6, p0, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->mSettings:Lcom/genie_connect/common/platform/INetworkSettings;

    invoke-interface {v6, v4, p2}, Lcom/genie_connect/common/platform/INetworkSettings;->addRequestHeaders(Ljava/net/URLConnection;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 128
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 130
    .local v1, "responseCode":I
    invoke-static {v4, v1}, Lcom/genie_connect/common/net/providers/CommonNetworkUtils;->isRequestSuccessful(Ljava/net/HttpURLConnection;I)Z

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v1, v7}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 135
    invoke-virtual {v3}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    invoke-static {v4}, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->getResponseBodyAsString(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "res":Ljava/lang/String;
    iget-object v6, p0, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->mJsonManager:Lcom/genie_connect/common/platform/json/IJsonManager;

    invoke-interface {v6, v0}, Lcom/genie_connect/common/platform/json/IJsonManager;->createJsonObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    .line 139
    .local v2, "responseJson":Lcom/genie_connect/common/platform/json/IJsonObject;
    invoke-virtual {v3, v2}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setJsonObject(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 142
    .end local v0    # "res":Ljava/lang/String;
    .end local v2    # "responseJson":Lcom/genie_connect/common/platform/json/IJsonObject;
    :cond_0
    return-object v3
.end method

.method public getEntityCounts(Ljava/lang/Long;[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 11
    .param p1, "namespace"    # Ljava/lang/Long;
    .param p2, "entities"    # [Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "dataversion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v3, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    sget-object v6, Lcom/genie_connect/common/net/utils/HttpAction;->GET:Lcom/genie_connect/common/net/utils/HttpAction;

    invoke-direct {v3, v6}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 74
    .local v3, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->mSettings:Lcom/genie_connect/common/platform/INetworkSettings;

    invoke-interface {v7}, Lcom/genie_connect/common/platform/INetworkSettings;->getServerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/secure/rest/apps/%s/rpc/dataCounts?entities=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    invoke-direct {p0, p2}, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->getEntityNamesCSV([Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "urlString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->getOkUrlFactory()Lcom/genie_connect/common/net/OkUrlFactoryWrapper;

    move-result-object v6

    invoke-static {v5}, Lcom/genie_connect/common/net/providers/CommonNetworkUtils;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/genie_connect/common/net/OkUrlFactoryWrapper;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 79
    .local v4, "uc":Ljava/net/HttpURLConnection;
    iget-object v6, p0, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->mSettings:Lcom/genie_connect/common/platform/INetworkSettings;

    invoke-interface {v6, v4, p3}, Lcom/genie_connect/common/platform/INetworkSettings;->addRequestHeaders(Ljava/net/URLConnection;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 82
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 84
    .local v1, "responseCode":I
    invoke-static {v4, v1}, Lcom/genie_connect/common/net/providers/CommonNetworkUtils;->isRequestSuccessful(Ljava/net/HttpURLConnection;I)Z

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v1, v7}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setIsSuccesful(ZILcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;)V

    .line 89
    invoke-virtual {v3}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    invoke-static {v4}, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->getResponseBodyAsString(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "res":Ljava/lang/String;
    iget-object v6, p0, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->mJsonManager:Lcom/genie_connect/common/platform/json/IJsonManager;

    invoke-interface {v6, v0}, Lcom/genie_connect/common/platform/json/IJsonManager;->createJsonObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    .line 93
    .local v2, "responseJson":Lcom/genie_connect/common/platform/json/IJsonObject;
    invoke-virtual {v3, v2}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->setJsonObject(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 96
    .end local v0    # "res":Ljava/lang/String;
    .end local v2    # "responseJson":Lcom/genie_connect/common/platform/json/IJsonObject;
    :cond_0
    return-object v3
.end method

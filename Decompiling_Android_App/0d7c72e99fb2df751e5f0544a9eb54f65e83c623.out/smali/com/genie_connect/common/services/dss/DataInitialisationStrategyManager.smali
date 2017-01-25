.class public Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;
.super Ljava/lang/Object;
.source "DataInitialisationStrategyManager.java"


# instance fields
.field private mDownloader:Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;)V
    .locals 1
    .param p1, "downloader"    # Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;->mDownloader:Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;->mQueue:Ljava/util/LinkedList;

    .line 60
    return-void
.end method

.method private getCounts(Ljava/lang/Long;[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)Ljava/util/Map;
    .locals 16
    .param p1, "namespace"    # Ljava/lang/Long;
    .param p2, "types"    # [Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "dataversion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "[",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genie_connect/common/services/dss/StrategyCreationException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v4, "counts":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Integer;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;->mDownloader:Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2}, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->getEntityCounts(Ljava/lang/Long;[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v10

    .line 134
    .local v10, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v12

    if-nez v12, :cond_0

    .line 135
    const-string v12, "^STRATEGY: Error retrieving entity counts. Server returned code %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getResponseCode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    new-instance v12, Lcom/genie_connect/common/services/dss/StrategyCreationException;

    invoke-direct {v12}, Lcom/genie_connect/common/services/dss/StrategyCreationException;-><init>()V

    throw v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v10    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :catch_0
    move-exception v6

    .line 152
    .local v6, "ex":Ljava/io/IOException;
    const-string v12, "^STRATEGY: Network error retrieving entity counts"

    invoke-static {v12}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 153
    new-instance v12, Lcom/genie_connect/common/services/dss/StrategyCreationException;

    invoke-direct {v12}, Lcom/genie_connect/common/services/dss/StrategyCreationException;-><init>()V

    throw v12

    .line 139
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v10    # "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :cond_0
    :try_start_1
    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v12

    const-string v13, "data"

    invoke-interface {v12, v13}, Lcom/genie_connect/common/platform/json/IJsonObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 140
    :cond_1
    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v12

    if-nez v12, :cond_2

    const-string v9, "<null>"

    .line 141
    .local v9, "response":Ljava/lang/String;
    :goto_0
    const-string v12, "^STRATEGY: Error retrieving entity counts. Server returned response %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-static {v12, v13}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    new-instance v12, Lcom/genie_connect/common/services/dss/StrategyCreationException;

    invoke-direct {v12}, Lcom/genie_connect/common/services/dss/StrategyCreationException;-><init>()V

    throw v12

    .line 140
    .end local v9    # "response":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 145
    :cond_3
    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v12

    const-string v13, "data"

    invoke-interface {v12, v13}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v5

    .line 147
    .local v5, "dataObject":Lcom/genie_connect/common/platform/json/IJsonObject;
    move-object/from16 v3, p2

    .local v3, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v11, v3, v7

    .line 148
    .local v11, "type":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {v11}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Lcom/genie_connect/common/platform/json/IJsonObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 156
    .end local v11    # "type":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :cond_4
    return-object v4
.end method


# virtual methods
.method public declared-synchronized createStrategy([Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 17
    .param p1, "types"    # [Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "dataversion"    # Ljava/lang/String;
    .param p3, "namespace"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genie_connect/common/services/dss/StrategyCreationException;
        }
    .end annotation

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    array-length v4, v0

    if-nez v4, :cond_0

    .line 73
    new-instance v4, Lcom/genie_connect/common/services/dss/StrategyCreationException;

    const-string v16, "Tried to create a data init strategy with no types."

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/genie_connect/common/services/dss/StrategyCreationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 76
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;->getCounts(Ljava/lang/Long;[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 80
    .local v15, "totalAvailableCounts":Ljava/util/Map;, "Ljava/util/Map<Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;->mDownloader:Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/genie_connect/common/net/providers/CommonNetworkDownloader;->getOffsetLimit(Ljava/lang/Long;Z)I

    move-result v12

    .line 82
    .local v12, "itemMaxDataSize":I
    move-object/from16 v10, p1

    .local v10, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v13, v10

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v13, :cond_3

    aget-object v5, v10, v11

    .line 84
    .local v5, "type":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 86
    .local v8, "totalAvailable":I
    const/4 v6, 0x0

    .line 88
    .local v6, "currentOffset":I
    const/4 v9, 0x1

    .line 90
    .local v9, "firstOfType":Z
    :goto_1
    if-ge v6, v8, :cond_2

    .line 92
    sub-int v14, v8, v6

    .line 94
    .local v14, "remaining":I
    move v7, v12

    .line 96
    .local v7, "itemDataSize":I
    if-ge v14, v12, :cond_1

    .line 97
    move v7, v14

    .line 100
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;->mQueue:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    new-instance v4, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;

    invoke-direct/range {v4 .. v9}, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;IIIZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    add-int/2addr v6, v7

    .line 104
    const/4 v9, 0x0

    .line 105
    goto :goto_1

    .line 82
    .end local v7    # "itemDataSize":I
    .end local v14    # "remaining":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 107
    .end local v5    # "type":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v6    # "currentOffset":I
    .end local v8    # "totalAvailable":I
    .end local v9    # "firstOfType":Z
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getNextWorkItem()Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

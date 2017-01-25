.class public Lcom/genie_connect/common/services/dss/DataInitialisationOperation;
.super Ljava/lang/Object;
.source "DataInitialisationOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;,
        Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;
    }
.end annotation


# static fields
.field private static final NTHREDS:I = 0x5


# instance fields
.field private mBaseDir:Ljava/io/File;

.field private final mDb:Lcom/genie_connect/common/platform/db/IDatabase;

.field private final mEntityFactory:Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

.field private final mFileHandler:Lcom/genie_connect/common/io/FileHandler;

.field private mForceReportErrors:Z

.field private mIsMultiEventSelect:Z

.field private mJsonManager:Lcom/genie_connect/common/platform/json/IJsonManager;

.field private mNetworkPersister:Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

.field private final mNotificationHandler:Lcom/genie_connect/common/platform/INotificationHandler;

.field private final mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mProgressMax:I

.field private final mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mStrategyManager:Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;

.field private mUserCancelled:Z


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/platform/db/IDatabase;Lcom/genie_connect/common/platform/INotificationHandler;Lcom/genie_connect/common/platform/json/IJsonManager;Lcom/genie_connect/common/net/providers/CommonNetworkPersister;Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;Lcom/genie_connect/common/io/FileHandler;)V
    .locals 2
    .param p1, "db"    # Lcom/genie_connect/common/platform/db/IDatabase;
    .param p2, "notifcationHandler"    # Lcom/genie_connect/common/platform/INotificationHandler;
    .param p3, "jsonManager"    # Lcom/genie_connect/common/platform/json/IJsonManager;
    .param p4, "networkPersister"    # Lcom/genie_connect/common/net/providers/CommonNetworkPersister;
    .param p5, "strategyManager"    # Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;
    .param p6, "entityFactory"    # Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;
    .param p7, "fileHandler"    # Lcom/genie_connect/common/io/FileHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v1, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mUserCancelled:Z

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    iput-object p1, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mDb:Lcom/genie_connect/common/platform/db/IDatabase;

    .line 95
    iput-object p3, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mJsonManager:Lcom/genie_connect/common/platform/json/IJsonManager;

    .line 96
    iput-object p2, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mNotificationHandler:Lcom/genie_connect/common/platform/INotificationHandler;

    .line 97
    iput-object p4, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mNetworkPersister:Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

    .line 98
    iput-object p5, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mStrategyManager:Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;

    .line 99
    iput-object p6, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mEntityFactory:Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    .line 100
    iput-object p7, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mFileHandler:Lcom/genie_connect/common/io/FileHandler;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/genie_connect/common/services/dss/DataInitialisationOperation;I)V
    .locals 0
    .param p0, "x0"    # Lcom/genie_connect/common/services/dss/DataInitialisationOperation;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->setStatus(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/genie_connect/common/services/dss/DataInitialisationOperation;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/genie_connect/common/services/dss/DataInitialisationOperation;)Lcom/genie_connect/common/net/providers/CommonNetworkPersister;
    .locals 1
    .param p0, "x0"    # Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mNetworkPersister:Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

    return-object v0
.end method

.method static synthetic access$300(Lcom/genie_connect/common/services/dss/DataInitialisationOperation;Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/genie_connect/common/services/dss/DataInitialisationOperation;
    .param p1, "x1"    # Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->notifyEntityAction(Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/genie_connect/common/services/dss/DataInitialisationOperation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->shouldReportErrors()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/genie_connect/common/services/dss/DataInitialisationOperation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->hasUserCancelled()Z

    move-result v0

    return v0
.end method

.method private clearFolder()Z
    .locals 3

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mFileHandler:Lcom/genie_connect/common/io/FileHandler;

    iget-object v2, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/genie_connect/common/io/FileHandler;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const/4 v1, 0x1

    .line 108
    :goto_0
    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private entitiesDelete([Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V
    .locals 8
    .param p1, "types"    # [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 115
    move-object v0, p1

    .local v0, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 116
    .local v4, "type":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    iget-object v5, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mEntityFactory:Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-virtual {v5, v4}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v1

    .line 118
    .local v1, "entityInstance":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    if-nez v1, :cond_0

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ DSS: Factory failed to create instance of \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'. Did you forget to add it in?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ DSS: Check either the model files or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 124
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Factory failed to create instance of \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'. Did you forget to add it in?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 130
    :cond_0
    iget-object v5, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mDb:Lcom/genie_connect/common/platform/db/IDatabase;

    invoke-virtual {v1, v5}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteDeleteAll(Lcom/genie_connect/common/platform/db/IDatabase;)J

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "entityInstance":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .end local v4    # "type":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :cond_1
    return-void
.end method

.method private entitiesDownload([Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 5
    .param p1, "types"    # [Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "dataVersion"    # Ljava/lang/String;
    .param p3, "namespace"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genie_connect/common/services/dss/StrategyCreationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    .line 138
    iget-object v2, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mStrategyManager:Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;->createStrategy([Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 144
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 145
    new-instance v2, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;

    iget-object v3, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mStrategyManager:Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;

    invoke-direct {v2, p0, v3, p2}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;-><init>(Lcom/genie_connect/common/services/dss/DataInitialisationOperation;Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 149
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 150
    invoke-direct {p0}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->getStatus()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 151
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 154
    :cond_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 155
    :catch_0
    move-exception v2

    goto :goto_1

    .line 158
    :cond_2
    return-void
.end method

.method private entitiesPersist([Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/Long;)I
    .locals 24
    .param p1, "types"    # [Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "dataversion"    # Ljava/lang/String;
    .param p3, "namespace"    # Ljava/lang/Long;

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mFileHandler:Lcom/genie_connect/common/io/FileHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mBaseDir:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/genie_connect/common/io/FileHandler;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v11

    .line 163
    .local v11, "files":[Ljava/io/File;
    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    .line 164
    .local v12, "gson":Lcom/google/gson/Gson;
    const/16 v19, 0x4

    .line 166
    .local v19, "result":I
    const/4 v7, 0x0

    .line 167
    .local v7, "entityInstance":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    const/16 v18, 0x0

    .line 168
    .local v18, "reader":Lcom/google/gson/stream/JsonReader;
    const/4 v6, 0x0

    .line 169
    .local v6, "ele":Lcom/google/gson/JsonElement;
    const/4 v8, 0x0

    .line 170
    .local v8, "entityName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 172
    .local v10, "filePath":Ljava/lang/String;
    invoke-static {v11}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->sortFileArray([Ljava/io/File;)V

    .line 173
    const/4 v15, 0x0

    .line 176
    .local v15, "lastEntity":Ljava/lang/String;
    move-object v4, v11

    .local v4, "arr$":[Ljava/io/File;
    :try_start_0
    array-length v0, v4

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_6

    aget-object v9, v4, v13

    .line 177
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, ".json"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 178
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 179
    .local v17, "nameAr":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 180
    const/16 v20, 0x0

    aget-object v8, v17, v20

    .line 182
    if-nez v15, :cond_2

    .line 183
    move-object v15, v8

    .line 184
    sget-object v20, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;->COMMIT:Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->notifyEntityAction(Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_1
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 192
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ DSS: Parsing file  : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/genie_connect/common/utils/CommonLog;->debug(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mFileHandler:Lcom/genie_connect/common/io/FileHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/genie_connect/common/io/FileHandler;->readFileAsJson(Ljava/io/File;)Lcom/google/gson/stream/JsonReader;

    move-result-object v18

    .line 196
    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 198
    :cond_1
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 199
    const-class v20, Lcom/google/gson/JsonElement;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/google/gson/JsonElement;

    move-object v6, v0

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mJsonManager:Lcom/genie_connect/common/platform/json/IJsonManager;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/genie_connect/common/platform/json/IJsonManager;->createJsonObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v14

    .line 203
    .local v14, "jsonObject":Lcom/genie_connect/common/platform/json/IJsonObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mEntityFactory:Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    move-object/from16 v20, v0

    invoke-static {v8}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v7

    .line 207
    if-nez v7, :cond_3

    .line 208
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ DSS: Factory failed to create instance of \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\'. Did you forget to add it in?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 212
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ DSS: Check either the model files or "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-class v21, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 216
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Factory failed to create instance of \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'. Did you forget to add it in?"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v9    # "file":Ljava/io/File;
    .end local v13    # "i$":I
    .end local v14    # "jsonObject":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v16    # "len$":I
    .end local v17    # "nameAr":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 237
    .local v5, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ DSS: persistEntities() for \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' IOException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 239
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ DSS: The Source was "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 240
    const/16 v19, 0x8

    .line 242
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    invoke-static/range {v18 .. v18}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 260
    .end local v5    # "e":Ljava/io/IOException;
    :goto_3
    return v19

    .line 185
    .restart local v9    # "file":Ljava/io/File;
    .restart local v13    # "i$":I
    .restart local v16    # "len$":I
    .restart local v17    # "nameAr":[Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 186
    move-object v15, v8

    .line 187
    sget-object v20, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;->COMMIT:Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->notifyEntityAction(Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 243
    .end local v9    # "file":Ljava/io/File;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "nameAr":[Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 244
    .local v5, "e":Lcom/google/gson/JsonSyntaxException;
    :try_start_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ DSS: persistEntities() for \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' JsonSyntaxException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 246
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ DSS: The Source was "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    const/16 v19, 0x8

    .line 257
    invoke-static/range {v18 .. v18}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_3

    .line 222
    .end local v5    # "e":Lcom/google/gson/JsonSyntaxException;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v13    # "i$":I
    .restart local v14    # "jsonObject":Lcom/genie_connect/common/platform/json/IJsonObject;
    .restart local v16    # "len$":I
    .restart local v17    # "nameAr":[Ljava/lang/String;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mDb:Lcom/genie_connect/common/platform/db/IDatabase;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mDb:Lcom/genie_connect/common/platform/db/IDatabase;

    move-object/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-wide/from16 v2, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 249
    .end local v9    # "file":Ljava/io/File;
    .end local v13    # "i$":I
    .end local v14    # "jsonObject":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v16    # "len$":I
    .end local v17    # "nameAr":[Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 250
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ DSS: persistEntities() for \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' JSONException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 252
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ DSS: The Source was "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 253
    const/16 v19, 0x8

    .line 255
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 257
    invoke-static/range {v18 .. v18}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_3

    .line 228
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v13    # "i$":I
    .restart local v16    # "len$":I
    .restart local v17    # "nameAr":[Ljava/lang/String;
    :cond_4
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 229
    invoke-static/range {v18 .. v18}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 231
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 176
    .end local v17    # "nameAr":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 257
    .end local v9    # "file":Ljava/io/File;
    :cond_6
    invoke-static/range {v18 .. v18}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_3

    .end local v13    # "i$":I
    .end local v16    # "len$":I
    :catchall_0
    move-exception v20

    invoke-static/range {v18 .. v18}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v20
.end method

.method private getStatus()I
    .locals 2

    .prologue
    .line 264
    iget-object v1, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    monitor-exit v1

    return v0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hasUserCancelled()Z
    .locals 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mUserCancelled:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mNotificationHandler:Lcom/genie_connect/common/platform/INotificationHandler;

    iget-boolean v1, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mIsMultiEventSelect:Z

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/INotificationHandler;->notifyCancelled(Z)V

    .line 283
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyEntityAction(Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;
    .param p2, "entity"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mNotificationHandler:Lcom/genie_connect/common/platform/INotificationHandler;

    iget-object v1, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mProgressMax:I

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/genie_connect/common/platform/INotificationHandler;->notifyEntityAction(Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;Ljava/lang/String;II)V

    .line 328
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 329
    return-void
.end method

.method private setStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    const/4 v2, 0x4

    .line 332
    iget-object v1, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 335
    if-ne p1, v2, :cond_0

    .line 336
    :try_start_0
    monitor-exit v1

    .line 343
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 340
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 342
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private shouldReportErrors()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mIsMultiEventSelect:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mForceReportErrors:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sortFileArray([Ljava/io/File;)V
    .locals 0
    .param p0, "files"    # [Ljava/io/File;

    .prologue
    .line 348
    invoke-static {p0}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->sortFilesAlpahabetically([Ljava/io/File;)V

    .line 349
    return-void
.end method

.method private static sortFilesAlpahabetically([Ljava/io/File;)V
    .locals 1
    .param p0, "files"    # [Ljava/io/File;

    .prologue
    .line 352
    new-instance v0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$1;

    invoke-direct {v0}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$1;-><init>()V

    .line 359
    .local v0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 360
    return-void
.end method


# virtual methods
.method public initialiseDatabase(Ljava/lang/Long;[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;ZZILjava/io/File;)I
    .locals 5
    .param p1, "namespace"    # Ljava/lang/Long;
    .param p2, "types"    # [Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "dataVersion"    # Ljava/lang/String;
    .param p4, "isMultievent"    # Z
    .param p5, "forceReportErrors"    # Z
    .param p6, "progressMax"    # I
    .param p7, "baseDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/genie_connect/common/services/dss/StrategyCreationException;
        }
    .end annotation

    .prologue
    .line 295
    iput-boolean p4, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mIsMultiEventSelect:Z

    .line 296
    iput-boolean p5, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mForceReportErrors:Z

    .line 297
    iput p6, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mProgressMax:I

    .line 298
    iput-object p7, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mBaseDir:Ljava/io/File;

    .line 300
    invoke-direct {p0}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->clearFolder()Z

    .line 301
    invoke-direct {p0, p2, p3, p1}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->entitiesDownload([Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    iget-object v3, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v4, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mProgressMax:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 308
    invoke-direct {p0}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->getStatus()I

    move-result v2

    .line 311
    .local v2, "statusDownloading":I
    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 312
    move v0, v2

    .line 319
    .local v0, "finalResult":I
    :goto_0
    invoke-direct {p0}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->clearFolder()Z

    .line 320
    return v0

    .line 314
    .end local v0    # "finalResult":I
    :cond_0
    invoke-direct {p0, p2}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->entitiesDelete([Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    .line 315
    invoke-direct {p0, p2, p3, p1}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->entitiesPersist([Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/Long;)I

    move-result v1

    .line 316
    .local v1, "status":I
    move v0, v1

    .restart local v0    # "finalResult":I
    goto :goto_0
.end method

.method public isMultiEventSelect()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mIsMultiEventSelect:Z

    return v0
.end method

.method public setCancelled()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mUserCancelled:Z

    .line 84
    return-void
.end method

.class Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;
.super Ljava/lang/Object;
.source "DataInitialisationOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/services/dss/DataInitialisationOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntityDownloader"
.end annotation


# instance fields
.field private mDataVersion:Ljava/lang/String;

.field private mStrategyManager:Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;

.field final synthetic this$0:Lcom/genie_connect/common/services/dss/DataInitialisationOperation;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/services/dss/DataInitialisationOperation;Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "manager"    # Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;
    .param p3, "dataVersion"    # Ljava/lang/String;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;->this$0:Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p2, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;->mStrategyManager:Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;

    .line 380
    iput-object p3, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;->mDataVersion:Ljava/lang/String;

    .line 381
    return-void
.end method

.method private processWorkItem(Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;)I
    .locals 10
    .param p1, "workItem"    # Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;->this$0:Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    # getter for: Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mNetworkPersister:Lcom/genie_connect/common/net/providers/CommonNetworkPersister;
    invoke-static {v0}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->access$200(Lcom/genie_connect/common/services/dss/DataInitialisationOperation;)Lcom/genie_connect/common/net/providers/CommonNetworkPersister;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;->mDataVersion:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;->this$0:Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    # getter for: Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->mBaseDir:Ljava/io/File;
    invoke-static {v4}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->access$100(Lcom/genie_connect/common/services/dss/DataInitialisationOperation;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p1}, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->getOffset()I

    move-result v5

    invoke-virtual {p1}, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->getSize()I

    move-result v6

    invoke-virtual {p1}, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->getTotalAvailable()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/genie_connect/common/net/providers/CommonNetworkPersister;->downloadEntitySetToFile(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;ZLjava/io/File;III)Lcom/genie_connect/common/net/container/NetworkResult;

    move-result-object v9

    .line 411
    .local v9, "result":Lcom/genie_connect/common/net/container/NetworkResult;
    invoke-virtual {p1}, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->isStartingNewEntity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;->this$0:Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    sget-object v1, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;->DOWNLOAD:Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;

    invoke-virtual {p1}, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->notifyEntityAction(Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->access$300(Lcom/genie_connect/common/services/dss/DataInitialisationOperation;Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;Ljava/lang/String;)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;->this$0:Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    # invokes: Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->shouldReportErrors()Z
    invoke-static {v0}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->access$400(Lcom/genie_connect/common/services/dss/DataInitialisationOperation;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Lcom/genie_connect/common/net/container/NetworkResult;->isSuccesful()Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    const/4 v8, 0x7

    .line 426
    .local v8, "currentStatus":I
    :goto_0
    return v8

    .line 420
    .end local v8    # "currentStatus":I
    :cond_1
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;->this$0:Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    # invokes: Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->hasUserCancelled()Z
    invoke-static {v0}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->access$500(Lcom/genie_connect/common/services/dss/DataInitialisationOperation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    const/4 v8, 0x5

    .restart local v8    # "currentStatus":I
    goto :goto_0

    .line 423
    .end local v8    # "currentStatus":I
    :cond_2
    const/4 v8, 0x4

    .restart local v8    # "currentStatus":I
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 386
    iget-object v2, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;->mStrategyManager:Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;

    invoke-virtual {v2}, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;->getNextWorkItem()Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;

    move-result-object v1

    .line 389
    .local v1, "workItem":Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;
    :goto_0
    if-eqz v1, :cond_0

    .line 391
    invoke-direct {p0, v1}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;->processWorkItem(Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;)I

    move-result v0

    .line 393
    .local v0, "currentStatus":I
    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DSS: Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while downloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 397
    iget-object v2, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;->this$0:Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    # invokes: Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->setStatus(I)V
    invoke-static {v2, v0}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->access$000(Lcom/genie_connect/common/services/dss/DataInitialisationOperation;I)V

    .line 403
    .end local v0    # "currentStatus":I
    :cond_0
    return-void

    .line 401
    .restart local v0    # "currentStatus":I
    :cond_1
    iget-object v2, p0, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$EntityDownloader;->mStrategyManager:Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;

    invoke-virtual {v2}, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyManager;->getNextWorkItem()Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;

    move-result-object v1

    .line 402
    goto :goto_0
.end method

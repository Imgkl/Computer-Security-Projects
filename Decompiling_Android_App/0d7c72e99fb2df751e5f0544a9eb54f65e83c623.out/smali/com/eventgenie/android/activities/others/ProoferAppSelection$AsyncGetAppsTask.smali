.class Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;
.super Landroid/os/AsyncTask;
.source "ProoferAppSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/ProoferAppSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncGetAppsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_GROUP:Ljava/lang/String; = "proofer"

.field private static final HTTP_UNKNOWN_ERROR:I = -0x1


# instance fields
.field private mServer:Ljava/lang/String;

.field final synthetic this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private addToCache(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    const-string v1, "proofer"

    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 526
    return-void
.end method

.method private getCacheKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mAppsListFilterMode:I
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$200(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)I

    move-result v0

    if-lez v0, :cond_0

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->mServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mAppsListFilterMode:I
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$200(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->mServer:Ljava/lang/String;

    goto :goto_0
.end method

.method private getFromCache()Ljava/lang/String;
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    const-string v1, "proofer"

    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 12
    .param p1, "args"    # [Ljava/lang/Boolean;

    .prologue
    const/16 v11, 0xc8

    .line 530
    new-instance v9, Lcom/google/gson/GsonBuilder;

    invoke-direct {v9}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 532
    .local v4, "gson":Lcom/google/gson/Gson;
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v9}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getRestServer()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->mServer:Ljava/lang/String;

    .line 534
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 535
    .local v8, "useCache":Z
    const/4 v1, 0x0

    .line 537
    .local v1, "cacheHit":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ PROOFER: starting GetAppsTask. Using cache? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 539
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mProoferEventArray:Ljava/util/List;
    invoke-static {v9}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$100(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 541
    const/4 v7, -0x1

    .line 544
    .local v7, "resultCode":I
    if-eqz v8, :cond_0

    .line 545
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->getFromCache()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "apps":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 548
    :try_start_0
    iget-object v10, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    const-class v9, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    invoke-static {v9}, Lcom/eventgenie/android/utils/help/GsonHelper;->getListTypeForClass(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-virtual {v4, v0, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    # setter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mProoferEventArray:Ljava/util/List;
    invoke-static {v10, v9}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$102(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    const/16 v7, 0xc8

    .line 550
    const/4 v1, 0x1

    .line 558
    .end local v0    # "apps":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    if-eqz v8, :cond_3

    if-eq v7, v11, :cond_3

    .line 559
    :cond_1
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-static {v9}, Lcom/genie_connect/android/security/CmsLoginManager;->getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;

    move-result-object v2

    .line 560
    .local v2, "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    new-instance v5, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    const-string v10, "AsyncGetAppsTask()"

    invoke-virtual {v2, v10}, Lcom/genie_connect/android/security/CmsLoginManager;->getCMSUserAuthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 564
    .local v5, "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mAppsListFilterMode:I
    invoke-static {v9}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$200(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getApps(I)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v6

    .line 566
    .local v6, "result":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    invoke-virtual {v6}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->isSuccesful()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 567
    iget-object v10, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v6}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    # setter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mProoferEventArray:Ljava/util/List;
    invoke-static {v10, v9}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$102(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Ljava/util/List;)Ljava/util/List;

    .line 570
    :cond_2
    invoke-virtual {v6}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getResponseCode()I

    move-result v7

    .line 573
    .end local v2    # "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    .end local v5    # "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    .end local v6    # "result":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :cond_3
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mProoferEventArray:Ljava/util/List;
    invoke-static {v9}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$100(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_4

    if-ne v7, v11, :cond_4

    .line 575
    if-nez v1, :cond_4

    iget-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mProoferEventArray:Ljava/util/List;
    invoke-static {v9}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$100(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 576
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mProoferEventArray:Ljava/util/List;
    invoke-static {v9}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$100(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Ljava/util/List;

    move-result-object v9

    const-class v10, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    invoke-static {v10}, Lcom/eventgenie/android/utils/help/GsonHelper;->getListTypeForClass(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->addToCache(Ljava/lang/String;)V

    .line 580
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    return-object v9

    .line 551
    .restart local v0    # "apps":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 552
    .local v3, "e":Ljava/lang/Exception;
    const/4 v7, -0x1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 518
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 10
    .param p1, "resultCode"    # Ljava/lang/Integer;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 598
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->tvEmpty:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$300(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->proofer_no_results:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 600
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mProoferEventArray:Ljava/util/List;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$100(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 601
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    new-instance v2, Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mProoferEventArray:Ljava/util/List;
    invoke-static {v4}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$100(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->currentNamespace:J
    invoke-static {v5}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$400(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)J

    move-result-wide v6

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    # setter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->adapter:Lcom/eventgenie/android/adapters/other/ProoferAdapter;
    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$002(Lcom/eventgenie/android/activities/others/ProoferAppSelection;Lcom/eventgenie/android/adapters/other/ProoferAdapter;)Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    .line 602
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    sget v2, Lcom/eventgenie/android/R$id;->filter_segment:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 604
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$500(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 605
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$500(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->adapter:Lcom/eventgenie/android/adapters/other/ProoferAdapter;
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$000(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 607
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$500(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->currentNamespace:J
    invoke-static {v3}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$400(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)J

    move-result-wide v4

    # invokes: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getPostionById(J)I
    invoke-static {v2, v4, v5}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$600(Lcom/eventgenie/android/activities/others/ProoferAppSelection;J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 608
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mTvAppCount:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$700(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->adapter:Lcom/eventgenie/android/adapters/other/ProoferAdapter;
    invoke-static {v3}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$000(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " applications"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->currentNamespace:J
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$400(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)J

    move-result-wide v2

    # invokes: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getPostionById(J)I
    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$600(Lcom/eventgenie/android/activities/others/ProoferAppSelection;J)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 611
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->PLACEMARKER:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v8}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 630
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SERVER_LIST:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v8}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 632
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->multiEvent:Z
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$800(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v1, v2, v8, v9}, Lcom/genie_connect/android/db/datastore/Datastore;->setActiveDataInstance(Landroid/content/Context;IZ)V

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v1, v9, v8}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->showIndicator(ZZ)V

    .line 639
    return-void

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->PLACEMARKER:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v9}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_0

    .line 615
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_3

    .line 616
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->tvEmpty:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$300(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->proofer_unauthorised:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 617
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    const-string v2, "Unauthorised"

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 618
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-static {v1}, Lcom/genie_connect/android/security/CmsLoginManager;->getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/security/CmsLoginManager;->setCMSUserCredentials(Lcom/genie_connect/android/net/container/LoginCredentials;)V

    .line 619
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->doSecureCheck()V

    goto :goto_0

    .line 621
    :cond_3
    const/4 v0, -0x1

    .line 622
    .local v0, "error":I
    if-eqz p1, :cond_4

    .line 623
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 626
    :cond_4
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing reply ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - Vector length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->mProoferEventArray:Ljava/util/List;
    invoke-static {v3}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$100(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 627
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->tvEmpty:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$300(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->proofer_something_went_wrong_try_refreshing:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 518
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 643
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v0, v1, v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->showIndicator(ZZ)V

    .line 644
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncGetAppsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->tvEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$300(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->please_wait:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 645
    return-void
.end method

.class Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;
.super Landroid/os/AsyncTask;
.source "ProoferSelectDataversionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncGetDataversionsTask"
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
.field private static final CACHE_GROUP:Ljava/lang/String; = "dataversions"

.field private static final HTTP_OK:I = 0xc8

.field private static final HTTP_UNKNOWN_ERROR:I = -0x1


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private addToCache(Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    const-string v1, "dataversions"

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mNamespace:J
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$200(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    return-void
.end method

.method private getFromCache()Ljava/lang/String;
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    const-string v1, "dataversions"

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mNamespace:J
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$200(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 14
    .param p1, "args"    # [Ljava/lang/Boolean;

    .prologue
    .line 299
    new-instance v9, Lcom/google/gson/GsonBuilder;

    invoke-direct {v9}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 302
    .local v4, "gson":Lcom/google/gson/Gson;
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 303
    .local v8, "useCache":Z
    const/4 v0, 0x0

    .line 305
    .local v0, "cacheHit":Z
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

    .line 307
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;
    invoke-static {v9}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$300(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 309
    const/4 v7, -0x1

    .line 312
    .local v7, "resultCode":I
    if-eqz v8, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->getFromCache()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "dataversions":Ljava/lang/String;
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 316
    :try_start_0
    iget-object v10, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    const-class v9, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    invoke-static {v9}, Lcom/eventgenie/android/utils/help/GsonHelper;->getListTypeForClass(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-virtual {v4, v2, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    # setter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;
    invoke-static {v10, v9}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$302(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    const/16 v7, 0xc8

    .line 319
    const/4 v0, 0x1

    .line 327
    .end local v2    # "dataversions":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    if-eqz v8, :cond_3

    const/16 v9, 0xc8

    if-eq v7, v9, :cond_3

    .line 328
    :cond_1
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-static {v9}, Lcom/genie_connect/android/security/CmsLoginManager;->getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;

    move-result-object v1

    .line 330
    .local v1, "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    new-instance v5, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    const-string v10, "AsyncGetDataversionsTask()"

    invoke-virtual {v1, v10}, Lcom/genie_connect/android/security/CmsLoginManager;->getCMSUserAuthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mNamespace:J
    invoke-static {v11}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$200(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)J

    move-result-wide v12

    invoke-direct {v5, v9, v10, v12, v13}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 336
    .local v5, "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    const-class v9, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    sget-object v10, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DATAVERSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v11, 0x1

    invoke-virtual {v5, v9, v10, v11}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getLiveDataArray(Ljava/lang/Class;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v6

    .line 337
    .local v6, "result":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    invoke-virtual {v6}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->isSuccesful()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 338
    iget-object v10, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-virtual {v6}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    # setter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;
    invoke-static {v10, v9}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$302(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;Ljava/util/List;)Ljava/util/List;

    .line 339
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "^ PROOFER: Results = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;
    invoke-static {v10}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$300(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 341
    :cond_2
    invoke-virtual {v6}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getResponseCode()I

    move-result v7

    .line 344
    .end local v1    # "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    .end local v5    # "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    .end local v6    # "result":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :cond_3
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;
    invoke-static {v9}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$300(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_4

    const/16 v9, 0xc8

    if-ne v7, v9, :cond_4

    .line 346
    if-nez v0, :cond_4

    iget-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;
    invoke-static {v9}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$300(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 347
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;
    invoke-static {v9}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$300(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Ljava/util/List;

    move-result-object v9

    const-class v10, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    invoke-static {v10}, Lcom/eventgenie/android/utils/help/GsonHelper;->getListTypeForClass(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->addToCache(Ljava/lang/String;)V

    .line 352
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    return-object v9

    .line 320
    .restart local v2    # "dataversions":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 321
    .local v3, "e":Ljava/lang/Exception;
    const/4 v7, -0x1

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 287
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onPlaceMarkerClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$600(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversion:Ljava/lang/String;
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$400(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getPositionById(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$500(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 361
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "resultCode"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 365
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvEmpty:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$700(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->proofer_no_results:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 367
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$300(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    new-instance v2, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;
    invoke-static {v4}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$300(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversion:Ljava/lang/String;
    invoke-static {v5}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$400(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    # setter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mAdapter:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;
    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$002(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;Lcom/eventgenie/android/adapters/entity/DataversionAdapter;)Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    .line 370
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    sget v2, Lcom/eventgenie/android/R$id;->filter_segment:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$600(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 373
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$600(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mAdapter:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$000(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 375
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$600(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversion:Ljava/lang/String;
    invoke-static {v3}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$400(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getPositionById(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$500(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 376
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvAppCount:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$800(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mAdapter:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;
    invoke-static {v3}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$000(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataversions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversion:Ljava/lang/String;
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$400(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getPositionById(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$500(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 379
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->PLACEMARKER:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v7}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-virtual {v1, v6, v7}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->showIndicator(ZZ)V

    .line 407
    return-void

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->PLACEMARKER:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_0

    .line 383
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_2

    .line 384
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvEmpty:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$700(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->proofer_unauthorised:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 385
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    const-string v2, "Unauthorised"

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 390
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-static {v1}, Lcom/genie_connect/android/security/CmsLoginManager;->getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/security/CmsLoginManager;->setCMSUserCredentials(Lcom/genie_connect/android/net/container/LoginCredentials;)V

    .line 391
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->doSecureCheck()V

    goto :goto_0

    .line 393
    :cond_2
    const/4 v0, -0x1

    .line 394
    .local v0, "error":I
    if-eqz p1, :cond_3

    .line 395
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 398
    :cond_3
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

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

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mDataversionArray:Ljava/util/List;
    invoke-static {v3}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$300(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 403
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvEmpty:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$700(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->proofer_something_went_wrong_try_refreshing:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 287
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 411
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-virtual {v0, v1, v1}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->showIndicator(ZZ)V

    .line 412
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$AsyncGetDataversionsTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mTvEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$700(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->please_wait:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 413
    return-void
.end method

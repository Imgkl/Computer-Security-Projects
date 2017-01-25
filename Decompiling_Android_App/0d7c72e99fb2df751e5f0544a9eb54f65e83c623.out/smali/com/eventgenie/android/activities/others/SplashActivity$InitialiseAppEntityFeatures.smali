.class Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppEntityFeatures;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialiseAppEntityFeatures"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/genie_connect/common/net/container/NetworkResultJsonContent;",
        ">;"
    }
.end annotation


# static fields
.field static final TASK_TAG:Ljava/lang/String; = "InitialiseAppEntityFeatures"


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/SplashActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/SplashActivity;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppEntityFeatures;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 265
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppEntityFeatures;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    invoke-virtual {v5}, Lcom/eventgenie/android/activities/others/SplashActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    .line 267
    .local v2, "currentNamespace":J
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppEntityFeatures;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    invoke-static {v5}, Lcom/genie_connect/android/security/CmsLoginManager;->getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;

    move-result-object v0

    .line 270
    .local v0, "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    new-instance v1, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppEntityFeatures;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    const-string v6, "InitialiseAppEntityFeatures"

    invoke-virtual {v0, v6}, Lcom/genie_connect/android/security/CmsLoginManager;->getCMSUserAuthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    .local v1, "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v5, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v4

    .line 276
    .local v4, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 252
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppEntityFeatures;->doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
    .locals 2
    .param p1, "networkResult"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    .line 282
    const-string v1, "^ InitialiseAppEntityFeatures: Saving App Entity contents"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v0

    .line 287
    .local v0, "app":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/EventGenieApplication;->setAppEntityFeatures(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 292
    .end local v0    # "app":Lcom/genie_connect/common/platform/json/IJsonObject;
    :cond_0
    const-string v1, "^ InitialiseAppEntityFeatures: Finish initialization of the App EntityFeatures!!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 252
    check-cast p1, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppEntityFeatures;->onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 258
    const-string v0, "^ InitialiseAppEntityFeatures: Initialise the App EntityFeatures!!"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.class Lcom/eventgenie/android/utils/help/MultiEventHelper$UpdateConfigTask;
.super Landroid/os/AsyncTask;
.source "MultiEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/help/MultiEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateConfigTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/utils/help/MultiEventHelper;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$UpdateConfigTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/utils/help/MultiEventHelper;Lcom/eventgenie/android/utils/help/MultiEventHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/utils/help/MultiEventHelper;
    .param p2, "x1"    # Lcom/eventgenie/android/utils/help/MultiEventHelper$1;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/help/MultiEventHelper$UpdateConfigTask;-><init>(Lcom/eventgenie/android/utils/help/MultiEventHelper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ MULTI: Getting config for namespace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$UpdateConfigTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mSelectedAppId:J
    invoke-static {v1}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$300(Lcom/eventgenie/android/utils/help/MultiEventHelper;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$UpdateConfigTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$000(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$UpdateConfigTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static {v1}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$100(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v1

    iget-object v2, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$UpdateConfigTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mSelectedAppId:J
    invoke-static {v2}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$300(Lcom/eventgenie/android/utils/help/MultiEventHelper;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->updateRemoteConfig(Landroid/content/Context;IJLjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 363
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/help/MultiEventHelper$UpdateConfigTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

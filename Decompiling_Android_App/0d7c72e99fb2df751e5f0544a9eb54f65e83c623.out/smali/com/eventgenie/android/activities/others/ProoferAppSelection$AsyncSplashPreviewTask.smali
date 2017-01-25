.class Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSplashPreviewTask;
.super Landroid/os/AsyncTask;
.source "ProoferAppSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/ProoferAppSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncSplashPreviewTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSplashPreviewTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 648
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSplashPreviewTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .param p1, "namespaces"    # [Ljava/lang/Long;

    .prologue
    const/4 v3, 0x0

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ PROOFER: Getting config for namespace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 653
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSplashPreviewTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    const-string v2, "Basic YW5vbnltb3VzOmd1ZXN0"

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 654
    .local v0, "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getConfig(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 648
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSplashPreviewTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 659
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSplashPreviewTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->showIndicator(ZZ)V

    .line 660
    if-eqz p1, :cond_0

    .line 661
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSplashPreviewTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    const-class v2, Lcom/eventgenie/android/activities/others/SplashPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 662
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "config_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSplashPreviewTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->startActivityCarefully(Landroid/content/Intent;)V

    .line 667
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSplashPreviewTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    const-string v2, "Failed to get config!"

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 671
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$AsyncSplashPreviewTask;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-virtual {v0, v1, v1}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->showIndicator(ZZ)V

    .line 672
    return-void
.end method

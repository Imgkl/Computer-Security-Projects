.class Lcom/eventgenie/android/activities/others/LoginActivity$2;
.super Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/LoginActivity;->onLoginClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

.field final synthetic val$b:Landroid/widget/Button;

.field final synthetic val$pass:Ljava/lang/String;

.field final synthetic val$uname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/LoginActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Ljava/lang/Long;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    iput-object p6, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->val$uname:Ljava/lang/String;

    iput-object p7, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->val$pass:Ljava/lang/String;

    iput-object p8, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->val$b:Landroid/widget/Button;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/genie_connect/android/net/container/NetworkResultAuth;)V
    .locals 8
    .param p1, "result"    # Lcom/genie_connect/android/net/container/NetworkResultAuth;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 488
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/NetworkResultAuth;->isSuccesful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.eventgenie.android.USER_LOGIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 494
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    # getter for: Lcom/eventgenie/android/activities/others/LoginActivity;->mLoginType:I
    invoke-static {v4}, Lcom/eventgenie/android/activities/others/LoginActivity;->access$200(Lcom/eventgenie/android/activities/others/LoginActivity;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 521
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 496
    .restart local v1    # "intent":Landroid/content/Intent;
    :pswitch_0
    new-instance v2, Lcom/genie_connect/android/net/container/LoginCredentials;

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->val$uname:Ljava/lang/String;

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->val$pass:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lcom/genie_connect/android/net/container/LoginCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .local v2, "loginCredentials":Lcom/genie_connect/android/net/container/LoginCredentials;
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-static {v4}, Lcom/genie_connect/android/security/CmsLoginManager;->getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;

    move-result-object v0

    .line 501
    .local v0, "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    invoke-virtual {v0, v2}, Lcom/genie_connect/android/security/CmsLoginManager;->setCMSUserCredentials(Lcom/genie_connect/android/net/container/LoginCredentials;)V

    .line 503
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    # invokes: Lcom/eventgenie/android/activities/others/LoginActivity;->doRedirect()V
    invoke-static {v4}, Lcom/eventgenie/android/activities/others/LoginActivity;->access$300(Lcom/eventgenie/android/activities/others/LoginActivity;)V

    .line 504
    sput-boolean v7, Lcom/genie_connect/android/services/lss/LiveSyncService;->cleanAllNotifications:Z

    goto :goto_0

    .line 507
    .end local v0    # "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    .end local v2    # "loginCredentials":Lcom/genie_connect/android/net/container/LoginCredentials;
    :pswitch_1
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/NetworkResultAuth;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v3

    .line 508
    .local v3, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->val$uname:Ljava/lang/String;

    iget-object v6, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->val$pass:Ljava/lang/String;

    # invokes: Lcom/eventgenie/android/activities/others/LoginActivity;->doSuccessfulAuthentication(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V
    invoke-static {v4, v5, v6, v3}, Lcom/eventgenie/android/activities/others/LoginActivity;->access$100(Lcom/eventgenie/android/activities/others/LoginActivity;Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V

    goto :goto_0

    .line 512
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :cond_0
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-virtual {v4}, Lcom/eventgenie/android/activities/others/LoginActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_RIGHT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v4, v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 513
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-virtual {v4}, Lcom/eventgenie/android/activities/others/LoginActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v4, v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 515
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->val$b:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 516
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/LoginActivity$2;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    sget v5, Lcom/eventgenie/android/R$string;->login_failed:I

    sget-object v6, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v4, v5, v6}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x1b59
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 485
    check-cast p1, Lcom/genie_connect/android/net/container/NetworkResultAuth;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/LoginActivity$2;->onPostExecute(Lcom/genie_connect/android/net/container/NetworkResultAuth;)V

    return-void
.end method

.class Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$2;
.super Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$ForgottenPasswordTask;
.source "ForgottenPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->onLoginClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$2;->this$0:Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;

    invoke-direct {p0, p2, p3}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$ForgottenPasswordTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
    .locals 4
    .param p1, "result"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$2;->this$0:Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;

    # invokes: Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->getMessageToDisplay(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)Ljava/lang/String;
    invoke-static {p1}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->access$100(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$2;->this$0:Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->finish()V

    .line 138
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$2;->this$0:Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$2;->this$0:Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;

    invoke-static {v1, p1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->getNetworkResultError(Landroid/content/Context;Lcom/genie_connect/common/net/container/NetworkResult;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 134
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$2;->this$0:Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_RIGHT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 135
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$2;->this$0:Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 136
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$2;->this$0:Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mBtnLogin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->access$000(Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 119
    check-cast p1, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$2;->onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V

    return-void
.end method

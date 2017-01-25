.class Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;
.super Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;
.source "NetworkCheckerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->onStartTestClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;

    invoke-direct {p0, p2}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestRunnerTask;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;)V
    .locals 5
    .param p1, "result"    # Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 72
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;

    # getter for: Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->mStartButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->access$000(Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->label_button_start_test:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 73
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;

    # getter for: Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->mStartButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->access$000(Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;

    const-string v1, "Tests completed! Please send the pre-populated email!"

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;

    invoke-virtual {p1}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;->toEmail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GenieConnect Android Tester Report - Network Check"

    invoke-static {}, Lcom/eventgenie/android/utils/help/DebugHelper;->getEmailAddresses()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    # invokes: Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->sentEmail(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->access$100(Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;

    const-string v1, "ERROR: There was an error while collecting the information.\n Please try again..."

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->onPostExecute(Lcom/eventgenie/android/activities/developer/networkcheck/NetworkTestResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 96
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 97
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;

    # getter for: Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->access$200(Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;

    # getter for: Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->mStartButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->access$000(Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;

    # getter for: Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->mStartButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->access$000(Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->label_button_running_tests:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 100
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/String;

    .prologue
    .line 104
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;

    # getter for: Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;->access$200(Lcom/eventgenie/android/activities/developer/networkcheck/NetworkCheckerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    return-void
.end method

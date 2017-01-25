.class Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;
.super Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;
.source "DebugLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->onStartTestClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    invoke-direct {p0, p2}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogCollectorTask;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;)V
    .locals 5
    .param p1, "result"    # Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    # getter for: Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->mStartButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->access$000(Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->label_button_collect_log:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 71
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    # getter for: Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->mStartButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->access$000(Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 72
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    const-string v1, "Tests completed! Please send the pre-populated email!"

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    invoke-virtual {p1}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;->toEmail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GenieConnect Android Tester Report - Debug Log"

    invoke-static {}, Lcom/eventgenie/android/utils/help/DebugHelper;->getEmailAddresses()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    # invokes: Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->sentEmail(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->access$100(Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    const-string v1, "ERROR: There was an error while collecting the information.\n Please try again..."

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->onPostExecute(Lcom/eventgenie/android/activities/developer/debuglog/DebugLogResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 92
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 93
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    # getter for: Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->access$200(Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    # getter for: Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->mStartButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->access$000(Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    # getter for: Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->mStartButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->access$000(Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->label_button_collecting_log:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 96
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/String;

    .prologue
    .line 100
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;

    # getter for: Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;->access$200(Lcom/eventgenie/android/activities/developer/debuglog/DebugLogActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    return-void
.end method

.class Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$1;
.super Ljava/lang/Object;
.source "ForgottenPasswordActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$1;->this$0:Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$1;->this$0:Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$1;->this$0:Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mBtnLogin:Landroid/widget/Button;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->access$000(Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->onLoginClick(Landroid/view/View;)V

    .line 103
    const/4 v0, 0x1

    return v0
.end method

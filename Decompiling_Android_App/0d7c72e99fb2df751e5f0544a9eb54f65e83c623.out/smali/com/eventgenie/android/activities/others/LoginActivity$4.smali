.class Lcom/eventgenie/android/activities/others/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/LoginActivity;->populateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/LoginActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/LoginActivity;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/LoginActivity$4;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

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
    .line 586
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity$4;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/LoginActivity$4;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    # getter for: Lcom/eventgenie/android/activities/others/LoginActivity;->mBtnLogin:Landroid/widget/Button;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/LoginActivity;->access$500(Lcom/eventgenie/android/activities/others/LoginActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/others/LoginActivity;->onLoginClick(Landroid/view/View;)V

    .line 587
    const/4 v0, 0x1

    return v0
.end method

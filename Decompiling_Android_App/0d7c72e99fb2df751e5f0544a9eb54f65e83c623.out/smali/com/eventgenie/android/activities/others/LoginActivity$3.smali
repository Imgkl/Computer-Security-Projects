.class Lcom/eventgenie/android/activities/others/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 569
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/LoginActivity$3;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 573
    if-eqz p2, :cond_0

    .line 574
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity$3;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    # getter for: Lcom/eventgenie/android/activities/others/LoginActivity;->mEditPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/LoginActivity;->access$400(Lcom/eventgenie/android/activities/others/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 575
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity$3;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    # getter for: Lcom/eventgenie/android/activities/others/LoginActivity;->mEditPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/LoginActivity;->access$400(Lcom/eventgenie/android/activities/others/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/LoginActivity$3;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    # getter for: Lcom/eventgenie/android/activities/others/LoginActivity;->mEditPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/LoginActivity;->access$400(Lcom/eventgenie/android/activities/others/LoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 580
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity$3;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    # getter for: Lcom/eventgenie/android/activities/others/LoginActivity;->mEditPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/LoginActivity;->access$400(Lcom/eventgenie/android/activities/others/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 578
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity$3;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    # getter for: Lcom/eventgenie/android/activities/others/LoginActivity;->mEditPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/LoginActivity;->access$400(Lcom/eventgenie/android/activities/others/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/LoginActivity$3;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    # getter for: Lcom/eventgenie/android/activities/others/LoginActivity;->mEditPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/LoginActivity;->access$400(Lcom/eventgenie/android/activities/others/LoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

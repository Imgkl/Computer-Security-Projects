.class public Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ProgressDialogFragment.java"


# static fields
.field private static final KEY_INDETERMINATE:Ljava/lang/String; = "indeterminate"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "indeterminate"    # Z

    .prologue
    .line 44
    new-instance v1, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;-><init>()V

    .line 45
    .local v1, "frag":Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "indeterminate"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->setRetainInstance(Z)V

    .line 57
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "indeterminate"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 65
    .local v1, "indeterminate":Z
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 75
    if-nez v1, :cond_1

    .line 76
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 79
    :cond_1
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 80
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 81
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 100
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 101
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 94
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

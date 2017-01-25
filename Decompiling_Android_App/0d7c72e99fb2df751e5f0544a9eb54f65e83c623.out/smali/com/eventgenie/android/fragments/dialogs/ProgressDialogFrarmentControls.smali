.class public Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;
.super Ljava/lang/Object;
.source "ProgressDialogFrarmentControls.java"


# static fields
.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "MANAGED_DIALOG_FRAGMENT"


# instance fields
.field private final mFaragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "mActivity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;->mFaragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 48
    return-void
.end method


# virtual methods
.method public dialogFragmentDismiss()V
    .locals 3

    .prologue
    .line 51
    const-string v1, "^ Dimissing Fragment : MANAGED_DIALOG_FRAGMENT"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;->mFaragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v2, "MANAGED_DIALOG_FRAGMENT"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 56
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 57
    check-cast v0, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;

    .end local v0    # "dialog":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->dismissAllowingStateLoss()V

    .line 59
    :cond_0
    return-void
.end method

.method public dialogFragmentShow(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 62
    iget-object v3, p0, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;->mFaragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 63
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;->mFaragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v4, "MANAGED_DIALOG_FRAGMENT"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 65
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 68
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 70
    invoke-static {p1, p2, p3}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;

    move-result-object v1

    .line 72
    .local v1, "newFragment":Landroid/support/v4/app/DialogFragment;
    const-string v3, "MANAGED_DIALOG_FRAGMENT"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 74
    return-void
.end method

.method public dialogFragmentUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "progress"    # Ljava/lang/Integer;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;->mFaragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 78
    .local v0, "dialogFragment":Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_1

    .line 79
    if-eqz p2, :cond_0

    move-object v1, v0

    .line 80
    check-cast v1, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;

    invoke-virtual {v1, p2}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 82
    :cond_0
    if-eqz p4, :cond_1

    .line 83
    check-cast v0, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;

    .end local v0    # "dialogFragment":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFragment;->setProgress(I)V

    .line 86
    :cond_1
    return-void
.end method

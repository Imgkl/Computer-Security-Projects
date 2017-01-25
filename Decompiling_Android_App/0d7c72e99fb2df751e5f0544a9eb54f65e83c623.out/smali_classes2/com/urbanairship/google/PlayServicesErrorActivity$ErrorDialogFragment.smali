.class public Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "PlayServicesErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/google/PlayServicesErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialogFragment"
.end annotation


# static fields
.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialog_error"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 137
    return-void
.end method

.method public static createInstance(I)Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;
    .locals 3
    .param p0, "error"    # I

    .prologue
    .line 147
    new-instance v1, Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;

    invoke-direct {v1}, Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;-><init>()V

    .line 149
    .local v1, "dialogFragment":Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "dialog_error"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    invoke-virtual {v1, v0}, Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 153
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 170
    invoke-virtual {p0}, Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 171
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dialog_error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 160
    .local v0, "errorCode":I
    invoke-virtual {p0}, Lcom/urbanairship/google/PlayServicesErrorActivity$ErrorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

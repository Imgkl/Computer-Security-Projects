.class final Lcom/github/ignition/core/dialogs/IgnitedDialogs$4;
.super Ljava/lang/Object;
.source "IgnitedDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/ignition/core/dialogs/IgnitedDialogs;->newErrorHandlerDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/github/ignition/core/dialogs/IgnitedDialogs$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/github/ignition/core/dialogs/IgnitedDialogs$4;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 214
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 215
    iget-object v0, p0, Lcom/github/ignition/core/dialogs/IgnitedDialogs$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/github/ignition/core/dialogs/IgnitedDialogs$4;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.class final Lcom/github/ignition/core/dialogs/IgnitedDialogs$1;
.super Ljava/lang/Object;
.source "IgnitedDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/ignition/core/dialogs/IgnitedDialogs;->newProgressDialog(Landroid/app/Activity;II)Landroid/app/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/github/ignition/core/dialogs/IgnitedDialogs$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/github/ignition/core/dialogs/IgnitedDialogs$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.class Lcom/julysystems/appx/AppXGCMBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "AppXGCMBroadcastReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppXGCMBroadcastReceiver;->processPushMessage(Landroid/content/Context;Landroid/app/Activity;Ljava/util/HashMap;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXGCMBroadcastReceiver;

.field private final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field private final synthetic val$urlValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXGCMBroadcastReceiver;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver$1;->this$0:Lcom/julysystems/appx/AppXGCMBroadcastReceiver;

    iput-object p2, p0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver$1;->val$urlValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver$1;->val$alertDialog:Landroid/app/AlertDialog;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver$1;->val$urlValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->loadUrl(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/julysystems/appx/AppXGCMBroadcastReceiver$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 379
    return-void
.end method

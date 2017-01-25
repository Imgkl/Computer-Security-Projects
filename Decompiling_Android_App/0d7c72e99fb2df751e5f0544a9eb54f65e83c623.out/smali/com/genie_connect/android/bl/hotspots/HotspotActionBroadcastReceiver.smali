.class public Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotActionBroadcastReceiver.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;->mActivity:Landroid/app/Activity;

    .line 20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;->mActivity:Landroid/app/Activity;

    invoke-static {p2, v0}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->executeViewActionForIntent(Landroid/content/Intent;Landroid/content/Context;)V

    .line 25
    return-void
.end method

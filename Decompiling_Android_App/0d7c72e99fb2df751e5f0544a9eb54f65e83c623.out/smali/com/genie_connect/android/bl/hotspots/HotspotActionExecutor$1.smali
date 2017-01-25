.class final Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor$1;
.super Ljava/lang/Object;
.source "HotspotActionExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->executeViewActionForIntent(Landroid/content/Intent;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$viewIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor$1;->val$viewIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor$1;->val$viewIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 172
    const/4 v0, 0x1

    # setter for: Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->showAlertDialog:Z
    invoke-static {v0}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->access$002(Z)Z

    .line 173
    return-void
.end method

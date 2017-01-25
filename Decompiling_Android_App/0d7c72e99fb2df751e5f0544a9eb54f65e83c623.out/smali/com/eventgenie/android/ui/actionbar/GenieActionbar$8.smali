.class Lcom/eventgenie/android/ui/actionbar/GenieActionbar$8;
.super Ljava/lang/Object;
.source "GenieActionbar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/ui/actionbar/GenieActionbar;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$8;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$8;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$8;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/eventgenie/android/activities/others/ProoferDownloadEntitySelectionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 320
    return-void
.end method

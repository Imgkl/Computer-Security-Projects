.class final Lcom/eventgenie/android/ui/help/PopupMenuActionHelper$1;
.super Ljava/lang/Object;
.source "PopupMenuActionHelper.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;->addShareAction(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 211
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper$1;->val$context:Landroid/content/Context;

    const-string v2, "genie_entity"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "genie_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyShare(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 216
    const/4 v1, 0x0

    return v1
.end method

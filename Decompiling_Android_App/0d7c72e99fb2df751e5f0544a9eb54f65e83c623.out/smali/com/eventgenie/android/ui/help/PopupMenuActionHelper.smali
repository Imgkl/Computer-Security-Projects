.class public Lcom/eventgenie/android/ui/help/PopupMenuActionHelper;
.super Ljava/lang/Object;
.source "PopupMenuActionHelper.java"


# static fields
.field public static final ACTION_ID_GM_APPS_LIST_ALL:I = 0x9c40

.field public static final ACTION_ID_GM_APPS_LIST_ARCHIVED:I = 0x9c42

.field public static final ACTION_ID_GM_APPS_LIST_NOT_ARCHIVED:I = 0x9c41

.field public static final ACTION_ID_GM_SERVER_SELECTION_ID_OFFSET:I = 0x7530

.field public static final ACTION_ID_GM_SERVER_SELECTION_ID_OFFSET_MAX:I = 0x7918

.field public static final ACTION_ID_PROOFER_DEBUG_MENU:I = 0x4e29

.field public static final ACTION_ID_PROOFER_INIT_SPECIFIC_ENTITIES:I = 0x4e28

.field public static final ACTION_ID_PROOFER_LOAD_LIVE_DATA:I = 0x4e21

.field public static final ACTION_ID_PROOFER_LOAD_PUBLISHED_DATA:I = 0x4e22

.field public static final ACTION_ID_PROOFER_LOAD_SPECIFIC_PUBLISH:I = 0x4e23

.field public static final ACTION_ID_PROOFER_LOAD_SPECIFIC_PUBLISH_DELTAS_TIL:I = 0x4e2a

.field public static final ACTION_ID_PROOFER_OPEN_MARKET:I = 0x4e25

.field public static final ACTION_ID_PROOFER_OPEN_PROOFER_PAGE:I = 0x4e26

.field public static final ACTION_ID_PROOFER_RELOAD_CONFIG:I = 0x4e27

.field public static final ACTION_ID_PROOFER_SPLASH_PREVIEW:I = 0x4e24


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomAction(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;ILjava/lang/CharSequence;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;
    .param p2, "actionId"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1, p2, v1, p3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 73
    return-void
.end method

.method public static addCustomAction(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;ILjava/lang/CharSequence;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;
    .param p2, "actionId"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "iconRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1, p2, v1, p3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 91
    return-void
.end method

.method public static addCustomAction(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;Landroid/view/MenuItem;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getOrder()I

    move-result v3

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 82
    return-void
.end method

.method public static addProoferActionDebugMenu(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x4e29

    const-string v2, "Debug Menu"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_server_live:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 100
    return-void
.end method

.method public static addProoferActionInitialiseSpecificEntities(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x4e28

    const-string v2, "Init Specific Entities"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_server_live:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 110
    return-void
.end method

.method public static addProoferActionLoadLiveData(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x4e21

    const-string v2, "Load Live Data"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_event_live:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 119
    return-void
.end method

.method public static addProoferActionLoadPublishedData(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x4e22

    const-string v2, "Load Published Data"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_event_published:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 130
    return-void
.end method

.method public static addProoferActionLoadSpecificPublish(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x4e23

    const-string v2, "Load Specific Publish [BU] #"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_event_published:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 139
    return-void
.end method

.method public static addProoferActionLoadSpecificPublishDeltasTil(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x4e2a

    const-string v2, "Load Specific Publish #"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_event_published:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 148
    return-void
.end method

.method public static addProoferActionOpenMarketPage(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x4e25

    const-string v2, "Open Google Play Page"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_play:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 157
    return-void
.end method

.method public static addProoferActionOpenProoferPage(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x4e26

    const-string v2, "Select Event"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_important:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 166
    return-void
.end method

.method public static addProoferActionPreviewSpash(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x4e24

    const-string v2, "Preview Splash"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_picture:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 175
    return-void
.end method

.method public static addProoferActionReloadConfig(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/16 v1, 0x4e27

    const-string v2, "Refresh Config"

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_refresh:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 184
    return-void
.end method

.method public static addShareAction(Landroid/content/Context;Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menu"    # Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;
    .param p2, "actionId"    # I
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/IconFriendlyPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1, p2, v1, p3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper$1;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/ui/help/PopupMenuActionHelper$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 219
    return-void
.end method

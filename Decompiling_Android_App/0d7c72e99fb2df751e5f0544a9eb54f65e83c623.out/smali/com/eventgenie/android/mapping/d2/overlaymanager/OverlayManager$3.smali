.class Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 236
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$300(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    move-result-object v1

    if-nez v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$300(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$300(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v1

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$300(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v1

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$300(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v1

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne v1, v3, :cond_0

    .line 243
    :cond_2
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v3

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1200(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v4, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    invoke-static {v4}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$300(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/genie_connect/android/security/VisitorLoginManager;->doCheckFavouriteSecurity(Landroid/app/Activity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 247
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mFavCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$600(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/CheckBox;

    move-result-object v3

    if-nez p2, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 248
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mAgendaCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$700(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/CheckBox;

    move-result-object v1

    if-nez p2, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v1, v6

    .line 247
    goto :goto_1

    :cond_4
    move v2, v6

    .line 248
    goto :goto_2

    .line 252
    :cond_5
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1300(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 253
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1300(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1400(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v0

    .line 255
    .local v0, "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    if-eqz v0, :cond_6

    .line 256
    check-cast v0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;

    .end local v0    # "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    invoke-virtual {v0, p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setFavourite(Z)V

    .line 259
    :cond_6
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1500(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1200(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    invoke-static {v3}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$300(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    invoke-static {v4}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$300(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getId()J

    move-result-wide v4

    iget-object v7, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1200(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v7

    iget-object v8, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;->this$0:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    # getter for: Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->access$1200(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    if-eqz p2, :cond_7

    sget-object v8, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    :goto_3
    invoke-virtual/range {v1 .. v8}, Lcom/genie_connect/android/db/access/Udm;->favorite(Landroid/content/Context;Ljava/lang/String;JJLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto/16 :goto_0

    :cond_7
    sget-object v8, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->REMOVE:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    goto :goto_3
.end method

.class public Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;
.super Ljava/lang/Object;
.source "OverlayManager.java"


# instance fields
.field private mAgendaCheckbox:Landroid/widget/CheckBox;

.field private final mConfig:Lcom/genie_connect/android/db/config/AppConfig;

.field private final mContext:Landroid/content/Context;

.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mDescription:Landroid/widget/TextView;

.field private mExhibitorLocation:Landroid/widget/TextView;

.field private mExhibitorName:Landroid/widget/TextView;

.field private mFavCheckbox:Landroid/widget/CheckBox;

.field private mGoToDetailsButton:Landroid/widget/Button;

.field private final mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

.field private final mNamespace:J

.field private final mOverlay:Landroid/view/ViewGroup;

.field private mRouteButtonContainer:Landroid/view/View;

.field private mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

.field private mSelectedLocation:Ljava/lang/String;

.field private final mShowNaviButtons:Z

.field private final mZoomControls:Landroid/widget/ZoomControls;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ZoomControls;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlay"    # Landroid/view/ViewGroup;
    .param p3, "zoomControls"    # Landroid/widget/ZoomControls;
    .param p4, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p5, "showNaviButtons"    # Z

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mItemList:Ljava/util/List;

    .line 97
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    .line 99
    iput-object p3, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mZoomControls:Landroid/widget/ZoomControls;

    .line 100
    iput-object p4, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 101
    iput-boolean p5, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mShowNaviButtons:Z

    .line 102
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mNamespace:J

    .line 104
    invoke-direct {p0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->initUI()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/ZoomControls;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mZoomControls:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;
    .param p1, "x1"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->hideAppropriateFunctionality(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mNamespace:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mRouteButtonContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    return-object v0
.end method

.method static synthetic access$302(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;
    .param p1, "x1"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    return-object p1
.end method

.method static synthetic access$400(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;
    .param p1, "x1"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->getButtonText(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mFavCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mAgendaCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mGoToDetailsButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getButtonText(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)Ljava/lang/String;
    .locals 7
    .param p1, "item"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/eventgenie/android/R$string;->details_title_format:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideAppropriateFunctionality(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)V
    .locals 5
    .param p1, "item"    # Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    .prologue
    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 142
    iget-boolean v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mShowNaviButtons:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mRouteButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->getSelectedEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorLocation:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mGoToDetailsButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mFavCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mAgendaCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :goto_1
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mRouteButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->getSelectedEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->getSelectedEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne v0, v1, :cond_3

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorLocation:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mGoToDetailsButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mFavCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mAgendaCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorLocation:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mGoToDetailsButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mFavCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mAgendaCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method private initUI()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    const v5, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    .line 187
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    sget v3, Lcom/eventgenie/android/R$id;->exhibitor_location:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorLocation:Landroid/widget/TextView;

    .line 188
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    sget v3, Lcom/eventgenie/android/R$id;->exhibitor_name:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mExhibitorName:Landroid/widget/TextView;

    .line 189
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    sget v3, Lcom/eventgenie/android/R$id;->btn_exhibitor_details:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mGoToDetailsButton:Landroid/widget/Button;

    .line 190
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    sget v3, Lcom/eventgenie/android/R$id;->entity_description:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDescription:Landroid/widget/TextView;

    .line 191
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    sget v3, Lcom/eventgenie/android/R$id;->list_exhibitor_details:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mListView:Landroid/widget/ListView;

    .line 192
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    sget v3, Lcom/eventgenie/android/R$id;->route_buttons:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mRouteButtonContainer:Landroid/view/View;

    .line 195
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 196
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$2;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$2;-><init>(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    sget v3, Lcom/eventgenie/android/R$id;->exhibitor_fav:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mFavCheckbox:Landroid/widget/CheckBox;

    .line 231
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    sget v3, Lcom/eventgenie/android/R$id;->session_fav:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mAgendaCheckbox:Landroid/widget/CheckBox;

    .line 233
    new-instance v0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$3;-><init>(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)V

    .line 267
    .local v0, "checkListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mFavCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 268
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mAgendaCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 271
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    sget v3, Lcom/eventgenie/android/R$id;->exhibitor_overlay:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 272
    .local v1, "starParent":Landroid/view/View;
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mFavCheckbox:Landroid/widget/CheckBox;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v5, v4, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->setupDelegate(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    .line 273
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mAgendaCheckbox:Landroid/widget/CheckBox;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v5, v4, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/FractionalTouchDelegate;->setupDelegate(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    .line 277
    return-void
.end method

.method private populateList(Ljava/lang/String;)V
    .locals 14
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 298
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/genie_connect/android/db/access/DbExhibitors;->getByLocation(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v9

    .line 299
    .local v9, "cursorExhibitors":Luk/co/alt236/easycursor/EasyCursor;
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSessionsDb()Lcom/genie_connect/android/db/access/DbSessions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/genie_connect/android/db/access/DbSessions;->getByLocation(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v11

    .line 300
    .local v11, "cursorSessions":Luk/co/alt236/easycursor/EasyCursor;
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSubSessions()Lcom/genie_connect/android/db/access/DbSubsessions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/genie_connect/android/db/access/DbSubsessions;->getByLocation(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v12

    .line 301
    .local v12, "cursorSubsessions":Luk/co/alt236/easycursor/EasyCursor;
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMapFacilities()Lcom/genie_connect/android/db/access/DbMapFacilities;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/genie_connect/android/db/access/DbMapFacilities;->getByLocation(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v10

    .line 302
    .local v10, "cursorFacilities":Luk/co/alt236/easycursor/EasyCursor;
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMapZones()Lcom/genie_connect/android/db/access/DbMapZones;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/genie_connect/android/db/access/DbMapZones;->getByLocation(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v13

    .line 305
    .local v13, "cursorZones":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ OV: EXHIBITORS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ OV: FACILITIES: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ OV: SESSIONS  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v11}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ OV: SUBSESSIONS  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v12}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ OV: ZONES  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v13}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 312
    :goto_0
    invoke-interface {v9}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    new-instance v0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v2, "name"

    invoke-interface {v9, v2}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullDescription"

    invoke-interface {v9, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v9, v4}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "isFavourite"

    invoke-interface {v9, v6}, Luk/co/alt236/easycursor/EasyCursor;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "featured"

    invoke-interface {v9, v7}, Luk/co/alt236/easycursor/EasyCursor;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "logoUrl"

    invoke-interface {v9, v8}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    .line 322
    .local v0, "item":Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-interface {v9}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 326
    .end local v0    # "item":Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    :cond_0
    :goto_1
    invoke-interface {v11}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 327
    new-instance v0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v2, "name"

    invoke-interface {v11, v2}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullDescription"

    invoke-interface {v11, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v11, v4}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "isFavourite"

    invoke-interface {v11, v6}, Luk/co/alt236/easycursor/EasyCursor;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "isBookmarked"

    invoke-interface {v11, v6}, Luk/co/alt236/easycursor/EasyCursor;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    .line 336
    .restart local v0    # "item":Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-interface {v11}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_1

    .line 327
    .end local v0    # "item":Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 340
    :cond_3
    :goto_3
    invoke-interface {v12}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6

    .line 341
    new-instance v0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v2, "name"

    invoke-interface {v12, v2}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullDescription"

    invoke-interface {v12, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v12, v4}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "isFavourite"

    invoke-interface {v12, v6}, Luk/co/alt236/easycursor/EasyCursor;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "isBookmarked"

    invoke-interface {v12, v6}, Luk/co/alt236/easycursor/EasyCursor;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const/4 v6, 0x1

    :goto_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    .line 350
    .restart local v0    # "item":Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-interface {v12}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_3

    .line 341
    .end local v0    # "item":Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 354
    :cond_6
    :goto_5
    invoke-interface {v10}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_7

    .line 355
    new-instance v0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPFACILITY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v2, "name"

    invoke-interface {v10, v2}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullDescription"

    invoke-interface {v10, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v10, v4}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "logoUrl"

    invoke-interface {v10, v8}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    .line 364
    .restart local v0    # "item":Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-interface {v10}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_5

    .line 368
    .end local v0    # "item":Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    :cond_7
    :goto_6
    invoke-interface {v13}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_8

    .line 369
    new-instance v0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPZONE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v2, "name"

    invoke-interface {v13, v2}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullDescription"

    invoke-interface {v13, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v13, v4}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "logoUrl"

    invoke-interface {v13, v8}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    .line 378
    .restart local v0    # "item":Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-interface {v13}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_6

    .line 381
    .end local v0    # "item":Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    :cond_8
    invoke-static {v9}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 382
    invoke-static {v11}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 383
    invoke-static {v12}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 384
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 385
    invoke-static {v13}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 386
    return-void
.end method


# virtual methods
.method public getSelectedEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedId()J
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    if-nez v0, :cond_0

    .line 123
    const-wide/16 v0, 0x0

    .line 125
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hideOverlay()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$1;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$1;-><init>(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method public invalidateOverlay()V
    .locals 2

    .prologue
    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ OVRL: Invalidating! - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->isOverlayVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 283
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 284
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/eventgenie/android/R$id;->map2d_absolutelayout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 286
    :cond_0
    return-void
.end method

.method public isOverlayVisible()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mOverlay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x1

    .line 292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMapItemStore(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;)V
    .locals 0
    .param p1, "mapItemStore"    # Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    .line 390
    return-void
.end method

.method public showOverlay(Ljava/lang/String;)V
    .locals 9
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 393
    invoke-direct {p0, p1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->populateList(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mItemList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    .line 397
    .local v7, "item":Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, "description":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;->isFavourite()Z

    move-result v4

    .line 400
    .local v4, "fav":Z
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedLocation:Ljava/lang/String;

    .line 401
    iput-object v7, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedItem:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;

    .line 403
    invoke-direct {p0, v7}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->getButtonText(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, "buttonText":Ljava/lang/String;
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mContext:Landroid/content/Context;

    move-object v8, v0

    check-cast v8, Landroid/app/Activity;

    new-instance v0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$4;-><init>(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 476
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "fav":Z
    .end local v5    # "description":Ljava/lang/String;
    .end local v6    # "buttonText":Ljava/lang/String;
    .end local v7    # "item":Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManagerListItem;
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->invalidateOverlay()V

    .line 477
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 428
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedLocation:Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;

    invoke-direct {v1, p0, p1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$5;-><init>(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 454
    :cond_1
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mSelectedLocation:Ljava/lang/String;

    .line 456
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;

    invoke-direct {v1, p0, p1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager$6;-><init>(Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

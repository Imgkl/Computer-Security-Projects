.class public Lcom/eventgenie/android/activities/mapping/Map2DActivity;
.super Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;
.source "Map2DActivity.java"

# interfaces
.implements Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/InterfaceMapItem;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;,
        Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;,
        Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;
    }
.end annotation


# static fields
.field public static final BOOTH_LOCATION_FOCUS:Ljava/lang/String; = "location_focus"

.field public static final BOOTH_LOCATION_ROUTE_FROM:Ljava/lang/String; = "location_route_from"

.field public static final BOOTH_LOCATION_ROUTE_TO:Ljava/lang/String; = "location_route_to"

.field private static final BUTTON_ID_OFFSET:I = 0x3e8

.field private static final DIALOG_CALCULATING_PATH:I = 0x1

.field private static final DIALOG_LOADING_MAP:I = 0x0

.field public static final ENTITY_LOCATION_EXTRA:Ljava/lang/String; = "entity_location"

.field public static final HALL_FILTER_EXTRA:Ljava/lang/String; = "hall_filter"

.field private static final MESSAGETYPE_PZ_SCALE_FACTOR:I = 0x0

.field public static final RETURN_CODE_ROUTE:I = 0x0

.field private static final RETURN_CODE_SELECT_ENTITY:I = 0x1

.field private static final UNSCALED_INVALID_COORDINATE:D = 4.9E-324


# instance fields
.field private mCurrentScaleFactor:F

.field private mCurrentUnscaledMaxX:D

.field private mCurrentUnscaledMaxY:D

.field private mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mExibitorOverlay:Landroid/view/ViewGroup;

.field private mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

.field private mLocationFocus:Ljava/lang/String;

.field private mMapIdToButtonIdCollection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

.field private mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

.field private mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

.field private mSelectedButton:Lcom/eventgenie/android/ui/mapping2d/MapItemView;

.field private mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

.field private mZoomControls:Landroid/widget/ZoomControls;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 105
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mSelectedButton:Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    .line 136
    iput-wide v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxX:D

    .line 137
    iput-wide v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxY:D

    .line 139
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    .line 1334
    return-void
.end method

.method static synthetic access$1000(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->resetValues()V

    return-void
.end method

.method static synthetic access$1100(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxX:D

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/eventgenie/android/activities/mapping/Map2DActivity;D)D
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # D

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxX:D

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxY:D

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/eventgenie/android/activities/mapping/Map2DActivity;D)D
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # D

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxY:D

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    iget v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    return v0
.end method

.method static synthetic access$1402(Lcom/eventgenie/android/activities/mapping/Map2DActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # F

    .prologue
    .line 105
    iput p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    return p1
.end method

.method static synthetic access$1432(Lcom/eventgenie/android/activities/mapping/Map2DActivity;F)F
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # F

    .prologue
    .line 105
    iget v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    return v0
.end method

.method static synthetic access$1500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;)Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mLocationFocus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mLocationFocus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->zoomIn()V

    return-void
.end method

.method static synthetic access$2000(Lcom/eventgenie/android/activities/mapping/Map2DActivity;DD)V
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->focusOnUnscaledPoint(DD)V

    return-void
.end method

.method static synthetic access$2100(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->focusOnLocation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/eventgenie/android/activities/mapping/Map2DActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # J

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->setActivityTitle(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->showNavigation(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    .param p2, "x2"    # Ljava/lang/Boolean;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->toggleWarpVisibility(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/eventgenie/android/activities/mapping/Map2DActivity;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->zoom(FF)V

    return-void
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->zoomOut()V

    return-void
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->showMyLocation(Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V

    return-void
.end method

.method static synthetic access$500(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    return-object v0
.end method

.method static synthetic access$602(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;)Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    return-object p1
.end method

.method static synthetic access$700(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    return-object v0
.end method

.method static synthetic access$800(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->changeHalls(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$902(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    return-object p1
.end method

.method private actionBarProcess()V
    .locals 4

    .prologue
    .line 144
    sget v2, Lcom/eventgenie/android/R$id;->title_text:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 145
    .local v1, "title":Landroid/widget/TextView;
    const-string v2, "#ffffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$color;->title_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 148
    .local v0, "textColour":I
    const-string v2, "#ffffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v2

    const-string v3, "#ffffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->applyActionBarButtonImageColour(I)V

    .line 151
    :cond_0
    return-void
.end method

.method private animateMapItem(Lcom/eventgenie/android/ui/mapping2d/MapItemView;)V
    .locals 2
    .param p1, "view"    # Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    .prologue
    .line 154
    sget v1, Lcom/eventgenie/android/R$anim;->spin:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 155
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    return-void
.end method

.method private calculateRoute(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Boolean;)V
    .locals 3
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "startHallId"    # J
    .param p5, "isMultiHall"    # Ljava/lang/Boolean;

    .prologue
    .line 159
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    sget v1, Lcom/eventgenie/android/R$string;->toast_navigation_already_there:I

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 168
    :cond_2
    new-instance v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;)V

    .line 169
    .local v0, "planner":Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;
    invoke-virtual {v0, p5}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->setIsMultihall(Ljava/lang/Boolean;)V

    .line 170
    invoke-virtual {v0, p3, p4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncRoutePlanner;->setHallId(J)V

    .line 171
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private changeHalls(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .param p1, "hallName"    # Ljava/lang/String;
    .param p2, "hallId"    # J
    .param p4, "locationFocus"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v5, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->changeHalls(Ljava/lang/String;JLjava/lang/String;Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;)V

    .line 182
    return-void
.end method

.method private changeHalls(Ljava/lang/String;JLjava/lang/String;Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;)V
    .locals 2
    .param p1, "hallName"    # Ljava/lang/String;
    .param p2, "hallId"    # J
    .param p4, "locationFocus"    # Ljava/lang/String;
    .param p5, "customLoader"    # Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ MAP2D: Changing hall to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->toggleWarpVisibility(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;Ljava/lang/Boolean;)V

    .line 194
    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    invoke-direct {v0, p1, p2, p3}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    .line 195
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->setActivityTitle(J)V

    .line 197
    if-nez p4, :cond_0

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mLocationFocus:Ljava/lang/String;

    .line 203
    :goto_0
    invoke-static {p5}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 204
    return-void

    .line 200
    :cond_0
    iput-object p4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mLocationFocus:Ljava/lang/String;

    goto :goto_0
.end method

.method private doNavigation(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 7
    .param p1, "locationRouteFrom"    # Ljava/lang/String;
    .param p2, "locationRouteTo"    # Ljava/lang/String;
    .param p3, "hallId"    # J
    .param p5, "isMultihall"    # Z

    .prologue
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ MAP2D: starting %1s navigation... From \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p5, :cond_0

    const-string v1, "MULTIHALL"

    :goto_0
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "log":Ljava/lang/String;
    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->containsMapItem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->containsMapItem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->calculateRoute(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Boolean;)V

    .line 221
    :goto_1
    return-void

    .line 208
    .end local v0    # "log":Ljava/lang/String;
    :cond_0
    const-string v1, "SINGLEHALL"

    goto :goto_0

    .line 218
    .restart local v0    # "log":Ljava/lang/String;
    :cond_1
    const-string v1, "^ MAP2D: doNavigation(): Location(s) do not exist."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 219
    sget v1, Lcom/eventgenie/android/R$string;->toast_navigation_no_path:I

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method private focusOnLocation(Ljava/lang/String;)V
    .locals 10
    .param p1, "locationFocus"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x1

    .line 224
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v0

    if-nez v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->isMapItemsNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/eventgenie/android/utils/ValueCheck;->checkForNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ MAP2D: focusOnLocation(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 231
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 233
    :cond_2
    iget-wide v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxX:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxY:D

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_3

    .line 235
    iget-wide v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxX:D

    div-double/2addr v2, v8

    iget-wide v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxY:D

    div-double/2addr v4, v8

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->focusOnUnscaledPoint(DD)V

    goto :goto_0

    .line 241
    :cond_3
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v7

    check-cast v7, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;

    .line 244
    .local v7, "item":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    if-eqz v7, :cond_6

    .line 246
    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getHallId()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v0

    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getHallId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/db/access/DbMaps;->getMapName(J)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "newHallName":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getHallId()J

    move-result-wide v2

    new-instance v5, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;)V

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->changeHalls(Ljava/lang/String;JLjava/lang/String;Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;)V

    goto/16 :goto_0

    .line 253
    .end local v1    # "newHallName":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getButtonFromMapId(Ljava/lang/String;)Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    move-result-object v6

    .line 255
    .local v6, "b":Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    if-eqz v6, :cond_5

    .line 256
    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinX()D

    move-result-wide v2

    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinY()D

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->focusOnUnscaledPoint(DD)V

    .line 257
    invoke-virtual {v6}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->performClick()Z

    goto/16 :goto_0

    .line 259
    :cond_5
    const-string v0, "^ MAP2D: focusOnLocation(): Button is null"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    .end local v6    # "b":Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    :cond_6
    const-string v0, "^ MAP2D: focusOnLocation(): MapItem is null"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private focusOnUnscaledPoint(DD)V
    .locals 9
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ MAP2D: focusOnUnscaledPoint("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 270
    iget v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    float-to-double v4, v4

    mul-double/2addr v4, p1

    iget-object v6, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    invoke-virtual {v6}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    sub-double/2addr v4, v6

    iget-object v6, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    invoke-virtual {v6}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getPaddingLeft()I

    move-result v6

    int-to-double v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 271
    .local v0, "dx":Ljava/lang/Double;
    iget v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    float-to-double v4, v4

    mul-double/2addr v4, p3

    iget-object v6, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    invoke-virtual {v6}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    sub-double/2addr v4, v6

    iget-object v6, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    invoke-virtual {v6}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getPaddingTop()I

    move-result v6

    int-to-double v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 273
    .local v1, "dy":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 274
    .local v2, "intx":I
    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v3

    .line 275
    .local v3, "inty":I
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    invoke-virtual {v4, v2, v3}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->scrollTo(II)V

    .line 276
    return-void
.end method

.method private getButtonFromMapId(Ljava/lang/String;)Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    .locals 5
    .param p1, "mapId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "MapID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 282
    .local v1, "buttonId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    if-nez v3, :cond_0

    .line 283
    const-string v3, "^ MAP2D: getButtonFromMapId(): mapAbs is null"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 307
    :goto_0
    return-object v2

    .line 287
    :cond_0
    invoke-static {v0}, Lcom/eventgenie/android/utils/ValueCheck;->hasContent(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 288
    const-string v3, "^ MAP2D: getButtonFromMapId(): mapId is null/blank"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    invoke-static {v3}, Lcom/eventgenie/android/utils/ValueCheck;->hasContent(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 293
    const-string v3, "^ MAP2D: getButtonFromMapId(): mapIdToButtonIdCollection is null/blank"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_2
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 299
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "buttonId":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 302
    .restart local v1    # "buttonId":Ljava/lang/Integer;
    :cond_3
    if-nez v1, :cond_4

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ MAP2D: getButtonFromMapId(): buttonId from mapId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null/blank"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_4
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    goto :goto_0
.end method

.method private getHallFilterId()J
    .locals 4

    .prologue
    .line 311
    const-wide/16 v0, -0x1

    .line 313
    .local v0, "hallFilterId":J
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mLocationFocus:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 314
    const-string v3, ""

    iput-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mLocationFocus:Ljava/lang/String;

    .line 317
    :cond_0
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mLocationFocus:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 318
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mLocationFocus:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v2

    .line 320
    .local v2, "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    if-eqz v2, :cond_1

    .line 321
    invoke-virtual {v2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v0

    .line 329
    .end local v2    # "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    :cond_1
    :goto_0
    return-wide v0

    .line 324
    :cond_2
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->isCompatibility()Z

    move-result v3

    if-nez v3, :cond_1

    .line 325
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    invoke-virtual {v3}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .locals 1
    .param p1, "mapId"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v0

    return-object v0
.end method

.method private getUserNavigableLocation()Ljava/lang/String;
    .locals 22

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v9}, Lcom/genie_connect/android/db/datastore/Datastore;->getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->getMapItemIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 406
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;>;"
    const/4 v2, 0x0

    .line 407
    .local v2, "closest":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 409
    .local v4, "closestDistance":D
    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getLastKnownX()D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxX:D

    move-wide/from16 v18, v0

    mul-double v12, v16, v18

    .line 410
    .local v12, "myX":D
    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getLastKnownY()D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxY:D

    move-wide/from16 v18, v0

    mul-double v14, v16, v18

    .line 411
    .local v14, "myY":D
    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getLastKnownHallId()J

    move-result-wide v10

    .line 413
    .local v10, "myHallId":J
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 415
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 417
    .local v8, "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    invoke-virtual {v8}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getMapId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 419
    invoke-virtual {v8}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v16

    cmp-long v9, v16, v10

    if-nez v9, :cond_0

    .line 420
    invoke-virtual {v8}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviX()D

    move-result-wide v16

    sub-double v16, v12, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    invoke-virtual {v8}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviY()D

    move-result-wide v18

    sub-double v18, v14, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 424
    .local v6, "distanceFromMe":D
    if-eqz v2, :cond_1

    cmpg-double v9, v6, v4

    if-gez v9, :cond_0

    .line 425
    :cond_1
    move-object v2, v8

    .line 426
    move-wide v4, v6

    goto :goto_0

    .line 432
    .end local v6    # "distanceFromMe":D
    .end local v8    # "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    :cond_2
    if-eqz v2, :cond_3

    .line 433
    invoke-virtual {v2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getMapId()Ljava/lang/String;

    move-result-object v9

    .line 436
    :goto_1
    return-object v9

    :cond_3
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private initMap()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$color;->map_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->setBackgroundColor(I)V

    .line 338
    new-instance v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 339
    return-void
.end method

.method private resetValues()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x1

    .line 709
    iput-wide v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxX:D

    .line 710
    iput-wide v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxY:D

    .line 711
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    .line 712
    return-void
.end method

.method private selectButton(Lcom/eventgenie/android/ui/mapping2d/MapItemView;)V
    .locals 4
    .param p1, "b"    # Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    .prologue
    const/4 v3, 0x0

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ MAP2D: Selecting button \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with linked MapItem \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mSelectedButton:Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    if-eqz v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mSelectedButton:Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 721
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    invoke-virtual {p0, v1, v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->setNavigationColors(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;Z)V

    .line 731
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->setBoothColors(ILjava/lang/String;Lcom/eventgenie/android/ui/mapping2d/MapItemView;)V

    .line 732
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mSelectedButton:Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    .line 733
    return-void

    .line 724
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mSelectedButton:Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    invoke-direct {p0, v3, v0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->setBoothColors(ILjava/lang/String;Lcom/eventgenie/android/ui/mapping2d/MapItemView;)V

    goto :goto_0

    .line 727
    :cond_3
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mSelectedButton:Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    invoke-direct {p0, v3, v0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->setBoothColors(ILjava/lang/String;Lcom/eventgenie/android/ui/mapping2d/MapItemView;)V

    goto :goto_0
.end method

.method private setActivityTitle(J)V
    .locals 7
    .param p1, "hallId"    # J

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->FLOORPLANS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "hallName":Ljava/lang/String;
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 739
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v2

    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/genie_connect/android/db/access/DbMaps;->getMapName(J)Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, "tmp":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const-string v2, "All"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 742
    move-object v0, v1

    .line 746
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 747
    return-void
.end method

.method private setBoothColors(ILjava/lang/String;Lcom/eventgenie/android/ui/mapping2d/MapItemView;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "b"    # Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    .prologue
    .line 751
    invoke-direct {p0, p2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    invoke-static {p0, p1, v0, p3, v1}, Lcom/eventgenie/android/mapping/d2/Coloriser;->setBoothColors(Landroid/content/Context;ILcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;Lcom/eventgenie/android/ui/mapping2d/MapItemView;Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;)V

    .line 757
    return-void
.end method

.method private showDialogDefault(Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "originMapItem"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .param p3, "destinationMapItem"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .prologue
    .line 816
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 817
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v3

    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/access/DbMaps;->getMapName(J)Ljava/lang/String;

    move-result-object v1

    .line 818
    .local v1, "currentHallName":Ljava/lang/String;
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v3

    invoke-virtual {p3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/access/DbMaps;->getMapName(J)Ljava/lang/String;

    move-result-object v2

    .line 821
    .local v2, "destinationHallName":Ljava/lang/String;
    sget v3, Lcom/eventgenie/android/R$string;->map_dialog_warp_title_exiting_hall:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 822
    sget v3, Lcom/eventgenie/android/R$string;->map_dialog_warp_via_other_hall:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 823
    sget v3, Lcom/eventgenie/android/R$string;->map_dialog_warp_via_other_hall_button_next_hall:I

    new-instance v4, Lcom/eventgenie/android/activities/mapping/Map2DActivity$4;

    invoke-direct {v4, p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$4;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 835
    sget v3, Lcom/eventgenie/android/R$string;->map_dialog_warp_via_other_hall_button_target_hall:I

    new-instance v4, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;

    invoke-direct {v4, p0, p3, v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$5;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 850
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 851
    return-void
.end method

.method private showDialogTargetIsNextHall(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)V
    .locals 6
    .param p1, "destinationMapItem"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .prologue
    .line 854
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 855
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v3

    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/access/DbMaps;->getMapName(J)Ljava/lang/String;

    move-result-object v1

    .line 856
    .local v1, "currentHallName":Ljava/lang/String;
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v3

    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/access/DbMaps;->getMapName(J)Ljava/lang/String;

    move-result-object v2

    .line 859
    .local v2, "destinationHallName":Ljava/lang/String;
    sget v3, Lcom/eventgenie/android/R$string;->map_dialog_warp_title_exiting_hall:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 860
    sget v3, Lcom/eventgenie/android/R$string;->map_dialog_warp_to_next_hall:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 861
    sget v3, Lcom/eventgenie/android/R$string;->alert_dialog_yes:I

    new-instance v4, Lcom/eventgenie/android/activities/mapping/Map2DActivity$6;

    invoke-direct {v4, p0, p1, v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$6;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 876
    sget v3, Lcom/eventgenie/android/R$string;->alert_dialog_no:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 877
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 878
    return-void
.end method

.method private showDialogWeAreThere(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)V
    .locals 6
    .param p1, "originMapItem"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .param p2, "destinationMapItem"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .prologue
    .line 881
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 884
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v3

    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/access/DbMaps;->getMapName(J)Ljava/lang/String;

    move-result-object v1

    .line 885
    .local v1, "destinationHallName":Ljava/lang/String;
    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v3

    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/access/DbMaps;->getMapName(J)Ljava/lang/String;

    move-result-object v2

    .line 887
    .local v2, "originHallName":Ljava/lang/String;
    sget v3, Lcom/eventgenie/android/R$string;->map_dialog_warp_title_destination_hall:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 888
    sget v3, Lcom/eventgenie/android/R$string;->map_dialog_warp_from_destination:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 889
    sget v3, Lcom/eventgenie/android/R$string;->alert_dialog_yes:I

    new-instance v4, Lcom/eventgenie/android/activities/mapping/Map2DActivity$7;

    invoke-direct {v4, p0, p2, p1, v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$7;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 904
    sget v3, Lcom/eventgenie/android/R$string;->alert_dialog_no:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 905
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 906
    return-void
.end method

.method private showMyLocation(Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V
    .locals 14
    .param p1, "payload"    # Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;

    .prologue
    .line 652
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 653
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lcom/eventgenie/android/R$color;->holo_blue_light:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 655
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/social/StatusDateUtils;->getInstance(Landroid/content/Context;)Lcom/eventgenie/android/utils/social/StatusDateUtils;

    move-result-object v1

    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getTimestampForLastKnownPosition()J

    move-result-wide v12

    const/4 v7, 0x1

    invoke-virtual {v1, v12, v13, v7}, Lcom/eventgenie/android/utils/social/StatusDateUtils;->getTimeDiffString(JZ)Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "locationTimeAgo":Ljava/lang/String;
    sget v1, Lcom/eventgenie/android/R$string;->emsp_found_location_format:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v7, v12

    invoke-virtual {p0, v1, v7}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 661
    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getLastKnownX()D

    move-result-wide v8

    .line 662
    .local v8, "percentX":D
    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getLastKnownY()D

    move-result-wide v10

    .line 664
    .local v10, "percentY":D
    iget-wide v12, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxX:D

    mul-double v2, v12, v8

    .line 665
    .local v2, "unscaledX":D
    iget-wide v12, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentUnscaledMaxY:D

    mul-double v4, v12, v10

    .line 677
    .local v4, "unscaledY":D
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->focusOnUnscaledPoint(DD)V

    .line 678
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    iget v7, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->setVisitorCurrentLocation(DDLandroid/graphics/Paint;Ljava/lang/Float;)V

    .line 683
    return-void
.end method

.method private showNavigation(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;)V
    .locals 3
    .param p1, "result"    # Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    .prologue
    const/4 v2, 0x1

    .line 909
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->setNavigationColors(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;Z)V

    .line 910
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->toggleWarpVisibility(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;Ljava/lang/Boolean;)V

    .line 911
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 912
    .local v0, "paint":Landroid/graphics/Paint;
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 913
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 914
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 915
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$color;->map_navigation_line:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 916
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    iget v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->setNavigationPath(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;Landroid/graphics/Paint;Ljava/lang/Float;)V

    .line 917
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->invalidate()V

    .line 918
    return-void
.end method

.method private startRouteActivity(I)V
    .locals 7
    .param p1, "direction"    # I

    .prologue
    .line 923
    iget-object v6, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-virtual {v6}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->getSelectedId()J

    move-result-wide v2

    .line 924
    .local v2, "id":J
    iget-object v6, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-virtual {v6}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->getSelectedLocation()Ljava/lang/String;

    move-result-object v4

    .line 925
    .local v4, "location":Ljava/lang/String;
    iget-object v6, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-virtual {v6}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->getSelectedName()Ljava/lang/String;

    move-result-object v5

    .line 927
    .local v5, "name":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/eventgenie/android/activities/mapping/RouteActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 928
    .local v1, "intent":Landroid/content/Intent;
    if-ltz p1, :cond_0

    .line 929
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 930
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v6, "tofrom"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 931
    const-string v6, "ex_id"

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 932
    const-string v6, "entity_location"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v6, "ex_name"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 936
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 937
    return-void
.end method

.method private toggleWarpVisibility(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;Ljava/lang/Boolean;)V
    .locals 11
    .param p1, "result"    # Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    .param p2, "visible"    # Ljava/lang/Boolean;

    .prologue
    const/4 v10, 0x0

    .line 941
    if-nez p1, :cond_1

    .line 967
    :cond_0
    return-void

    .line 943
    :cond_1
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->getNavigationPoints()Ljava/util/List;

    move-result-object v6

    .line 944
    .local v6, "points":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;>;"
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J

    move-result-wide v2

    .line 945
    .local v2, "hallId":J
    const/4 v1, 0x0

    .line 948
    .local v1, "buttonId":Ljava/lang/Integer;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 949
    .local v5, "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    invoke-virtual {v5}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getType()I

    move-result v7

    const/16 v8, 0x33

    if-ne v7, v8, :cond_2

    invoke-virtual {v5}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-nez v7, :cond_2

    .line 950
    iget-object v7, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 951
    iget-object v7, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getNaviId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "buttonId":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 952
    .restart local v1    # "buttonId":Ljava/lang/Integer;
    if-nez v1, :cond_3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 954
    :cond_3
    iget-object v7, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    .line 956
    .local v0, "b":Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ MAP2D: Changing Visibility of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 958
    invoke-virtual {v0, v10}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setVisibility(I)V

    .line 959
    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->animateMapItem(Lcom/eventgenie/android/ui/mapping2d/MapItemView;)V

    goto :goto_0

    .line 961
    :cond_4
    invoke-virtual {v0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->clearAnimation()V

    .line 962
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setVisibility(I)V

    goto :goto_0
.end method

.method private zoom(FF)V
    .locals 28
    .param p1, "oldScale"    # F
    .param p2, "newScale"    # F

    .prologue
    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 977
    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollX()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getPaddingLeft()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-double v8, v0

    .line 978
    .local v8, "centreX":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getScrollY()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;->getHeight()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->getPaddingTop()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-double v10, v0

    .line 980
    .local v10, "centreY":D
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v18, v8, v24

    .line 981
    .local v18, "originalScrollX":D
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v20, v10, v24

    .line 985
    .local v20, "originalScrollY":D
    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J

    move-result-wide v12

    .line 986
    .local v12, "hallId":J
    const/4 v14, 0x0

    .line 988
    .local v14, "isAnimated":Z
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 989
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 991
    .local v22, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v17

    .line 992
    .local v17, "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->isDrawable()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 993
    move-object/from16 v0, v17

    invoke-static {v0, v12, v13}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->isThisFromThisHall(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;J)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v7, v17

    .line 995
    check-cast v7, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;

    .line 996
    .local v7, "drawableItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    .line 998
    .local v6, "b":Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    invoke-virtual {v6}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v23

    if-eqz v23, :cond_1

    .line 999
    const/4 v14, 0x1

    .line 1000
    invoke-virtual {v6}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->clearAnimation()V

    .line 1004
    :cond_1
    invoke-virtual {v6}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1006
    .local v16, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getWidth()D

    move-result-wide v24

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 1007
    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getHeight()D

    move-result-wide v24

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 1008
    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinX()D

    move-result-wide v24

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1009
    invoke-virtual {v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getShapeBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;->getMinY()D

    move-result-wide v24

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1011
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1013
    if-eqz v14, :cond_0

    .line 1014
    const/4 v14, 0x0

    .line 1015
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->animateMapItem(Lcom/eventgenie/android/ui/mapping2d/MapItemView;)V

    goto/16 :goto_0

    .line 1020
    .end local v6    # "b":Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    .end local v7    # "drawableItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    .end local v16    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v17    # "mapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .end local v22    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->focusOnUnscaledPoint(DD)V

    .line 1021
    return-void
.end method

.method private zoomIn()V
    .locals 3

    .prologue
    .line 1024
    iget v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    .line 1025
    .local v0, "oldScale":F
    iget v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    .line 1026
    iget v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/ZoomHelper;->limitZoom(F)F

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    .line 1028
    iget v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 1032
    :goto_0
    return-void

    .line 1030
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    iget v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->setScaleFactor(F)V

    .line 1031
    iget v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    invoke-direct {p0, v0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->zoom(FF)V

    goto :goto_0
.end method

.method private zoomOut()V
    .locals 3

    .prologue
    .line 1035
    iget v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    .line 1037
    .local v0, "oldScale":F
    iget v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    const v2, 0x3e4ccccd    # 0.2f

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    .line 1039
    iget v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    invoke-static {v1}, Lcom/eventgenie/android/mapping/d2/ZoomHelper;->limitZoom(F)F

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    .line 1040
    iget v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 1042
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    iget v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->setScaleFactor(F)V

    .line 1043
    iget v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    invoke-direct {p0, v0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->zoom(FF)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 343
    invoke-super/range {p0 .. p3}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 345
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_2

    .line 346
    if-nez p1, :cond_9

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v3, v12, v13, v14}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->setNavigationPath(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;Landroid/graphics/Paint;Ljava/lang/Float;)V

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 350
    .local v2, "b":Landroid/os/Bundle;
    if-eqz v2, :cond_8

    .line 352
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->setNavigationColors(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;Z)V

    .line 355
    const/4 v11, 0x0

    .line 357
    .local v11, "navigatingFromMyLocation":Z
    const-string v3, "from"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v12, ""

    invoke-static {v3, v12}, Lcom/eventgenie/android/utils/ValueCheck;->checkForNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "locationRouteFrom":Ljava/lang/String;
    const-string/jumbo v3, "to"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v12, ""

    invoke-static {v3, v12}, Lcom/eventgenie/android/utils/ValueCheck;->checkForNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "locationRouteTo":Ljava/lang/String;
    const-string v3, "mylocation"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getUserNavigableLocation()Ljava/lang/String;

    move-result-object v4

    .line 362
    const/4 v11, 0x1

    .line 365
    :cond_0
    invoke-static {v4}, Lcom/eventgenie/android/utils/ValueCheck;->hasContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v5}, Lcom/eventgenie/android/utils/ValueCheck;->hasContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 367
    const/4 v8, 0x0

    .line 369
    .local v8, "isMultiHallNavigation":Z
    if-eqz v11, :cond_4

    .line 370
    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getLastKnownHallId()J

    move-result-wide v12

    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J

    move-result-wide v14

    cmp-long v3, v12, v14

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    const/4 v8, 0x1

    .line 377
    :goto_0
    if-eqz v8, :cond_7

    const-wide/16 v6, -0x1

    .local v6, "hallId":J
    :goto_1
    move-object/from16 v3, p0

    .line 379
    invoke-direct/range {v3 .. v8}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->doNavigation(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 397
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v4    # "locationRouteFrom":Ljava/lang/String;
    .end local v5    # "locationRouteTo":Ljava/lang/String;
    .end local v6    # "hallId":J
    .end local v8    # "isMultiHallNavigation":Z
    .end local v11    # "navigatingFromMyLocation":Z
    :cond_2
    :goto_2
    return-void

    .line 370
    .restart local v2    # "b":Landroid/os/Bundle;
    .restart local v4    # "locationRouteFrom":Ljava/lang/String;
    .restart local v5    # "locationRouteTo":Ljava/lang/String;
    .restart local v8    # "isMultiHallNavigation":Z
    .restart local v11    # "navigatingFromMyLocation":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 373
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const/4 v8, 0x1

    :goto_3
    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 377
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    goto :goto_1

    .line 382
    .end local v4    # "locationRouteFrom":Ljava/lang/String;
    .end local v5    # "locationRouteTo":Ljava/lang/String;
    .end local v8    # "isMultiHallNavigation":Z
    .end local v11    # "navigatingFromMyLocation":Z
    :catch_0
    move-exception v9

    .line 383
    .local v9, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ MAP2D: onActivityResult(RouteActivity): "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ MAP2D:                                : mapIdToButtonIdCollection content? ="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    invoke-static {v12}, Lcom/eventgenie/android/utils/ValueCheck;->hasContent(Ljava/util/Map;)Z

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 385
    sget v3, Lcom/eventgenie/android/R$string;->toast_navigation_no_path:I

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    goto :goto_2

    .line 388
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_8
    const-string v3, "^ MAP2D: onActivityResult(RouteActivity): bundle is null"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_2

    .line 390
    .end local v2    # "b":Landroid/os/Bundle;
    :cond_9
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 392
    .restart local v2    # "b":Landroid/os/Bundle;
    const-string v3, "entity_location"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 394
    .local v10, "location":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->focusOnLocation(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCategoryClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 440
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/others/categories/TagListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 443
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "associated_entity_name"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 445
    const-string v2, "hide_actionbar"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 452
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 456
    move-object v0, p1

    check-cast v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    .line 458
    .local v0, "b":Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    invoke-virtual {v0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getItemType()I

    move-result v5

    const/16 v6, 0x33

    if-eq v5, v6, :cond_1

    .line 459
    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->selectButton(Lcom/eventgenie/android/ui/mapping2d/MapItemView;)V

    .line 460
    iget-object v5, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->showOverlay(Ljava/lang/String;)V

    .line 483
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-virtual {v5}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->invalidateOverlay()V

    .line 484
    return-void

    .line 463
    :cond_1
    iget-object v5, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    invoke-virtual {v5}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 465
    iget-object v5, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    invoke-virtual {v5}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->getDestination()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v1

    .line 466
    .local v1, "destinationMapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    iget-object v5, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    invoke-virtual {v5}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->getOrigin()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v4

    .line 468
    .local v4, "originMapItem":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 469
    iget-object v6, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mNavigationResult:Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J

    move-result-wide v8

    invoke-virtual {v6, v5, v8, v9}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->calculateHallToLoad(Ljava/lang/String;J)J

    move-result-wide v2

    .line 470
    .local v2, "nextHall":J
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-nez v5, :cond_2

    .line 471
    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->showDialogTargetIsNextHall(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)V

    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 474
    invoke-direct {p0, v4, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->showDialogWeAreThere(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)V

    goto :goto_0

    .line 476
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v4, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->showDialogDefault(Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)V

    goto :goto_0
.end method

.method public onClickDirectionsFrom(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->startRouteActivity(I)V

    .line 488
    return-void
.end method

.method public onClickDirectionsTo(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 491
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->startRouteActivity(I)V

    .line 492
    return-void
.end method

.method public onClickExhibitorDetails(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 495
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-virtual {v4}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->getSelectedId()J

    move-result-wide v2

    .line 496
    .local v2, "id":J
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-virtual {v4}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->getSelectedEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    .line 498
    .local v0, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    const/4 v4, 0x0

    invoke-static {p0, v0, v2, v3, v4}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .line 506
    .local v1, "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0
.end method

.method public onClickHideOverlay(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-virtual {v0}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->hideOverlay()V

    .line 512
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 516
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 517
    sget v0, Lcom/eventgenie/android/R$layout;->activity_mapping2d:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->setContentView(I)V

    .line 518
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    .line 520
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 521
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 523
    .local v6, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->FLOORPLANS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v3, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 525
    if-eqz v6, :cond_0

    .line 526
    const-string v0, "hall_filter"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    .line 527
    const-string v0, "location_focus"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mLocationFocus:Ljava/lang/String;

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 531
    invoke-static {p0}, Lcom/eventgenie/android/mapping/navigation/NavigationHelper;->isNavigationAvailable(Landroid/content/Context;)Z

    move-result v5

    .line 533
    .local v5, "naviAvailable":Z
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 534
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->ROUTE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, v5}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 535
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->MY_LOCATION:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->useEmsp()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 537
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setBackgroundToTransparent()V

    .line 539
    sget v0, Lcom/eventgenie/android/R$id;->btn_exhibitor_details:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 540
    .local v7, "exhibitorDetails":Landroid/widget/Button;
    sget v0, Lcom/eventgenie/android/R$string;->details_title_format:I

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->EXHIBITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v9, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v4, v9}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 544
    sget v0, Lcom/eventgenie/android/R$id;->map2d_scroller:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mTwoDscroller:Lcom/eventgenie/android/ui/mapping2d/TwoDScrollView;

    .line 545
    sget v0, Lcom/eventgenie/android/R$id;->exhibitor_overlay:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mExibitorOverlay:Landroid/view/ViewGroup;

    .line 547
    sget v0, Lcom/eventgenie/android/R$id;->map2d_absolutelayout:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    .line 548
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    iget v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mCurrentScaleFactor:F

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->setScaleFactor(F)V

    .line 549
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    new-instance v1, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$PinchHandler;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)V

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->setHandler(Landroid/os/Handler;)V

    .line 551
    sget v0, Lcom/eventgenie/android/R$id;->map2d_zoom:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ZoomControls;

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mZoomControls:Landroid/widget/ZoomControls;

    .line 552
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mZoomControls:Landroid/widget/ZoomControls;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V

    .line 553
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mZoomControls:Landroid/widget/ZoomControls;

    new-instance v1, Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mZoomControls:Landroid/widget/ZoomControls;

    new-instance v1, Lcom/eventgenie/android/activities/mapping/Map2DActivity$2;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$2;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    new-instance v0, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mExibitorOverlay:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mZoomControls:Landroid/widget/ZoomControls;

    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ZoomControls;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Z)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    .line 569
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    if-eqz v0, :cond_1

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ MAP2D: Hallfilter: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 572
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ MAP2D: Locationfocus: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mLocationFocus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 573
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->initMap()V

    .line 574
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 579
    packed-switch p1, :pswitch_data_0

    .line 587
    const/4 v0, 0x0

    .line 589
    .local v0, "dialog":Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 581
    .end local v0    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    sget v1, Lcom/eventgenie/android/R$string;->please_wait:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->loading_map:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v4, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 582
    .restart local v0    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 584
    .end local v0    # "dialog":Landroid/app/Dialog;
    :pswitch_1
    sget v1, Lcom/eventgenie/android/R$string;->please_wait:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->calculating_route:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v4, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 585
    .restart local v0    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 594
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 595
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 624
    :goto_0
    return v0

    .line 598
    :sswitch_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->zoomIn()V

    goto :goto_0

    .line 601
    :sswitch_1
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->zoomOut()V

    goto :goto_0

    .line 604
    :sswitch_2
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mLocationFocus:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->focusOnLocation(Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :sswitch_3
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->setMapItemStore(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;)V

    .line 608
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    if-nez v1, :cond_0

    .line 609
    new-instance v1, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    const-string v2, "Hall"

    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;-><init>(Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    .line 611
    :cond_0
    new-instance v1, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;

    invoke-direct {v1, p0, v3}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/activities/mapping/Map2DActivity$1;)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 614
    :sswitch_4
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->isOverlayVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mOverlayManager:Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;

    invoke-virtual {v1}, Lcom/eventgenie/android/mapping/d2/overlaymanager/OverlayManager;->hideOverlay()V

    goto :goto_0

    .line 617
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->finish()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 624
    goto :goto_0

    .line 595
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x22 -> :sswitch_2
        0x2e -> :sswitch_3
        0x45 -> :sswitch_1
        0x46 -> :sswitch_0
        0x51 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLocationFound(Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V
    .locals 6
    .param p1, "payload"    # Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;

    .prologue
    .line 630
    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getLastKnownHallId()J

    move-result-wide v2

    .line 632
    .local v2, "myHallId":J
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getHallFilterId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/db/access/DbMaps;->getMapName(J)Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "myHallName":Ljava/lang/String;
    const/4 v4, 0x0

    new-instance v5, Lcom/eventgenie/android/activities/mapping/Map2DActivity$3;

    invoke-direct {v5, p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity$3;-><init>(Lcom/eventgenie/android/activities/mapping/Map2DActivity;Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->changeHalls(Ljava/lang/String;JLjava/lang/String;Lcom/eventgenie/android/activities/mapping/Map2DActivity$AsyncMapDataLoader;)V

    .line 649
    .end local v1    # "myHallName":Ljava/lang/String;
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->showMyLocation(Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V

    goto :goto_0
.end method

.method public onMyLocationClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 690
    invoke-super {p0}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;->lookupLocation()V

    .line 691
    return-void
.end method

.method public onRouteClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 694
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->startRouteActivity(I)V

    .line 695
    return-void
.end method

.method public onSearchClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 699
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->OpenEntityPicker(I)V

    .line 700
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 704
    invoke-super {p0}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;->onStart()V

    .line 705
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->actionBarProcess()V

    .line 706
    return-void
.end method

.method public setNavigationColors(Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;Z)V
    .locals 7
    .param p1, "result"    # Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;
    .param p2, "clear"    # Z

    .prologue
    const/4 v6, 0x0

    .line 760
    if-nez p1, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->getOrigin()Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, "origin":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/NavigationResult;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "destination":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 767
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 768
    .local v1, "id":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 769
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 770
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 771
    invoke-direct {p0, v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;

    check-cast v3, Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    .end local v3    # "v":Landroid/view/View;
    iget-object v5, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    invoke-static {p0, v6, v4, v3, v5}, Lcom/eventgenie/android/mapping/d2/Coloriser;->setBoothColors(Landroid/content/Context;ILcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;Lcom/eventgenie/android/ui/mapping2d/MapItemView;Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;)V

    .line 779
    :cond_2
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "id":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 780
    .restart local v1    # "id":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 781
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 782
    .restart local v3    # "v":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;

    check-cast v3, Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    .end local v3    # "v":Landroid/view/View;
    iget-object v5, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    invoke-static {p0, v6, v4, v3, v5}, Lcom/eventgenie/android/mapping/d2/Coloriser;->setBoothColors(Landroid/content/Context;ILcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;Lcom/eventgenie/android/ui/mapping2d/MapItemView;Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;)V

    goto :goto_0

    .line 790
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_3
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 791
    .restart local v1    # "id":Ljava/lang/Integer;
    if-eqz v1, :cond_4

    .line 792
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 793
    .restart local v3    # "v":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 794
    const/4 v5, 0x2

    invoke-direct {p0, v2}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;

    check-cast v3, Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    .end local v3    # "v":Landroid/view/View;
    iget-object v6, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    invoke-static {p0, v5, v4, v3, v6}, Lcom/eventgenie/android/mapping/d2/Coloriser;->setBoothColors(Landroid/content/Context;ILcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;Lcom/eventgenie/android/ui/mapping2d/MapItemView;Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;)V

    .line 802
    :cond_4
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapIdToButtonIdCollection:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "id":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 803
    .restart local v1    # "id":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 804
    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mMapLayout:Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/ui/mapping2d/AbsoluteLayoutEg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 805
    .restart local v3    # "v":Landroid/view/View;
    const/4 v5, 0x3

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;

    check-cast v3, Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    .end local v3    # "v":Landroid/view/View;
    iget-object v6, p0, Lcom/eventgenie/android/activities/mapping/Map2DActivity;->mHallFilter:Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    invoke-static {p0, v5, v4, v3, v6}, Lcom/eventgenie/android/mapping/d2/Coloriser;->setBoothColors(Landroid/content/Context;ILcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;Lcom/eventgenie/android/ui/mapping2d/MapItemView;Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;)V

    goto/16 :goto_0
.end method

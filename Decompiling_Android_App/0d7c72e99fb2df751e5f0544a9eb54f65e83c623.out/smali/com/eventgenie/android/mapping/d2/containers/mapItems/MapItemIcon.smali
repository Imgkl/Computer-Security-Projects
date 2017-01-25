.class public final Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemIcon;
.super Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
.source "MapItemIcon.java"

# interfaces
.implements Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/InterfaceMapItem;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V
    .locals 1
    .param p1, "mapId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "points"    # [Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .prologue
    .line 46
    invoke-direct {p0, p3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;-><init>([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 48
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemIcon;->mMapId:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemIcon;->label:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemIcon;->adjacencies:Ljava/util/Set;

    .line 51
    return-void
.end method

.method private static getAnnotationResource(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/genie_connect/android/db/config/IconManager;->getMappingIconAnnotation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createMapItemView(Landroid/content/Context;)Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v1, Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    invoke-direct {v1, p1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v1, "view":Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemIcon;->getZeroBasedPoints()[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setZeroBasedShapePoints([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 58
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemIcon;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setItemType(I)V

    .line 59
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemIcon;->getzOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setzOrder(I)V

    .line 60
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemIcon;->getTextBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setTextBoundingBox(Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;)V

    .line 62
    invoke-static {p1, p0, v1}, Lcom/eventgenie/android/mapping/d2/Coloriser;->setAnnotationColors(Landroid/content/Context;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;Lcom/eventgenie/android/ui/mapping2d/MapItemView;)V

    .line 63
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemIcon;->getDisplayedString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{ANNOT-IMG}"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemIcon;->getAnnotationResource(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 64
    .local v0, "resource":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setBackgroundResource(I)V

    .line 66
    :cond_0
    return-object v1
.end method

.method public displaysText()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x3

    return v0
.end method

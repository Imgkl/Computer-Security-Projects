.class public final Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBoothWithIcon;
.super Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
.source "MapItemBoothWithIcon.java"

# interfaces
.implements Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/InterfaceMapItem;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V
    .locals 1
    .param p1, "mapId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "points"    # [Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .prologue
    .line 45
    invoke-direct {p0, p3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;-><init>([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 47
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBoothWithIcon;->mMapId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBoothWithIcon;->label:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBoothWithIcon;->adjacencies:Ljava/util/Set;

    .line 50
    return-void
.end method

.method private static getAnnotationResource(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/genie_connect/android/db/config/IconManager;->getMappingIconAnnotation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createMapItemView(Landroid/content/Context;)Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    new-instance v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "view":Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBoothWithIcon;->getZeroBasedPoints()[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setZeroBasedShapePoints([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 57
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBoothWithIcon;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setItemType(I)V

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setFocusable(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBoothWithIcon;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{ANNOT-FCL}"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{ANNOT-IMG}"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBoothWithIcon;->getMapId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setTag(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBoothWithIcon;->getzOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setzOrder(I)V

    .line 64
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBoothWithIcon;->getTextBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setTextBoundingBox(Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;)V

    .line 67
    return-object v0
.end method

.method public displaysText()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x4

    return v0
.end method

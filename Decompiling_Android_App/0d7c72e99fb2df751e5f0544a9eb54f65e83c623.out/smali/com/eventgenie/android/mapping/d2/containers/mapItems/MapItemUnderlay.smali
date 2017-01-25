.class public final Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemUnderlay;
.super Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
.source "MapItemUnderlay.java"

# interfaces
.implements Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/InterfaceMapItem;


# static fields
.field private static final BASE_ZORDER:I = -0x2710


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V
    .locals 1
    .param p1, "mapId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "points"    # [Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .prologue
    .line 47
    invoke-direct {p0, p3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;-><init>([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 49
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemUnderlay;->mMapId:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemUnderlay;->label:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemUnderlay;->adjacencies:Ljava/util/Set;

    .line 52
    return-void
.end method


# virtual methods
.method public createMapItemView(Landroid/content/Context;)Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    new-instance v0, Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "view":Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemUnderlay;->getZeroBasedPoints()[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setZeroBasedShapePoints([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 59
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemUnderlay;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setItemType(I)V

    .line 60
    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemUnderlay;->getzOrder()I

    move-result v1

    add-int/lit16 v1, v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setzOrder(I)V

    .line 62
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemUnderlay;->getTextBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setTextBoundingBox(Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;)V

    .line 64
    invoke-static {p1, p0, v0}, Lcom/eventgenie/android/mapping/d2/Coloriser;->setAnnotationColors(Landroid/content/Context;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;Lcom/eventgenie/android/ui/mapping2d/MapItemView;)V

    .line 66
    return-object v0
.end method

.method public displaysText()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x5

    return v0
.end method

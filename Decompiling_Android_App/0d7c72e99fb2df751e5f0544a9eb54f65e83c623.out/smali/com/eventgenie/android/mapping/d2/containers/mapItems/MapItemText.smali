.class public final Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemText;
.super Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
.source "MapItemText.java"

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

    .line 47
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemText;->mMapId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemText;->label:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemText;->adjacencies:Ljava/util/Set;

    .line 50
    return-void
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
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemText;->getZeroBasedPoints()[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setZeroBasedShapePoints([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 57
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemText;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setItemType(I)V

    .line 58
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setBackgroundResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemText;->getDisplayedString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{ANNOT-TEXT}"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemText;->getzOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setzOrder(I)V

    .line 63
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemText;->getTextBoundingBox()Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setTextBoundingBox(Lcom/eventgenie/android/mapping/d2/containers/mapItems/ScalableBoundingBox;)V

    .line 65
    invoke-static {p1, p0, v0}, Lcom/eventgenie/android/mapping/d2/Coloriser;->setAnnotationColors(Landroid/content/Context;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;Lcom/eventgenie/android/ui/mapping2d/MapItemView;)V

    .line 66
    return-object v0
.end method

.method public displaysText()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

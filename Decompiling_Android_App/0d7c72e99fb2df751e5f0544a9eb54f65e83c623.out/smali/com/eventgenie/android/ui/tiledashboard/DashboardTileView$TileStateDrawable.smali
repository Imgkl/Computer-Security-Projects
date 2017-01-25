.class public Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "DashboardTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TileStateDrawable"
.end annotation


# instance fields
.field final mMyHeight:I

.field final mMyWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;->mMyWidth:I

    .line 95
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;->mMyHeight:I

    .line 96
    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;->mMyHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;->mMyWidth:I

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 8
    .param p1, "states"    # [I

    .prologue
    const/4 v7, 0x0

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "enabled":Z
    const/4 v4, 0x0

    .line 113
    .local v4, "pressed":Z
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v5, v0, v2

    .line 114
    .local v5, "state":I
    const v6, 0x101009e

    if-ne v5, v6, :cond_1

    .line 115
    const/4 v1, 0x1

    .line 113
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const v6, 0x10100a7

    if-ne v5, v6, :cond_0

    .line 117
    const/4 v4, 0x1

    goto :goto_1

    .line 120
    .end local v5    # "state":I
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 121
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 122
    sget-object v6, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->_pressedFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 130
    :goto_2
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;->invalidateSelf()V

    .line 132
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v6

    return v6

    .line 123
    :cond_3
    if-nez v1, :cond_4

    .line 124
    invoke-virtual {p0, v7}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 125
    const/16 v6, 0x64

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;->setAlpha(I)V

    goto :goto_2

    .line 127
    :cond_4
    invoke-virtual {p0, v7}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2
.end method

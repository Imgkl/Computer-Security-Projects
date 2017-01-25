.class public Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;
.super Landroid/widget/ImageView;
.source "DashboardTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;
    }
.end annotation


# static fields
.field public static final INVALID_INDEX:I = -0x1

.field protected static final _disabledAlpha:I = 0x64

.field protected static final _pressedFilter:Landroid/graphics/ColorFilter;


# instance fields
.field private mModuleIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, -0x333334

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->_pressedFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->mModuleIndex:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->mModuleIndex:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->mModuleIndex:I

    .line 61
    return-void
.end method


# virtual methods
.method public getModuleIndex()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->mModuleIndex:I

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 74
    new-instance v0, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView$TileStateDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "UnsupportedOperationException: Please use setBackgroundDrawable() or setBackground()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setModuleIndex(I)V
    .locals 0
    .param p1, "mModuleIndex"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/eventgenie/android/ui/tiledashboard/DashboardTileView;->mModuleIndex:I

    .line 69
    return-void
.end method

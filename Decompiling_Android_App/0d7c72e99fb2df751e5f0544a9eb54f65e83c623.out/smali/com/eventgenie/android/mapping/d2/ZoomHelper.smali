.class public Lcom/eventgenie/android/mapping/d2/ZoomHelper;
.super Ljava/lang/Object;
.source "ZoomHelper.java"


# static fields
.field public static final INITIAL_ZOOM_LEVEL:F = 0.6f

.field public static final ZOOM_INCREMENT:F = 0.2f

.field public static final ZOOM_MAX:F = 3.0f

.field public static final ZOOM_MIN:F = 0.2f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static limitZoom(F)F
    .locals 2
    .param p0, "targetScale"    # F

    .prologue
    .line 41
    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

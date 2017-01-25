.class public Lcom/eventgenie/android/ui/util/EclairMotionEvent;
.super Lcom/eventgenie/android/ui/util/WrapMotionEvent;
.source "EclairMotionEvent.java"


# direct methods
.method protected constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getPointerCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/eventgenie/android/ui/util/EclairMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public getPointerId(I)I
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/eventgenie/android/ui/util/EclairMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method public getX(I)F
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/util/EclairMotionEvent;->getPointerCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/eventgenie/android/ui/util/EclairMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getY(I)F
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/util/EclairMotionEvent;->getPointerCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/eventgenie/android/ui/util/EclairMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$5;
.super Ljava/lang/Object;
.source "ActivityStreamDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$5;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 520
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 521
    .local v2, "downP":Landroid/graphics/PointF;
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 522
    .local v1, "curP":Landroid/graphics/PointF;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 523
    .local v0, "act":I
    if-eqz v0, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-ne v0, v4, :cond_1

    .line 524
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 525
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 529
    :cond_1
    return v5
.end method

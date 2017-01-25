.class Lcom/eventgenie/android/activities/products/FullScreenCarousel$3;
.super Ljava/lang/Object;
.source "FullScreenCarousel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/products/FullScreenCarousel;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$3;->this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 173
    if-nez p1, :cond_0

    .line 179
    :goto_0
    return v4

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$3;->this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    const/4 v1, 0x1

    # invokes: Lcom/eventgenie/android/activities/products/FullScreenCarousel;->changeVisibility(Z)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->access$700(Lcom/eventgenie/android/activities/products/FullScreenCarousel;Z)V

    .line 175
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$3;->this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    # getter for: Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mFadeTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->access$800(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 176
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$3;->this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mFadeTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->access$802(Lcom/eventgenie/android/activities/products/FullScreenCarousel;Ljava/util/Timer;)Ljava/util/Timer;

    .line 177
    iget-object v0, p0, Lcom/eventgenie/android/activities/products/FullScreenCarousel$3;->this$0:Lcom/eventgenie/android/activities/products/FullScreenCarousel;

    # getter for: Lcom/eventgenie/android/activities/products/FullScreenCarousel;->mFadeTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel;->access$800(Lcom/eventgenie/android/activities/products/FullScreenCarousel;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/eventgenie/android/activities/products/FullScreenCarousel$3$1;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/products/FullScreenCarousel$3$1;-><init>(Lcom/eventgenie/android/activities/products/FullScreenCarousel$3;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

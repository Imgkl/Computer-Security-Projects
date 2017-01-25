.class Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$3$1;
.super Ljava/util/TimerTask;
.source "FullScreenCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$3;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$3;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$3$1;->this$1:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$3$1;->this$1:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$3;

    iget-object v0, v0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$3;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    # invokes: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->TimerMethod()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$900(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)V

    .line 183
    return-void
.end method

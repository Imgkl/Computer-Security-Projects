.class Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$2;
.super Ljava/lang/Object;
.source "FullScreenCarouselActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$2;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$2;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    const/4 v1, 0x0

    # invokes: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->changeVisibility(Z)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$700(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;Z)V

    .line 111
    return-void
.end method

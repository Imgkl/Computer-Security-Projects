.class Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;
.super Landroid/os/Handler;
.source "FullScreenCarouselActivity.java"


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
    .line 86
    iput-object p1, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 91
    sget v2, Lcom/eventgenie/android/R$id;->positionId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "pos":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    # getter for: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mGallery:Landroid/widget/Gallery;
    invoke-static {v3}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$000(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Landroid/widget/Gallery;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Gallery;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    # getter for: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mTvPhotoDesc1:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$100(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    # getter for: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mDescription1:Ljava/lang/String;
    invoke-static {v3}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$200(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$300(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    # getter for: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mTvPhotoDesc2:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$400(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    # getter for: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mDescription2:Ljava/lang/String;
    invoke-static {v3}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$500(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$300(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    # getter for: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mTvPhotoPosition:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$600(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    const/4 v3, 0x1

    # invokes: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->changeVisibility(Z)V
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$700(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;Z)V

    .line 99
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    # getter for: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mFadeTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$800(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 100
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mFadeTimer:Ljava/util/Timer;
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$802(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 101
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;

    # getter for: Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->mFadeTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;->access$800(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1$1;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1$1;-><init>(Lcom/eventgenie/android/activities/activitystream/activities/FullScreenCarouselActivity$1;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 104
    .end local v1    # "pos":Ljava/lang/String;
    :cond_0
    return-void
.end method

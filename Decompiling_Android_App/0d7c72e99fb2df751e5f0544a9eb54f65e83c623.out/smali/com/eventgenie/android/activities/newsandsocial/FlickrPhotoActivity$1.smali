.class Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;
.super Landroid/os/Handler;
.source "FlickrPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 110
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    sget v3, Lcom/eventgenie/android/R$string;->tag_image_position:I

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "pos":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->gallery:Landroid/widget/Gallery;
    invoke-static {v3}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Landroid/widget/Gallery;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Gallery;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->tvPhotoTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$100(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    sget v4, Lcom/eventgenie/android/R$string;->tag_image_caption:I

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->tvPhotoDate:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$200(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    sget v4, Lcom/eventgenie/android/R$string;->tag_image_date:I

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->tvPhotoPosition:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$300(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    sget v4, Lcom/eventgenie/android/R$string;->tag_image_flicker_url_mobile:I

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->flickerPhotoUrlMobile:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$402(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    sget v4, Lcom/eventgenie/android/R$string;->tag_image_flicker_url_desktop:I

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->flickerPhotoUrlDesktop:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$502(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    const/4 v3, 0x1

    # invokes: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->changeVisibility(Z)V
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$600(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;Z)V

    .line 120
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->fadeTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$700(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 121
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->fadeTimer:Ljava/util/Timer;
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$702(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 122
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->fadeTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$700(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1$1;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1$1;-><init>(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$1;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 125
    .end local v1    # "pos":Ljava/lang/String;
    :cond_0
    return-void
.end method

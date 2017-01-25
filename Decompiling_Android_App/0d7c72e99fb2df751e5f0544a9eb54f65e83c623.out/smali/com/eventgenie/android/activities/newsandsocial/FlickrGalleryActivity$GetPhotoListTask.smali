.class Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;
.super Landroid/os/AsyncTask;
.source "FlickrGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPhotoListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/16 v2, 0x64

    const/4 v5, 0x0

    .line 114
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->photosetId:Ljava/lang/String;
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->get()Lcom/eventgenie/android/utils/social/flickr/Flickr;

    move-result-object v0

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->photosetId:Ljava/lang/String;
    invoke-static {v3}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;)Ljava/lang/String;

    move-result-object v1

    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->getPublicPhotos(Ljava/lang/String;IILandroid/content/Context;Z)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 118
    :cond_0
    new-instance v1, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;

    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->userId:Ljava/lang/String;
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->access$100(Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "user":Lcom/eventgenie/android/utils/social/flickr/Flickr$User;
    invoke-static {}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->get()Lcom/eventgenie/android/utils/social/flickr/Flickr;

    move-result-object v0

    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->getPublicPhotos(Lcom/eventgenie/android/utils/social/flickr/Flickr$User;IILandroid/content/Context;Z)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;->doInBackground([Ljava/lang/Integer;)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V
    .locals 3
    .param p1, "result"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .prologue
    .line 125
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->hasPhotos()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;

    # invokes: Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->populateGrid(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V
    invoke-static {v0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->access$200(Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V

    .line 136
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_LEFT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 138
    return-void

    .line 127
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->hasPhotos()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;

    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;

    sget v1, Lcom/eventgenie/android/R$string;->msg_no_photos:I

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity;

    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrGalleryActivity$GetPhotoListTask;->onPostExecute(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V

    return-void
.end method

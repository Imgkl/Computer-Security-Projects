.class Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$GetPhotoListTask;
.super Landroid/os/AsyncTask;
.source "FlickrPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;
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
.field final synthetic this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/16 v2, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 284
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$1000(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->get()Lcom/eventgenie/android/utils/social/flickr/Flickr;

    move-result-object v0

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    invoke-static {v3}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$1000(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Ljava/lang/String;

    move-result-object v1

    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->getPublicPhotos(Ljava/lang/String;IILandroid/content/Context;Z)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    .line 287
    :cond_0
    new-instance v1, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;

    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$1100(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, "user":Lcom/eventgenie/android/utils/social/flickr/Flickr$User;
    invoke-static {}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->get()Lcom/eventgenie/android/utils/social/flickr/Flickr;

    move-result-object v0

    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->getPublicPhotos(Lcom/eventgenie/android/utils/social/flickr/Flickr$User;IILandroid/content/Context;Z)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 279
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$GetPhotoListTask;->doInBackground([Ljava/lang/Integer;)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V
    .locals 3
    .param p1, "result"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .prologue
    .line 294
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->hasPhotos()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    invoke-static {v0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$1200(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->gallery:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)Landroid/widget/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    invoke-static {v1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->access$1300(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 301
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    .line 298
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 279
    check-cast p1, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotoActivity$GetPhotoListTask;->onPostExecute(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V

    return-void
.end method

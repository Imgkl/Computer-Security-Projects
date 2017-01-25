.class Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;
.super Landroid/os/AsyncTask;
.source "FlickrPhotosetListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPhotosetsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mUserId:Ljava/lang/String;
    invoke-static {v1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "user":Lcom/eventgenie/android/utils/social/flickr/Flickr$User;
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    invoke-static {}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->get()Lcom/eventgenie/android/utils/social/flickr/Flickr;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->getUserInfo(Lcom/eventgenie/android/utils/social/flickr/Flickr$User;Landroid/content/Context;Z)Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;

    move-result-object v2

    # setter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mUserInfo:Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;
    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->access$102(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;)Lcom/eventgenie/android/utils/social/flickr/Flickr$UserInfo;

    .line 152
    invoke-static {}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->get()Lcom/eventgenie/android/utils/social/flickr/Flickr;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->getPhotosets(Lcom/eventgenie/android/utils/social/flickr/Flickr$User;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;>;"
    const/4 v2, 0x0

    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    invoke-virtual {v1, p1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->getListData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->mData:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->access$202(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;Ljava/util/List;)Ljava/util/List;

    .line 159
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    # invokes: Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->populateList()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->access$300(Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;)V

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    invoke-virtual {v0, v2, v2}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->showIndicator(ZZ)V

    .line 168
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity$GetPhotosetsTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FlickrPhotosetListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

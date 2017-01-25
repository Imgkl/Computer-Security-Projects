.class Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;
.super Landroid/os/AsyncTask;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;
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


# static fields
.field private static final PHOTO_COUNT:I = 0x64


# instance fields
.field private photosetId:Ljava/lang/String;

.field final synthetic this$0:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "photosetId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;->photosetId:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;->userId:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/16 v2, 0x64

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;->photosetId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->get()Lcom/eventgenie/android/utils/social/flickr/Flickr;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;->photosetId:Ljava/lang/String;

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->access$000(Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->getPublicPhotos(Ljava/lang/String;IILandroid/content/Context;Z)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 123
    :cond_0
    new-instance v1, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;

    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;->userId:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/eventgenie/android/utils/social/flickr/Flickr$User;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "user":Lcom/eventgenie/android/utils/social/flickr/Flickr$User;
    invoke-static {}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->get()Lcom/eventgenie/android/utils/social/flickr/Flickr;

    move-result-object v0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->access$000(Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/eventgenie/android/utils/social/flickr/Flickr;->getPublicPhotos(Lcom/eventgenie/android/utils/social/flickr/Flickr$User;IILandroid/content/Context;Z)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;->doInBackground([Ljava/lang/Integer;)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V
    .locals 1
    .param p1, "result"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;

    # setter for: Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mResult:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    invoke-static {v0, p1}, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->access$102(Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .line 132
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->access$200(Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;)Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->access$200(Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;)Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;->onPostExecute(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p1, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;->onPostExecute(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)V

    return-void
.end method

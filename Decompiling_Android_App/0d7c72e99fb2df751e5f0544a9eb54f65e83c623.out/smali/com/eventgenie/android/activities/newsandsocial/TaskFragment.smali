.class public Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;
.super Landroid/app/Fragment;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;,
        Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "^ TaskFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mResult:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

.field private mTaskCallBacks:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;)Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;
    .param p1, "x1"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mResult:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;)Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;

    return-object v0
.end method


# virtual methods
.method public getResult()Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mResult:Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    const-string v0, "^ TaskFragment onAttach()"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    move-object v0, p1

    .line 59
    check-cast v0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;

    .line 60
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mActivity:Landroid/app/Activity;

    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-string v0, "^ TaskFragment onCreate()"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->setRetainInstance(Z)V

    .line 72
    new-instance v0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;

    invoke-interface {v1}, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;->getPhotosetId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;

    invoke-interface {v2}, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$GetPhotoListTask;-><init>(Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 79
    const-string v0, "^ TaskFragment onDetach()"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 80
    iput-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mActivity:Landroid/app/Activity;

    .line 81
    iput-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/activities/newsandsocial/TaskFragment$TaskCallBacks;

    .line 82
    return-void
.end method

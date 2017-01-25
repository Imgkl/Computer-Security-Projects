.class Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$3;
.super Ljava/lang/Object;
.source "GenieEntityDetailsActivity.java"

# interfaces
.implements Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->setFavourite(ZZLcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

.field final synthetic val$fav:Z


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;Z)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$3;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    iput-boolean p2, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$3;->val$fav:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public favouritingFailed()V
    .locals 0

    .prologue
    .line 539
    return-void
.end method

.method public favouritingFinished(Z)V
    .locals 2
    .param p1, "isFavourited"    # Z

    .prologue
    .line 530
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$3;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    iget-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$3;->val$fav:Z

    # setter for: Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsFavourite:Z
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->access$002(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;Z)Z

    .line 531
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$3;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$3;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsFavourite:Z
    invoke-static {v0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->access$000(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$3;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsBookmarked:Z
    invoke-static {v0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->access$100(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->toggleFavourite(Z)V

    .line 532
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$3;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    iget-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$3;->val$fav:Z

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onFavouriteSet(Z)V

    .line 533
    return-void

    .line 531
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

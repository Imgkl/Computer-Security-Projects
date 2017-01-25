.class Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$8;
.super Ljava/lang/Object;
.source "GenieEntityDetailsActivity.java"

# interfaces
.implements Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onBookmarkClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$8;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public favouritingFailed()V
    .locals 0

    .prologue
    .line 727
    return-void
.end method

.method public favouritingFinished(Z)V
    .locals 2
    .param p1, "result"    # Z

    .prologue
    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ ENTITY: Bookmark Finished result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$8;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    # setter for: Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsBookmarked:Z
    invoke-static {v0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->access$102(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;Z)Z

    .line 721
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$8;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$8;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsFavourite:Z
    invoke-static {v0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->access$000(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$8;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mIsBookmarked:Z
    invoke-static {v0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->access$100(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->toggleFavourite(Z)V

    .line 722
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$8;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onBookmarSet(Z)V

    .line 723
    return-void

    .line 721
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

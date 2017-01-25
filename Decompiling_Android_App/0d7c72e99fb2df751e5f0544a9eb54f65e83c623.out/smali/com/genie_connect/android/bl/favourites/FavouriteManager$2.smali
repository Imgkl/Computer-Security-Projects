.class Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;
.super Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;
.source "FavouriteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genie_connect/android/bl/favourites/FavouriteManager;->setEntityBookmarked(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genie_connect/android/bl/favourites/FavouriteManager;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$entityId:Ljava/lang/Long;

.field final synthetic val$entityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field final synthetic val$isBookmark:Z

.field final synthetic val$listener:Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;


# direct methods
.method constructor <init>(Lcom/genie_connect/android/bl/favourites/FavouriteManager;Landroid/app/Activity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLcom/genie_connect/android/db/access/Udm$FavouriteAction;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V
    .locals 10
    .param p2, "x0"    # Landroid/app/Activity;
    .param p3, "x1"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "x2"    # J
    .param p6, "x3"    # Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->this$0:Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->val$listener:Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->val$entityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->val$entityId:Ljava/lang/Long;

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->val$isBookmark:Z

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;-><init>(Landroid/app/Activity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLcom/genie_connect/android/db/access/Udm$FavouriteAction;)V

    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->val$listener:Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;

    invoke-interface {v0}, Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;->favouritingFailed()V

    .line 168
    return-void
.end method

.method public onPostExecute(Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;)V
    .locals 6
    .param p1, "result"    # Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->onPostExecute(Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;)V

    .line 174
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->this$0:Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    iget-object v1, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->val$listener:Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;

    iget-object v3, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->val$entityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-object v4, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->val$entityId:Ljava/lang/Long;

    iget-boolean v5, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->val$isBookmark:Z

    # invokes: Lcom/genie_connect/android/bl/favourites/FavouriteManager;->bookmarkSession(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V
    invoke-static/range {v0 .. v5}, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->access$100(Lcom/genie_connect/android/bl/favourites/FavouriteManager;Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->val$listener:Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;

    invoke-interface {v0}, Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;->favouritingFailed()V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 162
    check-cast p1, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/bl/favourites/FavouriteManager$2;->onPostExecute(Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;)V

    return-void
.end method

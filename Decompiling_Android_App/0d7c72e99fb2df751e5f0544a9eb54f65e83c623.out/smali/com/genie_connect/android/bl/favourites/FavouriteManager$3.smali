.class Lcom/genie_connect/android/bl/favourites/FavouriteManager$3;
.super Ljava/lang/Object;
.source "FavouriteManager.java"

# interfaces
.implements Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genie_connect/android/bl/favourites/FavouriteManager;->removeClashingItemsIfNecessary(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genie_connect/android/bl/favourites/FavouriteManager;


# direct methods
.method constructor <init>(Lcom/genie_connect/android/bl/favourites/FavouriteManager;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/genie_connect/android/bl/favourites/FavouriteManager$3;->this$0:Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public favouritingFailed()V
    .locals 1

    .prologue
    .line 297
    const-string v0, "^ ENTITY: favouritingFailed.. REMOVED item failed"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public favouritingFinished(Z)V
    .locals 1
    .param p1, "isFavourited"    # Z

    .prologue
    .line 292
    const-string v0, "^ ENTITY: favouritingFinished.. REMOVED item"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 293
    return-void
.end method

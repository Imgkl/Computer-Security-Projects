.class Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$6;
.super Ljava/lang/Object;
.source "GenieEntityDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->checkForClashesAndFavourite(Lcom/genie_connect/android/bl/favourites/FavouriteManager;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

.field final synthetic val$favManager:Lcom/genie_connect/android/bl/favourites/FavouriteManager;

.field final synthetic val$updatedListener:Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;Lcom/genie_connect/android/bl/favourites/FavouriteManager;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$6;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$6;->val$favManager:Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    iput-object p3, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$6;->val$updatedListener:Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$6;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyAgendaClashResolved(Landroid/content/Context;Z)Z

    .line 617
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$6;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$6;->val$favManager:Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$6;->val$updatedListener:Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;

    # invokes: Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->setFavourite(Lcom/genie_connect/android/bl/favourites/FavouriteManager;ZLcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->access$300(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;Lcom/genie_connect/android/bl/favourites/FavouriteManager;ZLcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;)V

    .line 618
    return-void
.end method

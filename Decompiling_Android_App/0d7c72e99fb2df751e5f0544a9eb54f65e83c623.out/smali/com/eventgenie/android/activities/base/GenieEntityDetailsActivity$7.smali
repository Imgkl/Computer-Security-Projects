.class Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$7;
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


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$7;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$7;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyAgendaClashResolved(Landroid/content/Context;Z)Z

    .line 625
    const-string v0, "^ ENTITY: Cancel button, wont schedule because it would clash with some other session"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 626
    return-void
.end method

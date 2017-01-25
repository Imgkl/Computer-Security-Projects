.class Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$1;
.super Ljava/lang/Object;
.source "SessionDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->onFavouriteClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 273
    const-string v0, "^ SESSIONS: Attend Sessions"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getIsFavourite()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_SCHEDULE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v2, v0, v1, v3}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->setFavourite(ZZLcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;)V

    .line 277
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

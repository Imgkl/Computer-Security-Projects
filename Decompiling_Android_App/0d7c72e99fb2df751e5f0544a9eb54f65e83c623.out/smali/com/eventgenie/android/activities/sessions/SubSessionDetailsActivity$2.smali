.class Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity$2;
.super Ljava/lang/Object;
.source "SubSessionDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->onFavouriteClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 317
    const-string v0, "^ SESSIONS: Bookmark/Add to favourites Sessions"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity$2;->this$0:Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;

    # invokes: Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onBookmarkClick()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->access$001(Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;)V

    .line 321
    return-void
.end method

.class public Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieAbcActivity;
.source "ActivityStreamDetailsActivity.java"


# static fields
.field public static final DETAIL_ID_EXTRA:Ljava/lang/String; = "DETAIL_ID_EXTRA"


# instance fields
.field private fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 27
    if-ne p2, v2, :cond_0

    const/16 v0, 0x158

    if-ne p1, v0, :cond_0

    .line 28
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "data":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 29
    .restart local p3    # "data":Landroid/content/Intent;
    const-string v0, "ACTIVITYSTREAM_POST_CREATED"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v2, p3}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->setResult(ILandroid/content/Intent;)V

    .line 32
    :cond_0
    return-void
.end method

.method public onAddCommentClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->onAddCommentClick(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v2, Lcom/eventgenie/android/R$layout;->frame_layout_container:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->setContentView(I)V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v2, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-direct {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    .line 40
    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->container:I

    iget-object v4, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 45
    .local v0, "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getNavBarColour()Lcom/genie_connect/android/db/config/misc/ColourConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/misc/ColourConfig;->getTitleBarColour()I

    move-result v1

    .line 46
    .local v1, "titleColour":I
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->getActionbarCompat()Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->stream_details:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public onDeletePost(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->onDeletePost()V

    .line 87
    return-void
.end method

.method public onExpand(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->onExpand(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "paramMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 52
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->onBackPressed()V

    .line 54
    const/4 v1, 0x1

    .line 56
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onReportPost(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->onReportPost()V

    .line 91
    return-void
.end method

.method public onViewPostOnline(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->onViewPostOnline()V

    .line 95
    return-void
.end method

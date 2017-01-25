.class public Lcom/eventgenie/android/activities/activitystream/activities/ReportActivityStreamActivity;
.super Lcom/eventgenie/android/activities/base/GenieAbcActivity;
.source "ReportActivityStreamActivity.java"


# static fields
.field public static final ACTIVITY_STREAM_REPORTED_NEEDS_REFRESH:Ljava/lang/String; = "ACTIVITY_STREAM_REPORTED_NEEDS_REFRESH"


# instance fields
.field private fragment:Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Lcom/eventgenie/android/R$layout;->frame_layout_container:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/activitystream/activities/ReportActivityStreamActivity;->setContentView(I)V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;

    invoke-direct {v0}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ReportActivityStreamActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;

    .line 31
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ReportActivityStreamActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ReportActivityStreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ReportActivityStreamActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->container:I

    iget-object v2, p0, Lcom/eventgenie/android/activities/activitystream/activities/ReportActivityStreamActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ReportActivityStreamActivity;->getActionbarCompat()Lcom/eventgenie/android/ui/actionbar/GenieAbc;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->report:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieAbc;->setTitle(I[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onDestroy()V

    .line 47
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "paramMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 69
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

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/activitystream/activities/ReportActivityStreamActivity;->onBackPressed()V

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onResume()V

    .line 61
    return-void
.end method

.method public onSubmit(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/eventgenie/android/activities/activitystream/activities/ReportActivityStreamActivity;->fragment:Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->onSubmit()V

    .line 65
    return-void
.end method

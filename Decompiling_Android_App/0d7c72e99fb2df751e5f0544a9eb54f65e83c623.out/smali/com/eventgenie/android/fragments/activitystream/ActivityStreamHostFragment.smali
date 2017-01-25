.class public Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseFragment;
.source "ActivityStreamHostFragment.java"

# interfaces
.implements Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;


# instance fields
.field private fragOffline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;

.field private fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

.field private mOnlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ onActivityResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". ResultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 124
    const/16 v0, 0x158

    if-ne p1, v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->refresh()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/16 v0, 0x157

    if-ne p1, v0, :cond_2

    const/16 v0, 0x234a

    if-eq p2, v0, :cond_3

    :cond_2
    if-eqz p3, :cond_0

    const-string v0, "ACTIVITYSTREAM_POST_CREATED"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ACTIVITYSTREAM_POST_FAVOURITED"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ACTIVITYSTREAM_POST_DELETED"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->refresh()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->mOnlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    sget v1, Lcom/eventgenie/android/R$layout;->frame_layout_container:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->switchToOnline()V

    .line 73
    return-object v0
.end method

.method public openActivityStreamDetailsActivity(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "DETAIL_ID_EXTRA"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    const/16 v1, 0x157

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->mOnlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->startPullToRefreshLiveSync(Z)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->switchToOnline()V

    goto :goto_0
.end method

.method public switchToOffline()V
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->fragOffline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->fragOffline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;

    .line 80
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->fragOffline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->mOnlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 84
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Lcom/eventgenie/android/R$id;->container:I

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->fragOffline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 85
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 86
    return-void
.end method

.method public switchToOnline()V
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    .line 92
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->mOnlineMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 96
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Lcom/eventgenie/android/R$id;->container:I

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamHostFragment;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 97
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 98
    return-void
.end method

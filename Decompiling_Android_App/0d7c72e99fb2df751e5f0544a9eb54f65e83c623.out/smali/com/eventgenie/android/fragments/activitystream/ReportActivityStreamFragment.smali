.class public Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseFragment;
.source "ReportActivityStreamFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment$ReportAsyncTask;
    }
.end annotation


# instance fields
.field private etMessage:Landroid/widget/EditText;

.field private id:Ljava/lang/Long;

.field private rgFocus:Landroid/widget/RadioGroup;

.field private rgType:Landroid/widget/RadioGroup;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public getSelectedContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->rgType:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 142
    .local v0, "checkedRadioButtonId":I
    sget v1, Lcom/eventgenie/android/R$id;->rbTypeAbusive:I

    if-ne v0, v1, :cond_0

    .line 143
    const-string v1, "abusive"

    .line 151
    :goto_0
    return-object v1

    .line 145
    :cond_0
    sget v1, Lcom/eventgenie/android/R$id;->rbTypeExplicit:I

    if-ne v0, v1, :cond_1

    .line 146
    const-string v1, "sexual"

    goto :goto_0

    .line 148
    :cond_1
    sget v1, Lcom/eventgenie/android/R$id;->rbTypeOther:I

    if-ne v0, v1, :cond_2

    .line 149
    const-string v1, "other"

    goto :goto_0

    .line 151
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public getSelectedFocus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->rgFocus:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 130
    .local v0, "checkedRadioButtonId":I
    sget v1, Lcom/eventgenie/android/R$id;->rbFocusContent:I

    if-ne v0, v1, :cond_0

    .line 131
    const-string v1, "content"

    .line 136
    :goto_0
    return-object v1

    .line 133
    :cond_0
    sget v1, Lcom/eventgenie/android/R$id;->rbFocusUser:I

    if-ne v0, v1, :cond_1

    .line 134
    const-string/jumbo v1, "user"

    goto :goto_0

    .line 136
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    const-string v0, "^ ACTIVITYSTREAMDETAILSFRAGMENT onActivityCreated "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->setHasOptionsMenu(Z)V

    .line 93
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ACTIVITYSTREAM_POST_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->id:Ljava/lang/Long;

    .line 95
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    sget v0, Lcom/eventgenie/android/R$layout;->fragment_stream_report:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->rootView:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->rgFocus:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->rgFocus:Landroid/widget/RadioGroup;

    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->rgType:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->rgType:Landroid/widget/RadioGroup;

    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->etReport:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->etMessage:Landroid/widget/EditText;

    .line 104
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 113
    .local v0, "menuItemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 116
    :cond_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onSubmit()V
    .locals 8

    .prologue
    .line 120
    new-instance v0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->getSelectedFocus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->getSelectedContent()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->etMessage:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcom/eventgenie/android/activities/base/GenieAbcActivity;

    invoke-virtual {v6}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 124
    .local v0, "param":Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;
    new-instance v1, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment$ReportAsyncTask;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment$ReportAsyncTask;-><init>(Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    return-void
.end method

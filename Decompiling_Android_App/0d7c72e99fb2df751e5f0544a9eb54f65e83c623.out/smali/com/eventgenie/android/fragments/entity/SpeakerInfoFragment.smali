.class public Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;
.super Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;
.source "SpeakerInfoFragment.java"


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 61
    sget v4, Lcom/eventgenie/android/R$layout;->details_speaker_holo:I

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->mRootView:Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->getActivityAsDataProvider()Lcom/eventgenie/android/fragments/base/FragmentDataProvider;

    move-result-object v4

    const-class v5, Lcom/genie_connect/common/db/model/Speaker;

    invoke-interface {v4, v5, v6}, Lcom/eventgenie/android/fragments/base/FragmentDataProvider;->getData(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/model/Speaker;

    .line 65
    .local v2, "speaker":Lcom/genie_connect/common/db/model/Speaker;
    iget-object v4, p0, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/eventgenie/android/R$id;->title:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 66
    .local v3, "title":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/eventgenie/android/R$id;->details:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    .local v1, "details":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/eventgenie/android/R$id;->department:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    .local v0, "department":Landroid/widget/TextView;
    iget-object v4, v2, Lcom/genie_connect/common/db/model/Speaker;->department:Ljava/lang/String;

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/genie_connect/common/db/model/Speaker;->jobTitle:Ljava/lang/String;

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 72
    :cond_0
    iget-object v4, p0, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/eventgenie/android/R$id;->details_header:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->details_label:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 75
    iget-object v4, v2, Lcom/genie_connect/common/db/model/Speaker;->jobTitle:Ljava/lang/String;

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    iget-object v4, v2, Lcom/genie_connect/common/db/model/Speaker;->jobTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_0
    iget-object v4, v2, Lcom/genie_connect/common/db/model/Speaker;->department:Ljava/lang/String;

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    iget-object v4, v2, Lcom/genie_connect/common/db/model/Speaker;->department:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_1
    iget-object v4, v2, Lcom/genie_connect/common/db/model/Speaker;->fullDescription:Ljava/lang/String;

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    iget-object v4, v2, Lcom/genie_connect/common/db/model/Speaker;->fullDescription:Ljava/lang/String;

    const-string v5, "\n"

    const-string v6, "<br>"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;

    invoke-direct {v6}, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 95
    iget-object v4, p0, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/eventgenie/android/R$id;->bio_header:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->bio_label:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 102
    :goto_2
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->mRootView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->getTitleColour()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v2, v6, v7}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->populateContactDetails(Landroid/app/Activity;Landroid/view/View;Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;ZLjava/lang/Integer;)Z

    .line 106
    iget-object v4, p0, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->mRootView:Landroid/view/View;

    return-object v4

    .line 78
    :cond_1
    iget-object v4, p0, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/eventgenie/android/R$id;->details_layout_title:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v4, p0, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/eventgenie/android/R$id;->details_layout_department:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 87
    :cond_3
    iget-object v4, p0, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/eventgenie/android/R$id;->details_header:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 98
    :cond_4
    iget-object v4, p0, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/eventgenie/android/R$id;->bio_header:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v4, p0, Lcom/eventgenie/android/fragments/entity/SpeakerInfoFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/eventgenie/android/R$id;->bio_layout:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

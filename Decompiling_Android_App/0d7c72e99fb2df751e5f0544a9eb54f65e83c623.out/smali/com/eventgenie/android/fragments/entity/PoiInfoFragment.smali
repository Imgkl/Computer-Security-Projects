.class public Lcom/eventgenie/android/fragments/entity/PoiInfoFragment;
.super Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;
.source "PoiInfoFragment.java"


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 54
    sget v3, Lcom/eventgenie/android/R$layout;->details_exhibitor_holo:I

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/fragments/entity/PoiInfoFragment;->mRootView:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/PoiInfoFragment;->getActivityAsDataProvider()Lcom/eventgenie/android/fragments/base/FragmentDataProvider;

    move-result-object v3

    const-class v4, Lcom/genie_connect/common/db/model/Poi;

    invoke-interface {v3, v4, v5}, Lcom/eventgenie/android/fragments/base/FragmentDataProvider;->getData(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/model/Poi;

    .line 60
    .local v2, "poi":Lcom/genie_connect/common/db/model/Poi;
    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/PoiInfoFragment;->mRootView:Landroid/view/View;

    sget v4, Lcom/eventgenie/android/R$id;->details:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, "details":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/PoiInfoFragment;->mRootView:Landroid/view/View;

    sget v4, Lcom/eventgenie/android/R$id;->description_header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->description:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/PoiInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 63
    iget-object v1, v2, Lcom/genie_connect/common/db/model/Poi;->fullDescription:Ljava/lang/String;

    .line 65
    .local v1, "detailsString":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 66
    const-string v3, "\n"

    const-string v4, "<br>"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;

    invoke-direct {v5}, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/PoiInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/fragments/entity/PoiInfoFragment;->mRootView:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/PoiInfoFragment;->getTitleColour()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v2, v5, v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->populateContactDetails(Landroid/app/Activity;Landroid/view/View;Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;ZLjava/lang/Integer;)Z

    .line 75
    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/PoiInfoFragment;->mRootView:Landroid/view/View;

    return-object v3

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/PoiInfoFragment;->mRootView:Landroid/view/View;

    sget v4, Lcom/eventgenie/android/R$id;->description_header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/PoiInfoFragment;->mRootView:Landroid/view/View;

    sget v4, Lcom/eventgenie/android/R$id;->description_layout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

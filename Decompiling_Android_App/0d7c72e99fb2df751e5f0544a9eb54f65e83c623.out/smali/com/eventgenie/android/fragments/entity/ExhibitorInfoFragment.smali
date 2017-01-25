.class public Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;
.super Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;
.source "ExhibitorInfoFragment.java"


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x8

    const/4 v7, 0x0

    .line 67
    sget v5, Lcom/eventgenie/android/R$layout;->details_exhibitor_holo:I

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->mRootView:Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->getActivityAsDataProvider()Lcom/eventgenie/android/fragments/base/FragmentDataProvider;

    move-result-object v5

    const-class v6, Lcom/genie_connect/common/db/model/Exhibitor;

    invoke-interface {v5, v6, v7}, Lcom/eventgenie/android/fragments/base/FragmentDataProvider;->getData(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/model/Exhibitor;

    .line 71
    .local v1, "exhibitor":Lcom/genie_connect/common/db/model/Exhibitor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "locationList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    iget-object v5, p0, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->mRootView:Landroid/view/View;

    sget v6, Lcom/eventgenie/android/R$id;->details:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, "details":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->mRootView:Landroid/view/View;

    sget v6, Lcom/eventgenie/android/R$id;->description_header:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$string;->description:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 76
    const-class v5, Lcom/genie_connect/android/repository/ExhibitorRepository;

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genie_connect/android/repository/ExhibitorRepository;

    iget-object v6, v1, Lcom/genie_connect/common/db/model/Exhibitor;->id:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/repository/ExhibitorRepository;->getExhibitorLocations(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    .line 79
    .local v3, "locations":Luk/co/alt236/easycursor/EasyCursor;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    :cond_0
    const-string v5, "locations"

    invoke-interface {v3, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    new-instance v5, Landroid/util/Pair;

    const-string v6, "locations"

    invoke-interface {v3, v6}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mapPosition_map"

    invoke-interface {v3, v7}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    invoke-interface {v3}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 89
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->isInteractiveMapsAvailable()Z

    move-result v4

    .line 91
    .local v4, "mapsEnabled":Z
    iget-object v5, p0, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v2, v4, v5}, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->addMapLocations(Ljava/util/List;ZLandroid/view/View;)V

    .line 94
    .end local v4    # "mapsEnabled":Z
    :cond_3
    iget-object v5, v1, Lcom/genie_connect/common/db/model/Exhibitor;->fullDescription:Ljava/lang/String;

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 95
    iget-object v5, v1, Lcom/genie_connect/common/db/model/Exhibitor;->fullDescription:Ljava/lang/String;

    const-string v6, "\n"

    const-string v7, "<br>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;

    invoke-direct {v7}, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->mRootView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->getTitleColour()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v6, v1, v7, v8}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->populateContactDetails(Landroid/app/Activity;Landroid/view/View;Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;ZLjava/lang/Integer;)Z

    .line 104
    iget-object v5, p0, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->mRootView:Landroid/view/View;

    return-object v5

    .line 98
    :cond_4
    iget-object v5, p0, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->mRootView:Landroid/view/View;

    sget v6, Lcom/eventgenie/android/R$id;->description_header:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v5, p0, Lcom/eventgenie/android/fragments/entity/ExhibitorInfoFragment;->mRootView:Landroid/view/View;

    sget v6, Lcom/eventgenie/android/R$id;->description_layout:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

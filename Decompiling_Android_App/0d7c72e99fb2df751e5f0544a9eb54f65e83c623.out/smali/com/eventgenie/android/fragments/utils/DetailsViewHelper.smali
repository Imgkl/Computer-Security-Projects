.class public Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;
.super Lcom/eventgenie/android/fragments/utils/BaseViewHelper;
.source "DetailsViewHelper.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "a"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 66
    return-void
.end method


# virtual methods
.method public addActivityStreamView(Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;
    .locals 5
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$layout;->frame_layout_container:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "asViewWrapper":Landroid/view/View;
    invoke-virtual {p2, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 130
    new-instance v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;-><init>()V

    .line 131
    .local v1, "fragment":Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->container:I

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 134
    invoke-virtual {p0, p2, p1}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public addDownloadableDetailsView(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;
    .locals 9
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 70
    const-string v4, "fullDescription"

    invoke-interface {p1, v4}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "detailsString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$layout;->details_downloadable_holo:I

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 72
    .local v3, "speakerDetails":Landroid/view/View;
    sget v4, Lcom/eventgenie/android/R$id;->details:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    .local v0, "details":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->DOWNLOADABLES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "noun":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    const-string v4, "\n"

    const-string v5, "<br>"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;

    invoke-direct {v5}, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;-><init>()V

    invoke-static {v4, v8, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 82
    sget v4, Lcom/eventgenie/android/R$id;->bio_header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->description:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 92
    :goto_0
    invoke-virtual {p3, v3}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0, p3, p2}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    return-object v4

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->no_downloads_full_description:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget v4, Lcom/eventgenie/android/R$id;->bio_header:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->description:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    goto :goto_0
.end method

.method public addDownloadableList(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;
    .locals 6
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 106
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, p1, v5}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    .line 109
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p3, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 113
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_0
    invoke-virtual {p0, p3, p2}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 115
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DETAILSVIEWHELPER: No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addExhibitorDetailsView(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;
    .locals 12
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 138
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v6, "locationList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    sget v10, Lcom/eventgenie/android/R$layout;->details_exhibitor_holo:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 142
    .local v4, "infoView":Landroid/view/View;
    sget v9, Lcom/eventgenie/android/R$id;->details:I

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 143
    .local v2, "details":Landroid/widget/TextView;
    sget v9, Lcom/eventgenie/android/R$id;->description_header:I

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    sget v10, Lcom/eventgenie/android/R$string;->description:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 145
    const-string v9, "fullDescription"

    invoke-interface {p1, v9}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "detailsString":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_1

    .line 151
    const-string v9, "locations"

    invoke-interface {p1, v9}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "location":Ljava/lang/String;
    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 153
    new-instance v9, Landroid/util/Pair;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v9, v5, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 158
    .end local v5    # "location":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    .line 165
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->isInteractiveMapsAvailable()Z

    move-result v8

    .line 167
    .local v8, "mapsEnabled":Z
    invoke-virtual {p0, v6, v8, p3}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->addMapLocations(Ljava/util/List;ZLcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 168
    const/4 v7, 0x1

    .line 173
    .end local v8    # "mapsEnabled":Z
    .local v7, "locationVisible":Z
    :goto_1
    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 174
    const-string v9, "\n"

    const-string v10, "<br>"

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;

    invoke-direct {v11}, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;-><init>()V

    invoke-static {v9, v10, v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 176
    const/4 v1, 0x1

    .line 183
    .local v1, "descriptionVisible":Z
    :goto_2
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getTitleColour()Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v4, p1, v10, v11}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->populateContactDetails(Landroid/app/Activity;Landroid/view/View;Luk/co/alt236/easycursor/EasyCursor;ZLjava/lang/Integer;)Z

    move-result v0

    .line 185
    .local v0, "contactDetailsVisible":Z
    if-nez v7, :cond_2

    if-nez v1, :cond_2

    if-eqz v0, :cond_5

    .line 186
    :cond_2
    invoke-virtual {p3, v4}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 187
    invoke-virtual {p0, p3, p2}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v9

    .line 189
    :goto_3
    return-object v9

    .line 170
    .end local v0    # "contactDetailsVisible":Z
    .end local v1    # "descriptionVisible":Z
    .end local v7    # "locationVisible":Z
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "locationVisible":Z
    goto :goto_1

    .line 178
    :cond_4
    sget v9, Lcom/eventgenie/android/R$id;->description_header:I

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 179
    sget v9, Lcom/eventgenie/android/R$id;->description_layout:I

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 180
    const/4 v1, 0x0

    .restart local v1    # "descriptionVisible":Z
    goto :goto_2

    .line 189
    .restart local v0    # "contactDetailsVisible":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public addExhibitorList(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;Z)Landroid/view/View;
    .locals 5
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;
    .param p4, "showType"    # Z

    .prologue
    .line 205
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->SingleLineLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    invoke-static {v2, v3, p1, v4}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getExhibitorListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    .line 212
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 214
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p3, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 216
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_0
    invoke-virtual {p0, p3, p2}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 218
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DETAILSVIEWHELPER: No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addFragmentToAdapter(Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "adapter"    # Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 224
    if-eqz p2, :cond_0

    .line 225
    invoke-virtual {p1, p2, p3}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 227
    :cond_0
    return-void
.end method

.method public addProductList(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;
    .locals 6
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 240
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, p1, v5}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    .line 243
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 245
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p3, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 247
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_0
    invoke-virtual {p0, p3, p2}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 249
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DETAILSVIEWHELPER: No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addSpeakerDetailsView(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;
    .locals 11
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 258
    const-string v8, "jobTitle"

    invoke-interface {p1, v8}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, "titleString":Ljava/lang/String;
    const-string v8, "fullDescription"

    invoke-interface {p1, v8}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "detailsString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/eventgenie/android/R$layout;->details_speaker_holo:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 261
    .local v5, "speakerDetails":Landroid/view/View;
    sget v8, Lcom/eventgenie/android/R$id;->title:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 262
    .local v6, "title":Landroid/widget/TextView;
    sget v8, Lcom/eventgenie/android/R$id;->details:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 264
    .local v2, "details":Landroid/widget/TextView;
    const/4 v4, 0x1

    .line 265
    .local v4, "detailsVisible":Z
    const/4 v0, 0x1

    .line 266
    .local v0, "bioVisible":Z
    const/4 v1, 0x1

    .line 269
    .local v1, "contactDetailsVisible":Z
    if-eqz v7, :cond_1

    .line 270
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    sget v8, Lcom/eventgenie/android/R$id;->details_header:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    sget v9, Lcom/eventgenie/android/R$string;->details_label:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 280
    :goto_0
    if-eqz v3, :cond_2

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 281
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    sget v8, Lcom/eventgenie/android/R$id;->bio_header:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    sget v9, Lcom/eventgenie/android/R$string;->bio_label:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 290
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getTitleColour()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v5, p1, v9, v10}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->populateContactDetails(Landroid/app/Activity;Landroid/view/View;Luk/co/alt236/easycursor/EasyCursor;ZLjava/lang/Integer;)Z

    move-result v1

    .line 293
    if-nez v4, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 294
    :cond_0
    invoke-virtual {p3, v5}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 295
    invoke-virtual {p0, p3, p2}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    .line 297
    :goto_2
    return-object v8

    .line 274
    :cond_1
    sget v8, Lcom/eventgenie/android/R$id;->details_header:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 275
    sget v8, Lcom/eventgenie/android/R$id;->details_layout:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 276
    const/4 v4, 0x0

    goto :goto_0

    .line 285
    :cond_2
    sget v8, Lcom/eventgenie/android/R$id;->bio_header:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 286
    sget v8, Lcom/eventgenie/android/R$id;->bio_layout:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 287
    const/4 v0, 0x0

    goto :goto_1

    .line 297
    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public bridge synthetic createExpandableListView(Landroid/widget/ResourceCursorTreeAdapter;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ResourceCursorTreeAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createExpandableListView(Landroid/widget/ResourceCursorTreeAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListFragment(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ListAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createListFragment(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListFragmentInfo(IILjava/lang/String;)Lcom/eventgenie/android/container/FragmentInfo;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createListFragmentInfo(IILjava/lang/String;)Lcom/eventgenie/android/container/FragmentInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ListAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPoiDetailsFragment(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 11
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x8

    .line 302
    new-instance v5, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v5}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    .line 303
    .local v5, "mergeAdapter":Lcom/commonsware/cwac/merge/MergeAdapter;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$layout;->details_exhibitor_holo:I

    invoke-virtual {v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 304
    .local v4, "infoView":Landroid/view/View;
    sget v7, Lcom/eventgenie/android/R$id;->details:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 306
    .local v2, "details":Landroid/widget/TextView;
    sget v7, Lcom/eventgenie/android/R$id;->description_header:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->description:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 307
    const-string v7, "fullDescription"

    invoke-interface {p1, v7}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "detailsString":Ljava/lang/String;
    const/4 v1, 0x1

    .line 310
    .local v1, "descriptionVisible":Z
    const/4 v0, 0x1

    .line 312
    .local v0, "contactDetailsVisible":Z
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 313
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getTitleColour()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v4, p1, v8, v9}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->populateContactDetails(Landroid/app/Activity;Landroid/view/View;Luk/co/alt236/easycursor/EasyCursor;ZLjava/lang/Integer;)Z

    move-result v0

    .line 322
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 323
    :cond_0
    invoke-virtual {v5, v4}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 324
    invoke-virtual {p0, v5, p2}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->createListFragment(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    .line 326
    :cond_1
    return-object v6

    .line 315
    :cond_2
    sget v7, Lcom/eventgenie/android/R$id;->description_header:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 316
    sget v7, Lcom/eventgenie/android/R$id;->description_layout:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 317
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getText(IZ)Landroid/view/View;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "fillHeight"    # Z

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getText(Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "fillHeight"    # Z

    .prologue
    const/4 v3, 0x0

    .line 333
    if-eqz p2, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$layout;->list_section_textview_fill_height:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 339
    .local v0, "tv":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    return-object v0

    .line 336
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$layout;->list_section_textview:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "tv":Landroid/widget/TextView;
    goto :goto_0
.end method

.method public bridge synthetic getTitleColour()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->getTitleColour()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

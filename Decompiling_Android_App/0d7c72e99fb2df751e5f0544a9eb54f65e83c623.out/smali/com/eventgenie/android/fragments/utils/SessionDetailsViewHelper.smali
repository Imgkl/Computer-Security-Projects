.class public Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;
.super Lcom/eventgenie/android/fragments/utils/BaseViewHelper;
.source "SessionDetailsViewHelper.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "a"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 61
    return-void
.end method

.method private addSessionDetailsView(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;
    .locals 23
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 111
    const-string v19, "id"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 112
    .local v8, "id":J
    const-string v19, "fullDescription"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "details":Ljava/lang/String;
    const-string/jumbo v19, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 114
    .local v16, "track":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v13, "locationList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    sget v20, Lcom/eventgenie/android/R$layout;->details_session_holo:I

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 117
    .local v10, "infoView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->isInteractiveMapsAvailable()Z

    move-result v15

    .line 119
    .local v15, "mapsEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v19

    sget-object v20, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->TRACKS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v21, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual/range {v19 .. v21}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v17

    .line 122
    .local v17, "trackLabel":Ljava/lang/String;
    const-string v19, "location"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "location":Ljava/lang/String;
    sget v19, Lcom/eventgenie/android/R$id;->info_header:I

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    sget v20, Lcom/eventgenie/android/R$string;->session_info:I

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 128
    sget-object v19, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSessionsDb()Lcom/genie_connect/android/db/access/DbSessions;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lcom/genie_connect/android/db/access/DbSessions;->getSessionLocations(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v12

    .line 136
    .local v12, "locationCursor":Luk/co/alt236/easycursor/EasyCursor;
    :goto_0
    if-eqz v12, :cond_4

    .line 140
    :goto_1
    invoke-interface {v12}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_3

    .line 141
    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 142
    .local v14, "locationName":Ljava/lang/String;
    const-string v19, "map"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v12, v0, v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 144
    .local v6, "hallId":J
    invoke-static {v14}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 145
    new-instance v19, Landroid/util/Pair;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    invoke-interface {v12}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_1

    .line 130
    .end local v6    # "hallId":J
    .end local v12    # "locationCursor":Luk/co/alt236/easycursor/EasyCursor;
    .end local v14    # "locationName":Ljava/lang/String;
    :cond_1
    sget-object v19, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSubSessions()Lcom/genie_connect/android/db/access/DbSubsessions;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lcom/genie_connect/android/db/access/DbSubsessions;->getSubsessionLocations(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v12

    .restart local v12    # "locationCursor":Luk/co/alt236/easycursor/EasyCursor;
    goto :goto_0

    .line 133
    .end local v12    # "locationCursor":Luk/co/alt236/easycursor/EasyCursor;
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "locationCursor":Luk/co/alt236/easycursor/EasyCursor;
    goto :goto_0

    .line 150
    :cond_3
    invoke-static {v12}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 152
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_4

    .line 153
    const/4 v11, 0x0

    .line 154
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v13, v15, v1}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->addMapLocations(Ljava/util/List;ZLcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 160
    :cond_4
    if-eqz v16, :cond_5

    .line 161
    sget v19, Lcom/eventgenie/android/R$id;->track:I

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 162
    .local v18, "tv":Landroid/widget/TextView;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .end local v18    # "tv":Landroid/widget/TextView;
    :cond_5
    if-eqz v17, :cond_6

    .line 165
    sget v19, Lcom/eventgenie/android/R$id;->track_label:I

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 166
    .restart local v18    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .end local v18    # "tv":Landroid/widget/TextView;
    :cond_6
    sget v19, Lcom/eventgenie/android/R$id;->location:I

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 170
    .restart local v18    # "tv":Landroid/widget/TextView;
    if-eqz v11, :cond_8

    .line 171
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    sget v20, Lcom/eventgenie/android/R$string;->session_room_formatter:I

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v11, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_2
    if-nez v11, :cond_7

    if-nez v16, :cond_7

    .line 179
    sget v19, Lcom/eventgenie/android/R$id;->location_track_container:I

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 180
    sget v19, Lcom/eventgenie/android/R$id;->info_header:I

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_7
    sget v19, Lcom/eventgenie/android/R$id;->details_header:I

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 185
    .local v5, "detailsHeader":Landroid/view/View;
    sget v19, Lcom/eventgenie/android/R$string;->description:I

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v5, v0, v1}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 186
    sget v19, Lcom/eventgenie/android/R$id;->details:I

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .end local v18    # "tv":Landroid/widget/TextView;
    check-cast v18, Landroid/widget/TextView;

    .line 188
    .restart local v18    # "tv":Landroid/widget/TextView;
    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 189
    const-string v19, "\n"

    const-string v20, "<br>"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    new-instance v21, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;

    invoke-direct/range {v21 .. v21}, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;-><init>()V

    invoke-static/range {v19 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 195
    :goto_3
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v19

    return-object v19

    .line 174
    .end local v5    # "detailsHeader":Landroid/view/View;
    :cond_8
    sget v19, Lcom/eventgenie/android/R$id;->location_container:I

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 192
    .restart local v5    # "detailsHeader":Landroid/view/View;
    :cond_9
    sget v19, Lcom/eventgenie/android/R$string;->description_not_available:I

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3
.end method


# virtual methods
.method public addSessionAndSubsessionList(Luk/co/alt236/easycursor/EasyCursor;Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;
    .locals 6
    .param p1, "sessions"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "subsessions"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p3, "labelSessions"    # Ljava/lang/String;
    .param p4, "labelSubSessions"    # Ljava/lang/String;
    .param p5, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    const/4 v5, 0x1

    .line 74
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, v5}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getSessionListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;ZZ)Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    move-result-object v0

    .line 82
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p5, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 86
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p5, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_0
    invoke-interface {p2}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-static {v2, v3, p2, v5}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getSubsessionListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Landroid/database/Cursor;Z)Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    move-result-object v0

    .line 94
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 96
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p5, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 98
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p5, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_1
    invoke-virtual {p0, p5, p3}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 88
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DETAILSVIEWHELPER: No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DETAILSVIEWHELPER: No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addSessionDetailsScreen(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;
    .locals 1
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 107
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->addSessionDetailsView(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public addSessionList(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;
    .locals 6
    .param p1, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 209
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, p1, v4, v5}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getSessionListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;ZZ)Lcom/twotoasters/sectioncursoradapter/SectionCursorAdapter;

    move-result-object v0

    .line 213
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 215
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p3, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 217
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_0
    invoke-virtual {p0, p3, p2}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 219
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

.method public addSubSessionDetailsView(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;
    .locals 1
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 226
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->addSessionDetailsView(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createExpandableListView(Landroid/widget/ResourceCursorTreeAdapter;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ResourceCursorTreeAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createExpandableListView(Landroid/widget/ResourceCursorTreeAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListFragment(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ListAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
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
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createListFragmentInfo(IILjava/lang/String;)Lcom/eventgenie/android/container/FragmentInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/widget/ListAdapter;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitleColour()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->getTitleColour()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
